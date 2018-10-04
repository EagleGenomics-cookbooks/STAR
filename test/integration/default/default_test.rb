# # encoding: utf-8

# check that Star folder exists
describe file('/usr/local/STAR-2.6.1b') do
  it { should be_directory }
end

# Check that Star executable is in the path
describe command('which STAR') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('STAR') }
end

# Check that Star works
# the version is 2.6.1b but it appears as 2.6.1a
describe command('STAR --version') do
  its(:exit_status) { should eq 0 }
  its(:stdout) { should match('2.6.1a') }
end
