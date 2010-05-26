* usually work with Ruby/Rails
* excited by code, deeply interested in crossover
* particularly interaction design
* that's why interest piqued when I discovered that:

SLIDE- (nudge cover)

* in 2008, two economists named
* Richard Thaler and Cass Sunstein
* wrote a book called Nudge
* put forth two key concepts:

SLIDE- (key concepts)

1. People make bad decisions
  * this is supermarket while hungry
  * made in the heat of the moment
  * would not make with a clear head

2. **impossible** to present a choice without **influencing** the decision made

SLIDE- (1 2 3 4 choice)

  * impossible to present w/o influence
  * small, medium, large, supersize?


* Following these two assertions
* claim is made that domain experts should **present** choices to
* encourage **heat-of-the-moment** decision to match **clear-headed** decision
* influence people to make the decision they wish they had made
* but retain ultimate freedom of choice
* a technique Thaler and Sunstein dubbed "libertarian paternalism".



SLIDE- (How can we use this?)

* Thaler and Sunstein macro-level
* concerned with good pension plans, picking a healthy meal at the canteen.
* wondered how this might be used by us


* turns out, shows up all over the place

SLIDE- (installshield wizard)

* perfect example of lib pat as applied to computing
* telegraphing intent, enforcing domain expert opinion, retaining user freedom


* let's explain:


* telegraphing intent
  + something frontend has done for a long time
  + no mistaking what *and who* different choices are intended for
  + user can quickly decide which choice suits
  + can do this because of:

* enforcing domain expert opinion
  + "Typical install" option

SLIDE- (Hick's Law)

  + dramatically reduced choice
    - Hick's Law
      time taken to make decision *proportional* to number of choices

SLIDE- (installshield wizard, again)

  + no need to be a domain expert to install software
  + domain being either software installation (general) or the final product (specific)
  + allows you to mash "Next"

* retaining user freedom
  + "Custom install" option
  + keeps those extra choices around for those that want them


* no surprise so popular



SLIDE- (What about back-end code?)

* choice seen traditionally through lens of the interface
* equally applies to APIs, Classes and Methods, because:


* Programming is the act of building tools
* NOT TOOLING
* fractal nature, concentric self-similarity
* system- applications- modules- classes- methods; all solve problems at different scales.
* Ability to decide whether and how a tool solves a problem is the biggest barrier to reuse and adoption



* Analogy is code as tools
* let's look at some tools as code:

SLIDE- (Claw hammer)

* A claw hammer
  + In use forever
  + 1 interface (handle)
  + 2 public methods (embed, extract)
  + v. clear usage intention
  + no docs required
  + never "wait while I read the manual"

  + code might look like this:

SLIDE- (Clawhammer code)

  + simple, clear interfaces defined a the top
  + irrelevant-to-user methods pushed out of the way

* pretty simple example

* more complicated example:

SLIDE- (M1911)

* The Colt M1911 pistol
  + Used by US military for almost 100 years
  + Considerably more complicated
  + harder to understand?

  + 2 interfaces (grip, slide grip)
  + 7 public methods, BUT..
  + 1 primary public method (fire / trigger)
  + 6 clearly secondary methods (saftey catches, mag eject, etc)

  + v. clear primary usage intention
  + answers "how do I use it to kill a guy?" quickly
  + docs / training required for more advanced, long term use
  + enforces domain expert opinion (semi-auto rate of fire)

  + code might look like this:

SLIDE- (M1911 code)

  + code more complicated? yes
    - private methods and smaller classes way off page
  + more complicated to understand? no

  + clear that even adding more complicated internals
    - silencers
    - sights
    - selectable rate of fire
  + isn't going to make the objects main functionality any more obscure


* key: classes represent real world objects so:
* all ideas from real world on how to improve user interaction apply
* manifest as ways to improve code reuse



SLIDE- (State of the union: Case studies)

* Current use of these ideas in Ruby community

SLIDE- (Rails)

* 2.3
* uses **different bits** of these ideas at **different scales**
* enthusiastic about freedom at a method level
  * uses option hashses in ActiveRecord and view helpers
* more strongly opinionated at a framework level
  * ActiveRecord / ActionPack lock-in
* Rails 3 solving this
  * Merb merge
  * ActiveModel


SLIDE- (HAML, w/ code)

* Hampton Catlin
* opinionated at high level (markup)
* 80% love it, 20% hate it
* much less freedom, very opinionated
* can override small areas
* some situations would benefit from freedom


SLIDE- (37signals)

* opinionated at a product level
* enforce opinion as domain experts for product domains
* v. little freedom wrt interaction w/ the software
* reason given emphasises potential lib pat drawbacks
* only so many hours in the day
* would more freedom help sell?



SLIDE- (How can we help users of our code and systems?)

* Recap:

1. Telegraph intent.
  * need to be clear what problem your class or method was built to solve
  * is this a hammer or screwdriver
  * vital to providing low-friction adoption
  * user can decide whether it can help *them* solve *their* problem.

2. Enforce domain expert opinion.
  * useful implementation of Hick's Law
    * time to make decision *proportional* to number of choices
  * 25 options for pension plan, 25 ways to use a class
  * provide guidance by way of reduced choices
  * as domain expert, find the 80% and implement
  * paternalism or opinionated code

3. Retain user freedoms.
  * not always 80/20 for squirrelly / generic problems
  * allow advanced users freedom
  * still enforce domain expert opinion in **default state**
  * custom option
  * in code => options hashes most common
  * libertarian paternalism or convention over configuration


* should not be realm of UX designers
* apply ideas from the real world to our objects

* all code intended for reuse requires choice
* impossible to present w/o influence, so influence well

* choose appropriate style for **context**
* hopefully make life better for users, colleagues, and the whole community

SLIDE- (title slide)

* thank you
