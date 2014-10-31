![Travis build status](https://travis-ci.org/gypsydave5/boris-bikes.svg?branch=master)

Boris Bikes
===========

The Boris Bikes project created during week 2 at Makers Academy. The task was to make a running piece of code that coud be used to run a city cycle hire system. We got to learn more about Ruby, get our hands dirty and then progressively cleaner using Rspec testing with doubles an without, learn lots about Object-Oriented Design, and pair program like crazy. :smile: 

Objective
---------

The objective was really to learn about how to create and manage a piece of software using the principles of Object-Oriented programming. We were told that our programs should be [TRUE](http://eewang.github.io/blog/2013/04/13/custom-activerecord-queries-in-rails/) and [SOLID](http://en.wikipedia.org/wiki/SOLID_(object-oriented_design)) -- that is to say...

  - <b>T</b>ransparent: what the code does should be obvious (so we know what we're changing if we change it)
  - <b>R</b>easonable: the cost (in time and effort) of changing the code shoudl be proportional to the sort of change being implemented.
  - <b>U</b>sable: the code should be usable in different situations, not just the context it was written specifically for.
  - <b>E</b>xemplary: it should look and smell so good that anyone who changes it will want to keep the above as a part of the software.

And why would you not make something the best that it could be? That's TRUE :wink:

So SOLID means...

  - <b>S</b>ingle Responsibility: each class should have a single responsibility - it deals with one thing and one thing only.
  - [<b>O</b>pen/Closed principle](http://en.wikipedia.org/wiki/Open/closed_principle): The code should be "open for extension... but closed for modification." i.e. it should be easy to add functionality to the code, but hard to change what it already does.
  - [<b>L</b>iskov substitution principle](http://en.wikipedia.org/wiki/Liskov_substitution_principle): subtypes of types in code (i.e. sub-classes of a class) should be able to be directly substituted for their parent type without any change to the code. (This is my favourite as it means that a [square is not a rectangle](http://en.wikipedia.org/wiki/Liskov_substitution_principle#A_typical_violation)
  - [<b>I</b>nterface segregation principle](http://en.wikipedia.org/wiki/Interface_segregation_principle): many separate interfaces for many different clients is better than just building on gigantic generic interface for your code.
  - [<b>D</b>ependency inversion principle](http://en.wikipedia.org/wiki/Dependency_inversion_principle): Make the higher level parts of the code independent of the lower level parts of the code; make them both dependent upon abstractions and not concrete instances (which is why [dependency injection](http://en.wikipedia.org/wiki/Dependency_injection) is so awesome to think about when decoupling code.)


We tried to implement the above as well as we could, and rewrote the code a number of times using both Chicago (initially) and London style testing. It was a lot of fun - and with over one hundred commits I'm pretty sure I'll never want to look at another Boris Bike again :smile:
