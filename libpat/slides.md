!SLIDE smbullets
# Influencing Users #
Libertarian Paternalism in the Ruby Community
---------------------------------------------

+ **by Elliot Crosby-McCullough**
+ elliotcm.co.uk
+ elliot.cm@gmail.com
+ twitter.com/elliotcm
+ github.com/elliotcm

!SLIDE bullets

+ People make bad decisions.
+ It is impossible to present a choice without affecting the outcome.

!SLIDE
# 1 2 3 4 #

!SLIDE
# What does this have to do with code? #

!SLIDE bullets
# How can we help our users? #

1. Ensure clarity of construction.
2. Enforce domain expert opinion.
3. Retain user freedoms.

!SLIDE
# State of the union #
Case studies
------------

!SLIDE
# Rails #

!SLIDE
# HAML #

!SLIDE smaller

    @@@ Ruby
    !!!
    %html{ :xmlns => "http://www.w3.org/1999/xhtml", :lang => "en", 'xml:lang' => "en" }
      %head
        %title Project X
        %meta{'http-equiv' => "Content-Type", :content => "text/html; charset=iso-8859-1"}/
        %meta{'http-equiv' => "Content-Language", :content => "en-us"}/
        %link{:href => "/stylesheets/screen.css", :media => "screen", :rel => "stylesheet", :type => "text/css"}/
      %body
        #wrapper
          #header
            %h1
              %a{:href => '/'} Project X

            %ul.navigation
              %li
                %a{:href => '/stuff'} Section 1
              %li
                %a{:href => '/more_stuff'} Section 2
              %li
                %a{:href => '/other_stuff'} Section 3


          #content-and-sidebar= yield

!SLIDE
# 37Signals #

!SLIDE smbullets
# Influencing Users #
Libertarian Paternalism in the Ruby Community
---------------------------------------------

+ **by Elliot Crosby-McCullough**
+ elliotcm.co.uk
+ elliot.cm@gmail.com
+ twitter.com/elliotcm
+ github.com/elliotcm
