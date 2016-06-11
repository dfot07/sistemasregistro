class Appearer < ActiveRecord::Base
	belongs_to :user
  belongs_to :inscription

  validates_presence_of :user_id
  validates_presence_of :inscription_id
  validates_presence_of :last_name, :name, :type_appearer, :type_representative, :representative
  
end
