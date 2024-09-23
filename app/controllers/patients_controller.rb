class PatientsController < ApplicationController 

  def new 
    @pt = Patient.new
    current_user.role = :admin
    current_user.save 
  end

  def show
    @pt = Patient.find(params[:id])   
    redirect_to "/"
  end
  
  def edit
    @pt = Patient.find(params[:id])
  end

  def create
    @pt = Patient.new(pt_params)
    @pt.save
    redirect_to "/"
  end

  def update
    @pt = Patient.find(params[:id])
    if @pt.update(pt_params)
      redirect_to "/"
    else
      render :edit
    end
  end

  def destroy

    
    @pt = Patient.find(params[:id])
    @pt.destroy
    redirect_to patients_url
  end

  def pt_params
    params.require(:patient).permit(:name, :condition, :doctor)
  end

end
