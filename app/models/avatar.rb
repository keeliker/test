class Avatar < ActiveRecord::Base
  mount_uploader :head_portrait, PictureUploader

  belongs_to :user , class_name: "User" , foreign_key: :id
  
  
end
