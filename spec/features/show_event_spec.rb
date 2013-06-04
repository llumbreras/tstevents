require 'spec_helper'

describe "show event page" do 
	

	it "shows event details" do

		event = Event.create(event_attr_values)

		visit event_url(event)
		expect(page).to have_content(event.name)
		expect(page).to have_content(event.location)
		expect(page).to have_content(event.description)
	end
	
	it "shows price as 'Free' if price is $0" do
		event = Event.create(event_attr_values(price: 0.0))
		visit event_url(event)
		expect(page).to have_content("Free!")
	end

	it "shows price if not $0" do
		event = Event.create(event_attr_values(price: 20.00))
		visit event_url(event)
		expect(page).to have_content("$20.00")
	end

end