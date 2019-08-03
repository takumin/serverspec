RSpec::Matchers.define :system_user do
  match do |user|
    user.system_user?
  end
end
