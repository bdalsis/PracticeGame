
# Qb

Qb is a 2D platformer created by Brick Dalsis. Play through 20 fun and challenging levels to complete the game. Developed in GameMakerStudio. Music also created by Brick Dalsis. 


## Code
### Rooms
- Each level is contained within a room
- Deaths and the timer are persistent through the room through the game controller object, so when testing rooms, a game controller object needs to be added to the room (delete once implemented into full game)
- Rooms are reset on death so that timings are consistent
### Player
- Controls its own movement
- Takes care of collision with walls/floors

## Roadmap

- Add controller support
- Fix particle errors on moving platforms
- Add more levels
- Add options menu during pause and also on main menu that contains controls, audio levels, etc.
