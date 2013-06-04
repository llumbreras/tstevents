require 'spec_helper'

describe "Event" do 

	it "is free if $0" do
		event = Event.new(price:0)

		expect(event.free?).to eq(true)
	end
	it "displays the price if not $0" do
		event = Event.new(price:10.00)

		expect(event.free?).to eq(false)
	end
	it "is free if blank" do
		event = Event.new(price: '')

		expect(event.free?).to eq(true)
	end
end

