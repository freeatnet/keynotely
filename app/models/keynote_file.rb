class KeynoteFile < ActiveRecord::Base
  belongs_to :keynote
  has_many :slides, :class_name => "KeynoteSlide"
  attr_accessible :original_file
  
  mount_uploader :original_file, KeynoteFileUploader
  
  after_create :comprehend_file
  
  def comprehend_file
    self.original_file.comprehend
  end
end
