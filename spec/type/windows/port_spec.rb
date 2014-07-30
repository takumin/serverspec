require 'spec_helper'

include Specinfra::Helper::Cmd

set :os, :family => 'windows'

describe port(80) do
  it { should be_listening }
end

describe port('invalid') do
  it { should_not be_listening }
end

describe port(80) do
  it { should be_listening.with("tcp") }
end

describe port(123) do
  it { should be_listening.with("udp") }
end

describe port(80) do
  it { 
    expect {
      should be_listening.with('not implemented')
    }.to raise_error(ArgumentError, %r/\A`be_listening` matcher doesn\'t support/)
  }
end
