![Travis build status](https://travis-ci.org/gypsydave5/boris-bikes.svg?branch=master)

Boris Bikes
===========

The Boris Bikes project created during weel 2 at Makers Academy.

Current Functionality
---------------------

- Bikes can be added to docking station
- Bikes can be undocked from the station
- Vans can travel to and from locations
- Vans can only pick up	and drop bikes when at a location
- Current locations are Garages and Docking Stations
- Garages will fix al bikes when they are returned to the Garage

Roadmap
-------

- Add users, who when at a location, can hire a bike.
- Allow users to travel between locations (with or without a bike)
- Only allow vans and users to travel to valid locations (vans to garages and
	stations; users only to stations).
- Time the users between hiring and returning a bike (but don't worrty about the
	vans).
- Charge the users based upon the amount of time they've had the bike out for.
- Make the times uneditable.
- Create a log file of hires and returns when they happen.
- Create a report function to generate a file of current bike statuses.