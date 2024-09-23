class HomeController < ApplicationController
  def default
    
    
    @dor = false
    @all_patients = Patient.all
    @v = false
    if user_signed_in?
      if current_user.admin?
        v = true
      else
        v = false
      end 
    end
  end
end
