require "#{File.join(File.dirname(__FILE__),'..','spec_helper.rb')}"

describe 'bind::wildcard', :type => :define do

  let(:title) { '*.example42.com' }
  let(:node) { 'rspec.example42.com' }

  describe 'Test bind::wildcard without options' do
    let(:params) { {
        :zone   => 'example42.com',
        :target => '42.42.42.42',
    } }
    it { should contain_bind__record('A-*.example42.com').with_zone('example42.com') }
  end


end

