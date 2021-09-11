class AddPortfolioImgToUserInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :user_infos, :portfolio_img, :string
    add_column :user_infos, :intro, :string
  end
end
