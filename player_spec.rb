require_relative 'players'



describe Player do
 
 before do
   $stdout = StringIO.new
 end 
  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
  end
  
  it "has a capitalized name" do
    
    @player.name.should == "Larry"
end

it "has an initial health" do
  
  @player.health.should == 150
end

it "has a string representation" do
  
  @player.to_s.should == "I'm Larry with a health of 150 and a score of 155."
end

it "computes a score as the sum of its health and length of its name" do
  
  @player.score.should == (150 +5)
end

it "increases health by 15 when w00ted" do
  
  @player.w00t == (@player.health + 15)
end

it "decreases health by 10 when blammed" do
  
  @player.blam == (@player.health - 10)
end

context "with a health greater than 100" do
  before do
    @player = Player.new("larry", 150)
  end
  
  it "is strong" do
  @player.should be_strong
end
end

context "with a health less than or equal to 100" do
  before do
    @player = Player.new("larry", 100)
  end
  
  it "is wimpy" do
    @player.should_not be_strong
  end
end
end