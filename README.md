# README

# Aufgabe a

## Session Stealing

devise - cookie
name: _kanban_session
wert: cVk2YzFIcmVKWmtramxNNWhlbDVDUEJMNisraFNjbDVjOC9WUWdjcllONFpua2R2WGIwczZORVVma3Zxa0tMV2ljSGMyQ3g0YnlwVjE1TDNTNDBTOVB5WXJnQVByNHFVQzgyZURKc3VPaDdzcVVFT3I1cUUxMmNFYzQyL2pyak1QZzlnVXhFWmFPRVZ6VXpiQ09pVnhBbkkrUGhlUG85WGxLZ05FYXAzM1AwN2FvRGlmdVdsSE5JSUIrTDJXSjNJVVI2RjBaTjdIajh4V3ZacmYzL2Q0bUh6aU13ektXck1nZTVxQ0dyS0ZYVHpNM0hyemgyalU0bVNudTI1UU9SVHJvQ3UzSTh3OGU2cmFwelAwY21iZ2YyU2RTYks2RzdjdGQ0bTJBYTZ5Z0VuNE9LWEtlVmQ5SjlhOFYrZnlTeDktLWlGTG5YZUJ0QmtvME1QdHJRWkN1Smc9PQ%3D%3D--bb8f12987d3920811b4d7c662f9ee807e9f7d8d9

a) wenn man den Wert ersetzt, ist man eingeloggt

basic authentication - curl

b) hat nicht funktioniert, hätte aber funktionieren sollen

curl -v --cookie "_kanban_session=enp6NngvQ3ZYT1BFa1NqWmFCWkhXdnFmMm5JV3kweXN1WDA4Slo1LzIvbHRMcG1vNVFFUVhOY2RobXN5SG81blU1TWE1WFdUL1k4VmFQaXJCWUFvZXBwaHVldjNuRVNTZmNFMmFCbERhTFlNeUVXQnZnWVQ5NGVYVVZLcUxqSkZCY21rbFlWSWtnQWtPTmNwcy9LWTVaczNxRG1JUjFCQkh4MHlRZmpSTnJRPS0tS0RqdFFwM2lpbC85NUk5emJER0lTdz09; 
path=/; HttpOnly" 
https://kanban-2.herokuapp.com/

This is an example app to learn about different ways to implement
Logins in Rails.  See [Rails Authentication](https://backend-development.github.io/rails_authentication.html)
in backend-development.github.io.

This repository contains 4 branches with 4 different implementations.
See the demo apps to get an overview:

* [Demo with No Login](https://kanban-1.herokuapp.com/) the basic app with no login
* [Demo with Basic Authentication](https://kanban-2.herokuapp.com/) using only built in Rails 5 features
* [Demo with Devise](https://kanban-3.herokuapp.com/) gives you password reminders, confirmation, and so on
* [Demo with Omniauth](https://kanban-4.herokuapp.com/) enables login with Google, Facebook and many other providers


The example app implements a simple kanban board, and looks like this:

![Screenshot of the Demo App](https://backend-development.github.io/images/screenshot-kanban.png)
