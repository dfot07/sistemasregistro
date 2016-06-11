class ConsultationsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  
  def index
    @inscriptions = Inscription.all
    @appearers = Appearer.all
  end
  
  private


end