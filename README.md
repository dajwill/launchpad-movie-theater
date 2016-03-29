# check-in-service

<!-- :bow: Please put your auspicious [Travis status button](http://docs.travis-ci.com/user/status-images/) here :bow: -->

1. [Overview](#overview)
2. [Models](#models)
3. [Manage Movies](#manage-movies)
4. [Improvements](#improvements)

### Overview

For the coding challenge I tried to focus on user experience and attempted to it as easy as possible for a customer to select a movie, showtime and purchase a ticket. I wanted to make it as realistic as possible by pulling info movies currently in theater by making a HTTP request to an open-source movie API.

The landing page of the application is the most important to the user. This page displays the list of active theaters. Displaying info on the movie as well as the available times, these time display the number of remaining seats on hover. If a showing is sold out, that showing would render a red button that displays a 'Sold out' message on hover and doesn't render a purchase tickets button By selecting a time, the option to buy a ticket is presented, which in turn opens a modal form to purchase tickets. The form makes use of client side validations to prompt a user for expected inputs.



### Models

The application is broken down into 5 associated models. Movie, Theater, MovieTheaters (join table), Showing (belongs to Theater) and Ticket (belongs to Showing). Ticket also holds all of the User information including email and payment info.

### Manage Movies

Managing the movies playing is handled by editing Movie and Theaters.

Movies can be added and deleted from the movies controller which pulls Movies currently in theater from the Movie Database.

Theaters can be created in the Theater controller, but for a theater to display as active it must a have an associated movie. Additionally, to allow users to buy tickets there must be at least one created showtime.

### Improvements

This application is by no means perfect. Here some of the improvements that should be made

Times:

Showing times should be managed better. First, new show times should be restricted to future times. Second, duplicate show times for a individual theater should be restricted. Three, past showtimes should not be display on the now playing page.

Movies:

Movies could use some more information. The API I am pulling movies from doesn't have information on rating, but I could allow manual input for ratings. These ratings should also render some age checks.
