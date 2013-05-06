require 'spec_helper'

describe Recast::Model do
  context '#become' do
    subject { User.new }

    it 'role not found' do
      expect { subject.become(:reader) }.to raise_error(Recast::Errors::RoleNotFound)
    end

    it 'internal classes have higher priority' do
      subject.become(:writer).tap do |real|
        real.should be_a(User::Writer)
        real.person.should == subject
      end
    end

    it 'allow send extra params' do
      subject.become(:singer, 'Alex Foo').tap do |real|
        real.should be_a(Singer)
        real.person.should == subject
        real.alias.should == 'Alex Foo'
      end
    end

    it 'allow use namespaces' do
      subject.become([:microsoft, :web, :developer]).should be_a(Microsoft::Web::Developer)
    end
  end
end
