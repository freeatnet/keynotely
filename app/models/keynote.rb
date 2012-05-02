class Keynote < ActiveRecord::Base
  attr_accessible :title, :files_attributes
  
  has_many :files, :class_name => "KeynoteFile"
  has_many :slides, :class_name => "KeynoteSlide"
  accepts_nested_attributes_for :files
end
