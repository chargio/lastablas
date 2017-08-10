class OffspringsController < ApplicationController
  def new
    @offspring = Offspring.new(user: current_user)
  end

  def create
    @offspring = Offspring.new(offsprings_params)
    @offspring.user = current_user
    if @offspring.save
      flash[:success] = t('.offspring_added', offspring: @offspring.first_name)
      redirect_to user_path(current_user)
    else
      flash[:alert] = t '.offspring_not_added'
      render :new
    end
  end

  def show
    @offspring = Offspring.find_by(user: current_user, id: params[:id])
    if @offspring.nil?
      flash[:alert] = t('.offspring_not_found')
      redirect_to user_path(current_user)
    end
  end

  private

  def offsprings_params
    params.require(:offspring).permit(:first_name, :last_name, :grade)
  end
end
