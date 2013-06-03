require 'spec_helper'

describe "List of events" do
	it "shows the event" do
	
		visit "http://www.example.org/events"

		expect(page).to have_text('Event')
	end

end