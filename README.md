Retro
=====

A ruby HTTP server that allows users to create retrospective boards, and add
cards to it.

## How it works

- A ruby server with Sinatra
- CSS with Bulma
- Saves all data in memory
- Users give the boards name and list of columns and server assignes UUID to it
- When a user opens a board link if he doesn't have cookies with username in it
  the server redirect him to set his username
- The board has a form to create a new card

## Running the server

Run the server script, it'll install the needed dependencies
```
./server
```

## Guidelines

- No login needed
- No persistent data
- No Javascript
- Minimal dependencies
