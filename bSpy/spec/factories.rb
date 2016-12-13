FactoryGirl.define :user do |u|
  u.name                  "Michael Hartl"
  u.email                 "mhartl@example.com"
  u.password              "foobar"
  u.password_confirmation "foobar"
  u.profile_id            1
end
