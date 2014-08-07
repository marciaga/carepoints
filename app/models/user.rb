class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :name, type: String
  field :email, type: String
  field :points, type: Integer
  field :password_digest, type: String
  field :is_active, type: Mongoid::Boolean, default: true
  validates_presence_of :name

  has_secure_password

  embeds_many :cares
end
