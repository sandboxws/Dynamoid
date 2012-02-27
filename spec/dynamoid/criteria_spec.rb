require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe "Dynamoid::Criteria" do
  
  before do
    @user1 = User.create(:name => 'Josh', :email => 'josh@joshsymonds.com')
    @user2 = User.create(:name => 'Justin', :email => 'justin@joshsymonds.com')
  end
  
  it 'finds first using where' do
    User.where(:name => 'Josh').first.should == @user1
  end
  
  it 'finds all using where' do
    User.where(:name => 'Josh').all.should == [@user1]
  end
  
  it 'returns all records' do
    User.all.should == [@user1, @user2]
  end
  
  it 'returns empty attributes for where' do
    Magazine.where(:name => 'Josh').all.should == []
  end
  
  it 'returns empty attributes for all' do
    Magazine.all.should == []
  end
  

end
