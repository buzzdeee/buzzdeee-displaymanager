require 'spec_helper'
describe 'displaymanager' do

  context 'with defaults for all parameters' do
    it { should contain_class('displaymanager') }
  end
end
