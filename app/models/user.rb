class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :name, type: String
  field :email, type: String
  field :points, type: Integer
  field :password_digest, type: String

  has_secure_password

  embeds_many :cares
end
