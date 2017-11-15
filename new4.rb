control "9-1-2" do
    impact 1
    title "9.1.2 Verify Permissions on /etc/passwd (Not Scored)"
    desc "The /etc/passwd file contains user account information that is used by many system utilities and therefore must be readable for these utilities to operate."
    describe file('/etc/passwd') do
        it { should exist }
        it { should be_owned_by 'root' }
        its('mode') { should eq 0644 }
    end    
end 