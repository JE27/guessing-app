class PagesController < ApplicationController
 
  def method_fortune
    fortunes = [
                "You will encounter happiness on your journey.", 
                "Today the weather will be nice.", 
                "Good things are to come."
                ]
    fortune = fortunes.sample
    render json:{message: fortune}
  end
    

  def method_numbers
    numbers = []
    6.times {numbers << rand(1..60)}
    numbers_string = numbers.join(", ")
    render json:{message: numbers_string}
  end

  def method_refresh
      count = count + 1    
      render json:{message: count}
  end
end