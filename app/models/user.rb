class User < ActiveRecord::Base
  include Clearance::User

  has_many :images, dependent: :destroy
end
