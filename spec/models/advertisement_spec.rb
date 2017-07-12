require 'rails_helper'

RSpec.describe Advertisement, type: :model do
  let(:advertisement) { Advertisement.create!(title: "Yo Advertisement", body: "Get yo goods", price: 40) }
  
  describe "attributes" do 
    it "has title, body, and price attributes" do 
      expect(advertisement).to have_attributes(title: "Yo Advertisement", body: "Get yo goods", price: 40)
    end
  end
end
