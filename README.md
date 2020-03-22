### [Makers Academy](http://www.makersacademy.com) - Week 4 Project

Battle challenge - original README [here](https://github.com/makersacademy/course/blob/master/intro_to_the_web/README.md)
––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––

[Outline](#Outline) | [Specifications](#Specifications) | [User Stories](#User_Stories) | [Installation Instructions](#Installation_Instructions) | [Tech stack](#Tech_stack) | [Future work](#Future_work)

## <a name="Outline">Outline</a>

Build web app!

## <a name="Specifications">Specifications</a>

Build a web app that mimics a pokemon battle, and allows two players to play against eachother.

## <a name="User_Stories">User Stories</a>

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## <a name="Installation_Instructions">Installation Instructions</a>

### Prerequisite setup:
- Clone this repo to your local machine and cd into it
- Run the command `gem install bundle` (if you don't have bundler already)
- Install the project's dependencies with `bundle`

### Running the site
- Run the server with the command `rackup`
- Visit the site at http://localhost:9292

### Testing
- Run the command `rspec`

## <a name="Tech_stack">Tech stack</a>

Front-end:
- HTML & CSS

Back-end:
- Ruby
- Sinatra

Testing:
- RSpec
- Capybara

## <a name="Future_work">Future work</a>

On a revisit of the project, I would like to build in functionality that would allow multiple (>2) players at a time.