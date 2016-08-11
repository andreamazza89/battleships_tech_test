# Domain modelling

This document collects all the initial design considerations in building the
application.

## Game Play

This is how I envisage a game to take place. The Game class will be responsible for the follwing:

- Start game --> initialise players with a name/board/ships.
- Arrange boards --> player 1 selects a location for each of their ships, then player 2 does the same
- Play one turn --> player x is shown theirs and the opponents board, they attack, the outcome is announced (opponent's board is updated and checked for game over).
- Repeat the above until a winner is declared. 

## The Board

This will be a 10x10 by default as per the classic game (see [wikipedia](https://en.wikipedia.org/wiki/Battleship_(game))).

It will be responsible for the ships placement. It will also keep a record of coordinates that the opponent has tried hitting.
