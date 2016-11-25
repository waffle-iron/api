class User < ApplicationRecord
  include ActiveModel::Validations

  attr_accessor :first_name, :last_name, :email

  validates :first_name, :presence => true
  validates :email, :presence => true
  validates_format_of :email, with: /\A([^\s]+)((?:[-a-z0-9]\.)[a-z]{2,})\z/i

end
