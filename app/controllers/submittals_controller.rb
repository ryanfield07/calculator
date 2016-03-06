class SubmittalsController < ApplicationController
  before_action :set_submittal, only: [:show, :edit, :update, :destroy]

  # GET /submittals
  # GET /submittals.json
  def index
    @submittals = Submittal.all
  end

  # GET /submittals/1
  # GET /submittals/1.json
  def show
end

  # GET /submittals/new
  def new
    @submittal = Submittal.new
  end

  # GET /submittals/1/edit
  def edit
  end

  # POST /submittals
  # POST /submittals.json
  def create
    @submittal = Submittal.new(submittal_params)

    respond_to do |format|
      if @submittal.save
        format.html { redirect_to @submittal, notice: 'Your submittal was saved' }
        format.json { render :show, status: :created, location: @submittal }
      else
        format.html { render :new }
        format.json { render json: @submittal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /submittals/1
  # PATCH/PUT /submittals/1.json
  def update
    respond_to do |format|
      if @submittal.update(submittal_params)
        format.html { redirect_to @submittal, notice: 'Submittal was successfully updated.' }
        format.json { render :show, status: :ok, location: @submittal }
      else
        format.html { render :edit }
        format.json { render json: @submittal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /submittals/1
  # DELETE /submittals/1.json
  def destroy
    @submittal.destroy
    respond_to do |format|
      format.html { redirect_to submittals_url, notice: 'Your submittal was successfully deleted' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submittal
      @submittal = Submittal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submittal_params
      params.require(:submittal).permit(:req, :firstName, :lastName, :date, :location, :BR, :PR, :status, :submitter)
    end
end
