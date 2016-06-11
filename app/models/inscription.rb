class Inscription < ActiveRecord::Base
  
  validates_presence_of :num_inscription, :act, :date_inscription, :user

  belongs_to :user
  has_many :appearers, dependent: :destroy

end
