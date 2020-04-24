class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token


  # GET /trips
  # GET /trips.json
  def index
    @trips = Trip.all
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new
  end

  # GET /trips/1/edit
  def edit
  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)
    print(trip_params)
    #@trip.id = Trip.all.last.id + 1
    jsonparams = JSON.parse(trip_params)
    print(jsonparams["list_trip"])

    respond_to do |format|
      #if @trip.save
      #  trip_params[:list_trip].each do |line_trip|
      #    begin
      #      LisTrip.create(activity_id: line_trip[:activity_id], trip: @trip)
      #    rescue
      #      @trip.destroy
      #      break
      #    end
      #  end

        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    #end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def create_trip_flutter
    @trip = Trip.new(trip_params)

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def trip_params
      params.fetch(:trip, {}).permit(:id,:date,:city_id,:list_trip)

      #params.fetch(:trip, {})
    end
end
