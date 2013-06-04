require 'spec_helper'

describe "Navigation between pages" do
	it "shows the event listing from details page" do
	
		event = Event.create(event_attr_values)
		
		visit event_url(event)

		click_link "All Events"

		expect(current_path).to eq(events_path)

	end

	it "shows the details page from listing page" do
	
		event = Event.create(event_attr_values)

		
		visit events_url

		click_link event.name

		expect(current_path).to eq(event_path(event))

	end

end