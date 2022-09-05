class ReservationsController < ApplicationController

 
  # GET /reservations or /reservations.json
  def index
    @reservations = Reservation.all
  end
  
  # GET /reservations/1 or /reservations/1.json
  def show
    @user = Current.user
    @reservations = @user.reservations
  end

  # GET /reservations/new
  def new
    @reservation = Reservation.new
  end

  # GET /reservations/1/edit
  def edit
  end
  


  # POST /reservations or /reservations.json
  def create
    @reservation = Reservation.new(reservation_params)

    
      if @reservation.save
        redirect_to root_path, notice: "Reservation was successfully created." 
        
      else
         redirect_to trips_path, alert: "End date < start date.try again" 
        
      end
  end
  

  # PATCH/PUT /reservations/1 or /reservations/1.json
  def update
    respond_to do |format|
      if @reservation.update(reservation_params)
        format.html { redirect_to root_path, notice: "Reservation was successfully updated." }
        format.json { render :show, status: :ok, location: @reservation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reservation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reservations/1 or /reservations/1.json
  def destroy
 
   @reservation.destroy
    respond_to do |format|
      format.html { redirect_to reservations_url, notice: "Reservation was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reservation
      
      @reservation = Reservation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reservation_params
    params.permit(:user_id, :trip_id, :start_date, :end_date, :nrzile,:totalprice)
    end
    
    
end
