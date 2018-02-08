class Feature < ActiveRecord::Base
  #paginates_per 4 
  mount_uploader :image, ImageUploader

  #YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  YT_LINK_FORMAT = /\A.(?:https:\/\/)?(?:www\.)?youtube\.com\/watch\?v=([a-zA-Z0-9_-]*)/
  #validates :link, presence: true, format: YT_LINK_FORMAT

  mount_uploader :track, FileUploader

end
