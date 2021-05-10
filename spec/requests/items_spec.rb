require 'rails_helper'

RSpec.describe "Items", type: :request do
  before do
    u1 = User.create(username: "Dwayne", city: "Los Angeles")
    u1.items.create(name: "Non-stick pan", description: "Sticks a bit", price: 10)
  end

  describe "GET /items" do
    it 'returns an array of all items with user info' do
      get '/items'

      expect(response.body).to include_json([
        { 
          id: a_kind_of(Integer), 
          name: "Non-stick pan", 
          description: "Sticks a bit", 
          price: 10,
          user: {
            id: a_kind_of(Integer),
            username: "Dwayne",
            city: "Los Angeles"
          }
        }
      ])
    end
  end
end
