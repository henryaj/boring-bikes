# Boris Bikes

The Boris Bikes project created during week 2 at Makers Academy.

Here, we're modelling a bike hire scheme in Object Oriented programming to get us used to the idea of manipulating objects in Ruby. 

Before we started the exercise, we spent a morning using **CRC cards** to produce a domain model of the problem, deciding on which classes we need (Bike, Garage, DockingStation, User) and the interactions between those classes.

## Principles

We're also obeying a few design principles, notably [SOLID](http://en.wikipedia.org/wiki/SOLID_(object-oriented_design)), keeping code [DRY](http://en.wikipedia.org/wiki/Don't_repeat_yourself), and **test-driving** our code – that is, writing a failing test before doing anything else and then writing just enough code to get it to pass.

## Pairing

We used [**hitch**](https://github.com/therubymug/hitch) to make joint commits while pairing. It's not a perfect solution – commits made using hitch don't count towards your total commits, which is a shame – but it's a nice way of giving joint authorship to work done on a project.

## Functionality

- Bikes can be added to docking station
- Bikes can be undocked from the station
- Vans can travel to and from locations
- Vans can only pick up	and drop bikes when at a location
- Current locations are Garages and Docking Stations
- Garages fix all bikes when they are returned to the Garage

#### Tests

All in RSpec.

```
BikeContainer
  should accept a bike
  should accept a bike
  Should release a bike
  should know when it's full
  should not accept a bike if it's full
  should provide the list of available bikes
  should only be able to pick up an object of class Bike

Bike
  should not be broken after we create it
  should be able to break
  should be able to get fixed

DockingStation
  should allow setting a specific capacity upon init

Garage
  should fix a bike when it accepts a bike
  should have the capacity it is initialized with

Van
  when initialized
    should have the capacity that it was set with
    should not be able to access the 'dock' method directly
    should be able to access the 'dock' method indirectly
  travelling around
    should end up at the docking station was sent to
  at a docking station
    should be able to tell the docking station to give it bikes
    should be able to drop off a bike
  at a garage
    should only drop broken bikes

20 examples, 0 failures
```
