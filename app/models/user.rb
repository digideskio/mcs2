# == Schema Information
# Schema version: 20110518210914
#
# Table name: users
#
#  id                     :integer         not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer         default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  username               :text
#  mc_username            :text
#  created_at             :datetime
#  updated_at             :datetime
#

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
                  
  validates :username, :presence => true, :uniqueness => true, :format => /^\w+$/i
  validates :mc_username, :format => /^\w+$/i, :allow_nil => true, :allow_blank => true
end
