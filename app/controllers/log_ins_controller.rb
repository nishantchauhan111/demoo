class LogInsController < ApplicationController
  before_action :set_log_in, only: %i[ show edit update destroy ]

  # GET /log_ins or /log_ins.json
  def index
    @log_ins = LogIn.all
  end

  # GET /log_ins/1 or /log_ins/1.json
  def show
  end

  # GET /log_ins/new
  def new
    @log_in = LogIn.new
  end

  # GET /log_ins/1/edit
  def edit
  end

  # POST /log_ins or /log_ins.json
  def create
    @log_in = LogIn.new(log_in_params)

    respond_to do |format|
      if @log_in.save
        format.html { redirect_to log_in_url(@log_in), notice: "Log in was successfully created." }
        format.json { render :show, status: :created, location: @log_in }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @log_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /log_ins/1 or /log_ins/1.json
  def update
    respond_to do |format|
      if @log_in.update(log_in_params)
        format.html { redirect_to log_in_url(@log_in), notice: "Log in was successfully updated." }
        format.json { render :show, status: :ok, location: @log_in }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @log_in.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /log_ins/1 or /log_ins/1.json
  def destroy
    @log_in.destroy

    respond_to do |format|
      format.html { redirect_to log_ins_url, notice: "Log in was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_log_in
      @log_in = LogIn.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def log_in_params
      params.require(:log_in).permit(:user, :city, :state, :order)
    end
end
