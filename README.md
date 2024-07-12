
# Qb

Jump and dodge your way through 20 fun and challenging levels in order to complete your Qb journey. Watch out for enemy Qbs as they try to stop you from reaching the goal.


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
