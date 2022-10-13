class RemovePseudoFromReviews < ActiveRecord::Migration[7.0]
  def change
    remove_column :reviews, :pseudo
  end
end
