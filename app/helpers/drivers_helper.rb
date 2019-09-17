module DriversHelper
  def available_drivers
    Driver.all.order(driver_name: :asc)
  end
end
