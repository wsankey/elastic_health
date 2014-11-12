class HospitalController < ApplicationController
  def index
    @hospital = Hospital.all
  end

  def show
    @hospital = Hospital.find(params[:id])
  end

  def new

  end

  def create
    @hospital = Hospital.new hospital_params
    if @hospital.save
      redirect_to @hospital
    else
      render 'new'
    end
  end
  private

  def hospital_params
    params.require(:hospital).permit :name, :type, :hosp_id, :city, :state, :def_desc, :complaint
  end
end
