require 'spec_helper'

describe Sponsor do

  def reset_sponsor(options = {})
    @valid_attributes = {
      :id => 1,
      :title => "RSpec is great for testing too"
    }

    @sponsor.destroy! if @sponsor
    @sponsor = Sponsor.create!(@valid_attributes.update(options))
  end

  before(:each) do
    reset_sponsor
  end

  context "validations" do
    
    it "rejects empty title" do
      Sponsor.new(@valid_attributes.merge(:title => "")).should_not be_valid
    end

    it "rejects non unique title" do
      # as one gets created before each spec by reset_sponsor
      Sponsor.new(@valid_attributes).should_not be_valid
    end
    
  end

end