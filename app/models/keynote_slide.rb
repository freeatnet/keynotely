class KeynoteSlide < ActiveRecord::Base
  belongs_to :keynote
  belongs_to :keynote_file
  attr_accessible :graphic_file
  
  mount_uploader :graphic_file, KeynoteSlideUploader
end
