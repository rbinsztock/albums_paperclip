class Image < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :album
  has_attached_file :image, :styles => { :large => "640x480", :medium => "300x300>", :thumb => "100x100>" },  :convert_options => {
      :thumb => "-quality 75 -strip" }
end
