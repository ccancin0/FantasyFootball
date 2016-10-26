class ScoringSystemsController < ApplicationController
  before_action :set_scoring_system, only: [:show, :edit, :update, :destroy]

  # GET /scoring_systems
  # GET /scoring_systems.json
  def index
    @scoring_systems = ScoringSystem.all
  end

  # GET /scoring_systems/1
  # GET /scoring_systems/1.json
  def show
  end

  # GET /scoring_systems/new
  def new
    @scoring_system = ScoringSystem.new
  end

  # GET /scoring_systems/1/edit
  def edit
  end

  # POST /scoring_systems
  # POST /scoring_systems.json
  def create
    @scoring_system = ScoringSystem.new(scoring_system_params)

    respond_to do |format|
      if @scoring_system.save
        format.html { redirect_to @scoring_system, notice: 'Scoring system was successfully created.' }
        format.json { render :show, status: :created, location: @scoring_system }
      else
        format.html { render :new }
        format.json { render json: @scoring_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scoring_systems/1
  # PATCH/PUT /scoring_systems/1.json
  def update
    respond_to do |format|
      if @scoring_system.update(scoring_system_params)
        format.html { redirect_to @scoring_system, notice: 'Scoring system was successfully updated.' }
        format.json { render :show, status: :ok, location: @scoring_system }
      else
        format.html { render :edit }
        format.json { render json: @scoring_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scoring_systems/1
  # DELETE /scoring_systems/1.json
  def destroy
    @scoring_system.destroy
    respond_to do |format|
      format.html { redirect_to scoring_systems_url, notice: 'Scoring system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scoring_system
      @scoring_system = ScoringSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def scoring_system_params
      params.require(:scoring_system).permit(:name, :ptsPassing, :ptsRushing, :ptsReceiving, :ptsTD, :ptsTDPass, :ptslnterceptFumble, :ptsExtraPoint, :ptsTurnover, :ptsSack, :ptsSafety, :ptsBlockedKick)
    end
end
