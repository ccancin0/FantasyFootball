class RosterSystemsController < ApplicationController
  before_action :set_roster_system, only: [:show, :edit, :update, :destroy]

  # GET /roster_systems
  # GET /roster_systems.json
  def index
    @roster_systems = RosterSystem.all
  end

  # GET /roster_systems/1
  # GET /roster_systems/1.json
  def show
  end

  # GET /roster_systems/new
  def new
    @roster_system = RosterSystem.new
  end

  # GET /roster_systems/1/edit
  def edit
  end

  # POST /roster_systems
  # POST /roster_systems.json
  def create
    @roster_system = RosterSystem.new(roster_system_params)

    respond_to do |format|
      if @roster_system.save
        format.html { redirect_to @roster_system, notice: 'Roster system was successfully created.' }
        format.json { render :show, status: :created, location: @roster_system }
      else
        format.html { render :new }
        format.json { render json: @roster_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /roster_systems/1
  # PATCH/PUT /roster_systems/1.json
  def update
    respond_to do |format|
      if @roster_system.update(roster_system_params)
        format.html { redirect_to @roster_system, notice: 'Roster system was successfully updated.' }
        format.json { render :show, status: :ok, location: @roster_system }
      else
        format.html { render :edit }
        format.json { render json: @roster_system.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /roster_systems/1
  # DELETE /roster_systems/1.json
  def destroy
    @roster_system.destroy
    respond_to do |format|
      format.html { redirect_to roster_systems_url, notice: 'Roster system was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_roster_system
      @roster_system = RosterSystem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def roster_system_params
      params.require(:roster_system).permit(:name, :numQuarterBacks, :numRunningBacks, :numWideReceivers, :numTightEnds, :numPlaceKickers, :numSpecialTeams, :numBench)
    end
end
