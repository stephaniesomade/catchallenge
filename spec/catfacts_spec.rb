require 'catfacts'

RSpec.describe CatFacts do
  it "provides a random cat fact" do
    fake_requester = double("fake_requester")
    expect(fake_requester).to receive(:get).with(
     URI("https://catfact.ninja/fact") 
    ).and_return('{"fact":"Cats lap liquid from the underside of their tongue, not from the top.","length":69}')
    fact = CatFacts.new(fake_requester)
    expect(fact.provide).to eq "Cat fact: Cats lap liquid from the underside of their tongue, not from the top."
  end
end 