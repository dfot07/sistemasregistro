class ProhibitionsController < ApplicationController
  before_action :set_prohibition, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /prohibitions
  # GET /prohibitions.json
  def index
    @prohibitions = Prohibition.all
  end

  # GET /prohibitions/1
  # GET /prohibitions/1.json
  def show
  end

  # GET /prohibitions/new
  def new
    @prohibition = Prohibition.new
  end

  # GET /prohibitions/1/edit
  def edit
  end

  # POST /prohibitions
  # POST /prohibitions.json
  def create
    @prohibition = current_user.prohibitions.new(prohibition_params)

    respond_to do |format|
      if @prohibition.save
        format.html { redirect_to @prohibition, notice: 'Prohibition was successfully created.' }
        format.json { render :show, status: :created, location: @prohibition }
      else
        format.html { render :new }
        format.json { render json: @prohibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prohibitions/1
  # PATCH/PUT /prohibitions/1.json
  def update
    respond_to do |format|
      if @prohibition.update(prohibition_params)
        format.html { redirect_to @prohibition, notice: 'Prohibition was successfully updated.' }
        format.json { render :show, status: :ok, location: @prohibition }
      else
        format.html { render :edit }
        format.json { render json: @prohibition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prohibitions/1
  # DELETE /prohibitions/1.json
  def destroy
    @prohibition.destroy
    respond_to do |format|
      format.html { redirect_to prohibitions_url, notice: 'Prohibition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prohibition
      @prohibition = Prohibition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prohibition_params
      params.require(:prohibition).permit(:user_id, :last_name, :name, :type_prohibition, :inscription, :date_inscription)
    end
end
