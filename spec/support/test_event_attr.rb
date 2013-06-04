def event_attr_values(other_values = {})
	{
		name: 'European Travel Ideas',
		location: 'Sunnyvale, CA',
		price: 25.00,
		starts_at: 25.days.from_now,
		description: 'Time to share your European Travel Ideas!'
	}.merge(other_values)
end