FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "testing#{n}" }
    password "testing"
end
  
  factory :grid do
     x_axis "10"
     y_axis "15"
     description "this is a valid description statement for this grid"
  end

  factory :shuttle do
     landing_x_axis "1"
     landing_y_axis "1"
     target_x_axis "1"
     target_y_axis "2"     
  end
end








