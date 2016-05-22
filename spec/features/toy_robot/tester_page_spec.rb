# Feature: Tester page
#   As a tester
#   I want to test all the exercises
#   So I can get all the good responses
feature 'Toy Robot page' do

  # Scenario: Visit the tester page
  #   Given I am a tester
  #   When I visit the exercises
  #   Then I see the correct answers
  scenario 'visit the exercise A' do
    visit '/toy_robot_tester?input=PLACE 0,0,NORTH\nMOVE\nREPORT'
    expect(page).to have_content '0,1,NORTH'
  end

  scenario 'visit the exercise B' do
    visit '/toy_robot_tester?input=PLACE 0,0,NORTH\nLEFT\nREPORT'
    expect(page).to have_content '0,0,WEST'
  end

  scenario 'visit the exercise C' do
    visit '/toy_robot_tester?input=PLACE 1,2,EAST\nMOVE\nMOVE\nLEFT\nMOVE\nREPORT'
    expect(page).to have_content '3,3,NORTH'
  end

  scenario 'visit an exercise with error' do
    visit '/toy_robot_tester?input=PLACE 1,2,EAST\nMOVE\nMOVE\nLEFT\nMOVE\nMOVE\nREPORT'
    expect(page).not_to have_content '3,3,NORTH'
  end

  scenario 'visit the tester with no input' do
    visit '/toy_robot_tester'
    expect(page).to have_content 'Undefined'
  end

end
