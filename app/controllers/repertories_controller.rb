class RepertoriesController < ApplicationController
  before_action :set_repertory, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /repertories
  # GET /repertories.json
  def index
    @repertories = Repertory.all
  end

  # GET /repertories/1
  # GET /repertories/1.json
  def show
  end

  # GET /repertories/new
  def new
    @repertory = Repertory.new
  end

  # GET /repertories/1/edit
  def edit
  end

  # POST /repertories
  # POST /repertories.json
  def create
    @repertory = current_user.repertories.new(repertory_params)

    respond_to do |format|
      if @repertory.save
        format.html { redirect_to @repertory, notice: 'Repertory was successfully created.' }
        format.json { render :show, status: :created, location: @repertory }
      else
        format.html { render :new }
        format.json { render json: @repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repertories/1
  # PATCH/PUT /repertories/1.json
  def update
    respond_to do |format|
      if @repertory.update(repertory_params)
        format.html { redirect_to @repertory, notice: 'Repertory was successfully updated.' }
        format.json { render :show, status: :ok, location: @repertory }
      else
        format.html { render :edit }
        format.json { render json: @repertory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repertories/1
  # DELETE /repertories/1.json
  def destroy
    @repertory.destroy
    respond_to do |format|
      format.html { redirect_to repertories_url, notice: 'Repertory was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repertory
      @repertory = Repertory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repertory_params
      params.require(:repertory).permit(:user_id, :num_repertory, :last_name, :name, :document, :inscription, :time_repertory, :date_repertory, :register, :num_inscription)
    end
end
