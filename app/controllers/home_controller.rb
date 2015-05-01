class HomeController < ApplicationController
  def AboutUs
    
  end
  def contact
    
  end
 
  def index
    if user_signed_in?
      redirect_to :controller=> 'dashboard', :action => 'index'
    end
  end
  
end
