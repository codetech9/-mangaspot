class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.text :body
      t.string :pseudo

      t.timestamps
    end
  end
end
