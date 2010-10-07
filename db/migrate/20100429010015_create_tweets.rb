class CreateTweets < ActiveRecord::Migration
  def self.up
    create_table :tweets do |t|
      t.integer :user_id
      t.string :status
      t.datetime :post_on
      t.boolean :posted

      t.timestamps
    end

    add_index :tweets, :user_id
    add_index :tweets, :post_on
    add_index :tweets, :posted
    add_index :tweets, [:user_id, :posted, :post_on]
    add_index :tweets, [:posted, :post_on]
  end

  def self.down
    drop_table :tweets
  end
end
