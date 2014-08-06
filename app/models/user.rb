class User
  include Mongoid::Document
  include ActiveModel::SecurePassword

  field :name, type: String
  field :email, type: String 
  field :location, type: String
  field :password_digest, type: String

  has_many :likes	

  has_secure_password

end
