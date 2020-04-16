# # encoding: utf-8

# check that Star folder exists
describe file('/usr/local/STAR-2.7.3a') do
  it { should be_directory }
end

# Check that Star executable is in the path
describe command('which STAR') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('STAR') }
end

# Check that Star works
describe command('STAR --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('2.7.3a') }
end
