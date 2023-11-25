This project was bootstrapped with [vite](https://github.com/vitejs/vite).


### `Available Scripts for`
<ul>
    <li>locally run</li>
    <li>manually dockerize and</li>
    <li>dockerize with docker-compose file</li>
</ul>

<h2>1. Locally Run The Project</h2>
In the project directory, you can run the following two command sequensially for locally run the project:

### `1. yarn`

### `2. yarn run dev`

Runs the app in the development mode.<br />
Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

The page will reload if you make edits.<br />

<h2>2. Dockerize with nginx manually</h2>

### Build application
 `yarn run build` <br />
<b>NOTE: a /dist folder will be created</b>

### Docker build image
 `docker build -t note-app-nginx` 

### Docker run container
 `docker run -it -p 3000:3000 note-app-nginx`

Runs the app. Open [http://localhost:3000](http://localhost:3000) to view it in the browser.

<h2>3. Dockerize with docker compose file</h2>

### Build application
`yarn run build`  

### Docker compose run container
`docker-compose up` 

### Docker compose run container in detached mode
`docker-compose up -d`

### Docker compose check running container status
`docker ps`

Runs the app. Open [http://localhost:8080](http://localhost:8080) to view it in the browser.