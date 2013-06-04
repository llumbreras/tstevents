require 'spec_helper'

describe "show event page" do 
	

	it "shows event details" do

		event = Event.create(event_attr_values(price: 10.00))

		visit event_url(event)
		expect(page).to have_content(event.name)
		expect(page).to have_content('$10.00')
	end
	
end