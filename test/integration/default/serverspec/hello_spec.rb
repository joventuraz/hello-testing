require 'serverspec'
include Serverspec::Helper::Exec

describe command("curl -L localhost | grep 'hello there'") do
  it { should return_exit_status 0 }
end
