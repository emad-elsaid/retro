Retro
=====

A ruby HTTP server that allows users to create retrospective boards, and add
cards to it.

### Light Mode
![Screenshot 2020-10-23 at 16 10 41](https://user-images.githubusercontent.com/6358632/97014285-6919e500-154a-11eb-9485-62892777ad28.png)

### Dark Mode
![Screenshot 2020-10-23 at 16 10 50](https://user-images.githubusercontent.com/6358632/97014329-76cf6a80-154a-11eb-8e22-75f425fbdf43.png)


## How it works

- A ruby server with Sinatra
- CSS with Bulma
- Saves all data in memory
- User can create board with name, max votes per user, columns names
- When the server needs the user to have identity it'll redirect him to set his username and assign uuid
- The board has a form to create a new card in each column
- Users can edit and delete boards
- Users can vote on cards
- Timer at the top is just an iframe that refresh every couple seconds and can be changed by the creator of the board from the edit page

## Running the server

Run the server script, it'll install the needed dependencies
```
bundle install
./server
```

Using Docker

```
docker build -t retro .
docker run -d -p 3000:3000 retro
```

Using Docker hub prebuilt image

```
docker run -d -p 3000:3000 emadelsaid/retro
```

## Kubernetes deployment

Mohammed Ragab created a kubernetes helm chart to deploy it on your cluster. The repository is available here

https://github.com/ragoob/retro-helm-charts

## Deploy to Heroku

You can deploy it directly to Heroku, it must be one process as it's in memory storage

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Guidelines

- No login needed
- No persistent data
- No Javascript
- Minimal dependencies
