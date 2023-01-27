class FortunesController < ApplicationController
  
  def horoscopes
    @user_sign = params.fetch("the_sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@user_sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)

  @luckynums = Array.new

  5.times do
    rn = rand(1...100)
    @luckynums.push(rn)
  end

  render({ :template => "horoscope_template.html.erb"})
  end
end
