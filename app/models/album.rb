class Album < ActiveRecord::Base
  #Check file process before create thumbnail
  #before_post_process :check_file_size

  attr_accessible :description, :nom, :images_attributes
  has_many :images
  accepts_nested_attributes_for :images, :allow_destroy => true
  
end
