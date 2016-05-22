class ToyRobotController < ApplicationController

  def tester
    @input = "Undefined"
    @input = params[:input] if params.has_key?(:input)
    @result = "Undefined"
    @result = ToyRobot.calculate(@input) if @input != "Undefined"
  end

end
