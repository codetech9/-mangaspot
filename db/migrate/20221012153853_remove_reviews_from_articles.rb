class RemoveReviewsFromArticles < ActiveRecord::Migration[7.0]
  def change
    remove_column :articles, :reviews_id
  end
end
