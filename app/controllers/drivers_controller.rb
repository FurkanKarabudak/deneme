class DriversController < ApplicationController
  
  def index
    @drivers = Driver.order(created_at: :desc)
  end

  def show
    set_driver
    @driver = Driver.find(params[:id])
  end

  def new
    @driver = Driver.new
  end

  def edit
    set_driver
  end

  def create
    @driver = Driver.new(driver_params)

    respond_to do |format|
      if @driver.save
        format.html { redirect_to @driver, notice: 'driver was successfully created.' }
        format.json { render :show, status: :created, location: @driver }
      else
        format.html { render :new }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    set_driver
    respond_to do |format|
      if @driver.update(driver_params)
        format.html { redirect_to @driver, notice: 'driver was successfully updated.' }
        format.json { render :show, status: :ok, location: @driver }
      else
        format.html { render :edit }
        format.json { render json: @driver.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_driver
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_driver
      @driver = Driver.find(params[:id])
    end


    def driver_params
      params.require(:driver).permit(:driver_name, :driver_surname, :driver_birthday, :TC_NO, :driver_tel, :driver_adress,:drivers_comments)
    end
end
