class Tweet < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user_id
  validates_presence_of :status 
  validates_presence_of :post_on
  validate :post_on_is_in_the_future

  named_scope :postable, lambda {{ :conditions => ["post_on <= ?",Time.zone.now+5.minutes] }}
  named_scope :not_posted, :conditions => ["posted is null"]
  named_scope :are_posted, :conditions => ["posted is not null"]

  def self.deliver
    Tweet.postable.not_posted.each do |tweet|
      tweet.post
    end
  end

  def post_on_is_in_the_future
    errors.add(:post_on, 'cannot be in the past') if !self.post_on.nil? && (self.post_on - self.user.time_offset) <= Time.zone.now
  end

  def before_save
    if self.valid?
      self.post_on = self.post_on - self.user.time_offset
    end
  end

  def post
    begin
      self.user.twitter.get('/account/verify_credentials')
      self.user.twitter.post('/statuses/update.json','status' => status)
      self.posted = true
      self.save
    rescue TwitterAuth::Dispatcher::Error
    end
  end
end
