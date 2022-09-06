class TruckDriversController < ApplicationController
  before_action :set_truck_driver, only: %i[ show edit update destroy ]

  # GET /truck_drivers or /truck_drivers.json
  def index
    @truck_drivers = TruckDriver.all
  end

  # GET /truck_drivers/1 or /truck_drivers/1.json
  def show
  end

  # GET /truck_drivers/new
  def new
    @truck_driver = TruckDriver.new
  end

  # GET /truck_drivers/1/edit
  def edit
  end

  # POST /truck_drivers or /truck_drivers.json
  def create
    @truck_driver = TruckDriver.new(truck_driver_params)

    respond_to do |format|
      if @truck_driver.save
        format.html { redirect_to truck_driver_url(@truck_driver), notice: "Truck driver was successfully created." }
        format.json { render :show, status: :created, location: @truck_driver }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @truck_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_drivers/1 or /truck_drivers/1.json
  def update
    respond_to do |format|
      if @truck_driver.update(truck_driver_params)
        format.html { redirect_to truck_driver_url(@truck_driver), notice: "Truck driver was successfully updated." }
        format.json { render :show, status: :ok, location: @truck_driver }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @truck_driver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_drivers/1 or /truck_drivers/1.json
  def destroy
    @truck_driver.destroy

    respond_to do |format|
      format.html { redirect_to truck_drivers_url, notice: "Truck driver was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_driver
      @truck_driver = TruckDriver.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def truck_driver_params
      params.require(:truck_driver).permit(:name, :phone, :email, :pay_later)
    end
end
