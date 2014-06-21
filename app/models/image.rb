class Image < ActiveRecord::Base
  def self.with_tag(tag)
    Image.where(tag: tag)
  end
end
