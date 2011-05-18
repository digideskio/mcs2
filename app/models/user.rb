class User < ActiveRecord::Base
  has_many :servers

  # Other modules:
  # :token_authenticatable, :encryptable, :confirmable, :lockable,
  # :timeoutable and :omniauthable
  #
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Getters and Setters
  #
  attr_accessible :email, :password, :password_confirmation,
                  :remember_me, :username, :mc_username
end
