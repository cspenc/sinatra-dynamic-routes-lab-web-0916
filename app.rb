require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name].reverse
    "#{name}"
  end

  get "/square/:number" do
    num = params[:number].to_i**2
    "#{num}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    str = ""
    number.times do
      str << "#{phrase}\n"
    end
    str
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    no1 = params[:number1].to_i
    no2 = params[:number2].to_i
    if op == "add"
      ans = no1+no2
      "#{ans}"
    elsif op == "subtract"
      ans = no1-no2
      "#{ans}"
    elsif op == "multiply"
      ans = no1*no2
      "#{ans}"
    elsif op == "divide"
      ans = no1/no2
      "#{ans}"
    end
  end

end
