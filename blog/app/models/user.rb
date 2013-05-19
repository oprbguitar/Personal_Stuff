class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :posts
  validates_confirmation_of :password, message: "Both have to be similar", if: :password
end
