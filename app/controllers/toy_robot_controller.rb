class ToyRobotController < ApplicationController

  def tester
    @input = params[:input] if params.has_key?(:input)
    # @position  = params[:position]  if params.has_key?(:position)
    # @movements = params[:movements] if params.has_key?(:movements)
    @result = "Undefined"
    @result = ToyRobot.calculate(@input) if @input
    # if @position && @movements
    #   @result = Rover.calculate(@position, @movements)
    #    end
  end

end
