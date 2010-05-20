* 2008, two economists
* Richard Thaler and Cass Sunstein
* wrote a book called Nudge
* put forth two key concepts:

1. People make bad decisions
  * this is supermarket while hungry
  * made in the heat of the moment
  * would not make with a clear head

2. **impossible** to present a choice without **influencing** the decision made
  * 1 2 3 4 choice
  * impossible to present w/o influence
  * small, medium, large, supersize?


* Following these two assertions
* claim is made that domain experts should **present** choices to
* encourage **heat-of-the-moment** to match **clear-headed**
* influence people to make the decision they wish they had made
* retain ultimate freedom of choice
* a technique Thaler and Sunstein dubbed "libertarian paternalism".


(What does this have to do with code?)

* Thaler and Sunstein macro-level
* concerned with health insurance, picking a meal at the canteen.
* doesn't go nearly far enough.


* traditionally lens of the interface
* but the choices we ask our users, consumers of *API* and colleagues *class* *method* goes much deeper
* not only checkboxes


* presenting choice via documentation, tests and external interfaces
* impossible to present w/o influence
* applies to external developers using site API or library DSL.
* applies to team-mates using classes and methods, just as much as the end users of any higher level system or application.


* Programming is the act of building tools
* NOT TOOLING
* fractal nature
* system- applications- modules- classes- methods; all solve problems at different scales.


* If developed with reuse in mind, how and whether to reuse is the choice of the user.


* Once we make this leap,
* all ideas from Thaler and Sunstein on how to improve user choice apply
* manifest as ways to improve code reuse


(How can we help users of our code and systems?)

1. Ensure clarity of construction.
  * need to be clear what problem your class or method was built to solve
  * is this a hammer or screwdriver
  * vital to providing low-friction adoption
  * user can decide whether it can help *them* solve *their* problem.
  * **more opaque** the interface, **less adoption**
  * HTMLParser.parse(html_string) vs WebReader w/ 17 public methods


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


(State of the union: Case studies)

* Rails
* 2.3
* uses **different bits** of these ideas at **different scales**
* enthusiastic about freedom at a method level
  * uses option hashses in ActiveRecord and view helpers
* more strongly opinionated at a framework level
  * ActiveRecord / ActionPack lock-in
* Rails 3 solving this
  * Merb merge
  * ActiveModel


* HAML
* Hampton Catlin
* opinionated at high level (markup)
* 80% love it, 20% hate it
* much less freedom, very opinionated
* can override small areas
* some situations would benefit from freedom


* 37Signals
* opinionated at a product level
* enforce opinion as domain experts for product domains
* v. little freedom wrt interaction w/ the software
* reason given emphasises potential lib pat drawbacks
* only so many hours in the day
* would more freedom help sell?


(conclusion)

* should not be realm of UX designers
* all code intended for reuse requires choice
* impossible to present w/o influence
* choose best style for **context**
* hopefully make life better for users, colleagues, and the whole community
* thankyou

