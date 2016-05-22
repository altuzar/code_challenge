Rails.application.routes.draw do
  root to: 'visitors#index'
  get 'toy_robot_tester' => 'toy_robot#tester'
end
