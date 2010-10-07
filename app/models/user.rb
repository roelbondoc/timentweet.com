class User < TwitterAuth::GenericUser
  has_many :tweets
  def time_offset
    Time.zone = self.time_zone
    offset = Time.zone.now.utc_offset
    Time.zone = ''
    return offset
  end
end
