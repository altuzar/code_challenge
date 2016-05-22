Code Challenge
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

Toy Robot Simulator
================

This application was for the Toy Robot Simulator code challenge.

Can also be seen at Heroku as a live demo. https://code-challenge-rea.herokuapp.com/

Screenshots
-----------

Here is a screenshot of the lovely home.

![Home Screenshot](https://cloud.githubusercontent.com/assets/122941/15452144/cddabf96-1fa9-11e6-878a-f11757b659bf.png)

And some screenshots of the Toy Robot Testers with the input of the toy robot inputs, or Exercise A, B and C.

![Exercise A Screenshot](https://cloud.githubusercontent.com/assets/122941/15452145/cde5e11e-1fa9-11e6-86f2-f2d745e642d3.png)
![Exercise B Screenshot](https://cloud.githubusercontent.com/assets/122941/15452146/cded4e22-1fa9-11e6-8d19-75da310c2203.png)
![Exercise C Screenshot](https://cloud.githubusercontent.com/assets/122941/15452147/cdf09906-1fa9-11e6-89f0-c42b629ba7d1.png)

And a screenshot of the Capybara Rspec of the app.

![Tests Screenshot](https://cloud.githubusercontent.com/assets/122941/15452295/662927a6-1faf-11e6-8dab-b78faa1b223a.png)

Installation
-------------

This application requires:

- Ruby 2.2.0
- Rails 4.2.0

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

But to install this app, git clone the repo, move to the catawiki directory and run:

```
bundle
rails s
```

Then go to http://localhost:3000/ and marvel with the magic of Toy Robot.

To run the tests, go to the directory and run:

```
rake
```

Toy Robot Simulator Specs
================

Description
-----------

- The application is a simulation of a toy robot moving on a square tabletop,
  of dimensions 5 units x 5 units.
- There are no other obstructions on the table surface.
- The robot is free to roam around the surface of the table, but must be
  prevented from falling to destruction. Any movement that would result in the
  robot falling from the table must be prevented, however further valid
  movement commands must still be allowed.

Create an application that can read in commands of the following form:

    PLACE X,Y,F
    MOVE
    LEFT
    RIGHT
    REPORT

- PLACE will put the toy robot on the table in position X,Y and facing NORTH,
  SOUTH, EAST or WEST.
- The origin (0,0) can be considered to be the SOUTH WEST most corner.
- The first valid command to the robot is a PLACE command, after that, any
  sequence of commands may be issued, in any order, including another PLACE
  command. The application should discard all commands in the sequence until
  a valid PLACE command has been executed.
- MOVE will move the toy robot one unit forward in the direction it is
  currently facing.
- LEFT and RIGHT will rotate the robot 90 degrees in the specified direction
  without changing the position of the robot.
- REPORT will announce the X,Y and F of the robot. This can be in any form,
  but standard output is sufficient.

- A robot that is not on the table can choose the ignore the MOVE, LEFT, RIGHT
  and REPORT commands.
- Input can be from a file, or from standard input, as the developer chooses.
- Provide test data to exercise the application.

Constraints
-----------

- The toy robot must not fall off the table during movement. This also
  includes the initial placement of the toy robot.
- Any move that would cause the robot to fall must be ignored.

Example Input and Output
------------------------

### Example a

    PLACE 0,0,NORTH
    MOVE
    REPORT

Expected output:

    0,1,NORTH

### Example b

    PLACE 0,0,NORTH
    LEFT
    REPORT

Expected output:

    0,0,WEST

### Example c

    PLACE 1,2,EAST
    MOVE
    MOVE
    LEFT
    MOVE
    REPORT

Expected output

    3,3,NORTH

Deliverables
------------

The Ruby, JavaScript or Java source files, the test data and any test code.

It is not required to provide any graphical output showing the movement of
the toy robot.
