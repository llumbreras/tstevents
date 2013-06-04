require 'spec_helper'

describe "Event" do 

	it "is free if $0" do
		event = Event.new(price:0)

		expect(event.free?).to eq(true)
	end
end

