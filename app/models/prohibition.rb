class Prohibition < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :last_name, :name, :type_prohibition, :inscription, :date_inscription
end