# == Schema Information
# Schema version: 20110518210914
#
# Table name: servers
#
#  id                :integer         not null, primary key
#  created_at        :datetime
#  updated_at        :datetime
#  name              :string(255)
#  website           :string(255)
#  description       :text
#  mc_server_address :string(255)
#  location          :string(255)
#  game_mode         :integer
#  whitelist_url     :string(255)
#  port              :integer
#  status            :boolean
#  user_id           :integer
#

class Server < ActiveRecord::Base
  belongs_to :user
  
  validates :name, :presence => true, :uniqueness => true, :format => /^[\w||'||.|| ||-||=||!||?||;||:]+$/i,
            :length => { :maximum => 50 }
  validates :description, :presence => true
  validates :mc_server_address, :presence => true, :uniqueness => true
  validates :port, :presence => true, :numericality => true
  validates :game_mode, :presence => true, :numericality => true
end
