require 'spec_helper'

describe "List of events" do
	it "shows the event" do
	
	event1 = Event.create(name: 'European Travel Ideas',
												location: 'Sunnyvale, CA',
												price: 25.00,
												starts_at: 25.days.from_now,
												description: 'Time to share your European Travel Ideas!')

	event2 = Event.create(name: 'Asian Adventures',
												location: 'San Jose, CA',
												price: 45.00,
												starts_at: 60.days.from_now,
												description: 'Cross the Pacific for an Asian Adventure.')

	event3 = Event.create(name: 'Surf in South America',
												location: 'San Francisco, CA',
												price: 55.00,
												starts_at: 80.days.from_now,
												description: 'Start the plan for a surfing adventure in SA.')
		visit events_url

		expect(page).to have_text('Event')
		expect(page).to have_text(event1.name)
		expect(page).to have_text(event2.name)
		expect(page).to have_text(event3.name)

		expect(page).to have_text(event1.location)
		expect(page).to have_text(event1.description)
		expect(page).to have_text(event1.price)
	end

end