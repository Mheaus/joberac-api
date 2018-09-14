class AddPhoneAndPositionAndHeadlineAndNameAndFirstnameAndLastnameAndCompanyNameAndBannerUrlAndPhotoUrlAndDescriptionToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone, :string
    add_column :users, :position, :string
    add_column :users, :headline, :string
    add_column :users, :name, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :company_name, :string
    add_column :users, :banner_url, :string
    add_column :users, :photo_url, :string
    add_column :users, :description, :text
  end
end
