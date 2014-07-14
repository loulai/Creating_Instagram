Lougram
===
Lougram is a two week project that replicates the basic functionality of Instagram. The primary goal of this project is not to clone Instagram with exact precision, but rather to emerge with a greater command of Rails, Ruby, Databases and a handful of select technologies. 

This is my third project using Rails. 

Testing
---
This project is test driven. Integration testing is done with Cucumber and unit testing is done with Rspec.

Heroku
---
This application is deployed on Heroku. Click [here] to play with the better Instagram (I joke, I joke).

Timeline
---

This is what my Lougram looked like before Bootstrap:
![](README_images/img/unstyled_instagram.png)


After a little Bootstrap magic (panels, panel lists, jumbrotron, columns, column offsets etc.):
![](README_images/img/progression_one.png)


More Bootstrap (Larger jumborton, background color, navbar, photo centering, font coloring) and features (likes, comments, deleting comments, hashtags, modals and more).
![](README_images/img/progression_two.png)

Features
---
Ideally, Lougram will have all the features of the real Instagram. However, time and my current ability are limitations that filter what I can do from what I want to do.

So I drew up these tables to keep track of current features versus wish-list features. As I spend more time on this project and get more proficient at Rails, I will be updating this section so it's concurrent with my application.


Signing in: Current Features             | Wish-List Features
:----------------:                       | :-----------------:
Must sign in with email                  | Signing in with a required, unique username
Must sign in with password               |

Comments: Current Features               | Wish-List Features
:----------------:                       | :-----------------:
Anyone can comment on a photo            | Nicer looking input section
OK looking input section                 | Instant change (websockets)
Can be deleted                           |

Hashtags: Current Features               | Wish-List Features
:----------------:                       |  :-----------------:
Display photos by hashtags               |
Displays a changing header on 'show'     |

Likes: Current Features                  | Wish-List Features
:----------------:                       | :-----------------:
A user can like a photo                  | A user can like a photo only once
Updates when clicked without page refresh| A user can unlike a photo
                                         | 'Like' button darkens upon liking

Technologies Used
---
* Cucumber
* Rspec
* Ruby
* Rails
* Paperclip
* Bootstrap
* Websockets
* Heroku


[here]:http://lougram.herokuapp.com/
