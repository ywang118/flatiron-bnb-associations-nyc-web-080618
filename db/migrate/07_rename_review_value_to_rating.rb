class RenameReviewValueToRating < ActiveRecord::Migration
  def change
    rename_column :reviews, :value, :rating
  end
end
