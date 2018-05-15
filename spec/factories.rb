FactoryBot.define do
  factory(:user) do
    name('Hello')
    email('test@example.com')
    password('12341234')
    password_confirmation('12341234')
  end
end
