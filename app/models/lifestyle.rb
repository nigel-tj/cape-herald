class Lifestyle < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  YT_LINK_FORMAT = /\A.*(youtu.be\/|v\/|u\/\w\/|embed\/|watch\?v=|\&v=)([^#\&\?]*).*/i
  validates :link, presence: true, format: YT_LINK_FORMAT

  mount_uploader :track, FileUploader

end
