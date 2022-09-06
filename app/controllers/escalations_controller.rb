class EscalationsController < ApplicationController
  before_action :set_escalation, only: %i[ show edit update destroy ]

  # GET /escalations or /escalations.json
  def index
    @escalations = Escalation.all
  end

  # GET /escalations/1 or /escalations/1.json
  def show
  end

  # GET /escalations/new
  def new
    @payment = Payment.all
    @escalation = Escalation.new
  end

  # GET /escalations/1/edit
  def edit
  end

  # POST /escalations or /escalations.json
  def create
    @escalation = Escalation.new(escalation_params)

    respond_to do |format|
      if @escalation.save
        format.html { redirect_to escalation_url(@escalation), notice: "Escalation was successfully created." }
        format.json { render :show, status: :created, location: @escalation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @escalation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /escalations/1 or /escalations/1.json
  def update
    respond_to do |format|
      if @escalation.update(escalation_params)
        format.html { redirect_to escalation_url(@escalation), notice: "Escalation was successfully updated." }
        format.json { render :show, status: :ok, location: @escalation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @escalation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escalations/1 or /escalations/1.json
  def destroy
    @escalation.destroy

    respond_to do |format|
      format.html { redirect_to escalations_url, notice: "Escalation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_escalation
      @escalation = Escalation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def escalation_params
      params.require(:escalation).permit(:payment_id, :expected_amount)
    end
end
