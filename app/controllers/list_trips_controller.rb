class ListTripsController < ApplicationController
  before_action :set_list_trip, only: [:show, :edit, :update, :destroy]

  # GET /list_trips
  # GET /list_trips.json
  def index
    @list_trips = ListTrip.all
  end

  # GET /list_trips/1
  # GET /list_trips/1.json
  def show
  end

  # GET /list_trips/new
  def new
    @list_trip = ListTrip.new
  end

  # GET /list_trips/1/edit
  def edit
  end

  # POST /list_trips
  # POST /list_trips.json
  def create
    @list_trip = ListTrip.new(list_trip_params)

    respond_to do |format|
      if @list_trip.save
        format.html { redirect_to @list_trip, notice: 'List trip was successfully created.' }
        format.json { render :show, status: :created, location: @list_trip }
      else
        format.html { render :new }
        format.json { render json: @list_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /list_trips/1
  # PATCH/PUT /list_trips/1.json
  def update
    respond_to do |format|
      if @list_trip.update(list_trip_params)
        format.html { redirect_to @list_trip, notice: 'List trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @list_trip }
      else
        format.html { render :edit }
        format.json { render json: @list_trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /list_trips/1
  # DELETE /list_trips/1.json
  def destroy
    @list_trip.destroy
    respond_to do |format|
      format.html { redirect_to list_trips_url, notice: 'List trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list_trip
      @list_trip = ListTrip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_trip_params
      params.fetch(:list_trip, {})
    end
end
