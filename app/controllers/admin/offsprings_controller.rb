class Admin::OffspringsController < AdminController

  def index
    @offsprings = Offspring.all
  end
end
