require_relative 'spec_helper'

describe Player do
  let(:player) { Player.new }

  it "should return successfully" do
    player.testing.should == "success!"

  end
end
