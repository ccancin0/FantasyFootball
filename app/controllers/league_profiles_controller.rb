class LeagueProfilesController < ApplicationController
  before_action :set_league_profile, only: [:show, :edit, :update, :destroy]

  # GET /league_profiles
  # GET /league_profiles.json
  def index
    @league_profiles = LeagueProfile.all
  end

  # GET /league_profiles/1
  # GET /league_profiles/1.json
  def show
  end

  # GET /league_profiles/new
  def new
    @league_profile = LeagueProfile.new
  end

  # GET /league_profiles/1/edit
  def edit
  end

  # POST /league_profiles
  # POST /league_profiles.json
  def create
    @league_profile = LeagueProfile.new(league_profile_params)

    respond_to do |format|
      if @league_profile.save
        format.html { redirect_to @league_profile, notice: 'League profile was successfully created.' }
        format.json { render :show, status: :created, location: @league_profile }
      else
        format.html { render :new }
        format.json { render json: @league_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /league_profiles/1
  # PATCH/PUT /league_profiles/1.json
  def update
    respond_to do |format|
      if @league_profile.update(league_profile_params)
        format.html { redirect_to @league_profile, notice: 'League profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @league_profile }
      else
        format.html { render :edit }
        format.json { render json: @league_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /league_profiles/1
  # DELETE /league_profiles/1.json
  def destroy
    @league_profile.destroy
    respond_to do |format|
      format.html { redirect_to league_profiles_url, notice: 'League profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_league_profile
      @league_profile = LeagueProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def league_profile_params
      params.require(:league_profile).permit(:profileName)
    end
end
