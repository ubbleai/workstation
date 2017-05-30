require 'spec_helper'

describe 'workstation::google-drive' do
  describe command 'gcloud --version' do
    its(:stdout) { should match /Google Cloud SDK/ }
  end
end
