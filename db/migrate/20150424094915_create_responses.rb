class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.string :sender
      t.text :body
      t.integer :up
      t.integer :down
      t.integer :total
      t.datetime :date

      t.timestamps
    end
  end
end
