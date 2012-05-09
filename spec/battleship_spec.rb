require_relative 'spec_helper'

describe Battleship do

  context "starting the game" do
    it "should open a new game" do
      b = Battleship.new
      b.start_game.should == "Please enter a player"
    end
  end

  context "adding players" do

    it "should return an error if the game has started" do
      b = Battleship.new
      b.stub!(:game_has_started?).and_return(true)
      b.game_has_started?.should be_true
      b.add_player "Some Guy"
      b.players.should_not include("Some Guy")
    end

    it "should add a player" do
      b = Battleship.new
      b.add_player "Some Guy"
      b.players.should include("Some Guy")
    end
  end

  context "placing ships" do

  end
end
