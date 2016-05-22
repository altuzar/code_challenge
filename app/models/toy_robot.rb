##
# This class is to handle the Robot.

class ToyRobot

  def self.calculate(input)

  	# Create the array for the movements
  	movements = input.upcase.split("\\N")

  	# Create a default position
  	position = "00NORTH"
  	position = movements.first.gsub("PLACE ","").gsub(",","").gsub(" ","") if movements.first.start_with?("PLACE ")

	# Create an instance of the Robot Calculator
	robot = ToyRobotCalculator.new(position[0].to_i, position[1].to_i, position[2..-1].upcase)

	# Move the robot around
	movements[1..-2].each do |movement|
		robot.get_command(movement)
	end

	# Sends back the final position!
	return "#{robot.position_x},#{robot.position_y},#{robot.direction}" if movements.last.start_with?("REPORT")

	# Unless there is no REPORT asked
	return ""

  end

end
