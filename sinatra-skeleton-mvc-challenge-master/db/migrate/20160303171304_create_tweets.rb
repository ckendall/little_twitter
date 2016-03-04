class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.integer :poster_id
      t.string :body, limit: 120

      t.timestamps
    end
  end
end
