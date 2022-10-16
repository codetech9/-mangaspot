class ReviewsController < ApplicationController
  before_action :set_article, only: %i[new create edit update destroy]

  def new
    @article = Article.find(params[:article_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.article_id = @article.id
    @review.user_id = current_user.id
    @review.save!
    redirect_to article_path(@article)
  end

  def update
    @review.update(review_params)
  end

  def edit
  end

  def destroy
    @review.destroy
  end

  private

  def set_article
    @article = Article.find(params[:article_id])
  end

  def review_params
    params.required(:review).permit(:body, :user_id, :article_id)
  end
end
