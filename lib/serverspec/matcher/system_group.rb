RSpec::Matchers.define :system_group do
  match do |group|
    group.system_group?
  end
end
