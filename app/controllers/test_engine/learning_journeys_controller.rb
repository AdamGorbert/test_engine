require_dependency "test_engine/application_controller"

module TestEngine
  class LearningJourneysController < ApplicationController
    before_action :set_learning_journey, only: [:show, :edit, :update, :destroy]

    # GET /learning_journeys
    # GET /learning_journeys.json
    def index
      @learning_journeys = LearningJourney.all
    end

    # GET /learning_journeys/1
    # GET /learning_journeys/1.json
    def show
      @user = "coach"
    end

    # GET /learning_journeys/new
    def new
      @learning_journey = LearningJourney.new
    end

    # GET /learning_journeys/1/edit
    def edit
    end

    # POST /learning_journeys
    # POST /learning_journeys.json
    def create
      @learning_journey = LearningJourney.new(learning_journey_params)

      respond_to do |format|
        if @learning_journey.save
          format.html { redirect_to @learning_journey, notice: 'Learning journey was successfully created.' }
          format.json { render :show, status: :created, location: @learning_journey }
        else
          format.html { render :new }
          format.json { render json: @learning_journey.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /learning_journeys/1
    # PATCH/PUT /learning_journeys/1.json
    def update
      respond_to do |format|
        if @learning_journey.update(learning_journey_params)
          format.html { redirect_to @learning_journey, notice: 'Learning journey was successfully updated.' }
          format.json { render :show, status: :ok, location: @learning_journey }
        else
          format.html { render :edit }
          format.json { render json: @learning_journey.errors, status: :unprocessable_entity }
        end
      end
    end

    # DELETE /learning_journeys/1
    # DELETE /learning_journeys/1.json
    def destroy
      @learning_journey.destroy
      respond_to do |format|
        format.html { redirect_to learning_journeys_url, notice: 'Learning journey was successfully destroyed.' }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_learning_journey
        @learning_journey = LearningJourney.find(params[:id])
      end

      # Never trust parameters from the scary internet, only allow the white list through.
      def learning_journey_params
        params[:learning_journey]
      end
  end
end
