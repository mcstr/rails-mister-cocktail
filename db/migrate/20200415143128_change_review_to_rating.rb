class ChangeReviewToRating < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :review, :rating
  end
end
