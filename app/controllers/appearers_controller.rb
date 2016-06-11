class AppearersController < ApplicationController

  before_action :set_appearer, only: [:edit, :update, :destroy]
  before_action :set_inscription
  before_action :authenticate_user!, except: [:index, :show]

  def index
    
  end

  def new
    @appearer = Appearer.new
  end

  def show
    
  end

  def create
    @appearer = current_user.appearers.new(appearer_params)
    @appearer.inscription = @inscription
    respond_to do |format|
      if @appearer.save
        format.html { redirect_to @appearer.inscription, notice: 'Appearer was successfully created.' }
        format.json { render :show, status: :created, location: @appearer.inscription }
      else
        format.html { render :new }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    
  end

  def update
    respond_to do |format|
      if @appearer.update(appearer_params)
        format.html { redirect_to @appearer.inscription, notice: 'Inscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @appearer.inscription }
      else
        format.html { render :edit }
        format.json { render json: @appearer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @appearer.destroy
    respond_to do |format|
      format.html {redirect_to inscription_path(@inscription), notice: "Appearer Destroyed"}
    end
  end

  private


  def set_appearer
    @appearer = Appearer.find(params[:id])
  end

  def set_inscription
    @inscription = Inscription.find(params[:inscription_id])
  end

  def appearer_params
    params.require(:appearer).permit(:user_id, :inscription_id, :last_name, :name, :type_appearer, :type_representative, :representative)
  end

end