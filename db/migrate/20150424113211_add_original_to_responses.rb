class AddOriginalToResponses < ActiveRecord::Migration
  def change
    add_column :responses, :original, :text
  end
end
