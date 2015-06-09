require ::File.expand_path('../spec_helper', __FILE__)

describe command("wget -q http://localhost/ -O - | head -100 | grep generator") do
    its(:stdout) { should match /concrete5/i }
end

