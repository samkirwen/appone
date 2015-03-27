class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :input
      t.string :response
      t.integer :upvote
      t.integer :downvote

      t.timestamps
    end
  end
end
