#By using the symbol ':user', we get FactoryGirl to simulate the User model.

Factory.define :user do |user|
  user.name "Takuya Kitamura"
  user.email "takuya@example.com"
  user.password "foobar"
  user.password_confirmation "foobar"
end


