class Image < ActiveRecord::Base
  belongs_to :user

  has_attached_file :file, :styles => { :medium => "600x400>", :thumb => "100x100>" }
  validates_attachment_content_type :file, :content_type => /\Aimage\/.*\Z/


  def self.with_tag(tag)
    Image.where(tag: tag)
  end
end
