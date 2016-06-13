class Repertory < ActiveRecord::Base
  belongs_to :user

  validates_presence_of :user, :num_repertory, :last_name, :name, :document, :inscription, :time_repertory, :date_repertory, :register, :num_inscription

end
