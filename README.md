This project was bootstrapped with [vite](https://github.com/vitejs/vite).


### `Available Scripts for`
<ul>
    <li>build a docker image with a node and nginx</li>
</ul>

<h3>Step 1:</h3> Build application

### `yarn run build`

<h3>Step 2:</h3> Build docker image through Dockerfile

### `docker build . -t note-app-nginx`

Dokcer file steps <br />
    # `Download a node image` <br />
    # `Donwload a nginx image`

<h3>Step 3:</h3> Build docker image through Dockerfile

### `docker run --name nginx-server1 -p 8080:80 note-app-nginx`

<h3>Step 4:</h3> Enter into container and make a /app directory into root folder

### `mkdir /app`

<h3>Step 5:<h3> Go to the project folder directory and copy /dist folder into container /app folder using below command.

### `docker cp $(pwd)/dist/ <container_id or container_name>:/app`

<h3>Step 6:</h3> Then Copy all the file of /app/dist folder into /usr/share/nginx/html file

### `cp -r /app/dist/* /usr/share/nginx/html/`

<h3>Step 7:</h3> Run the application at localhost:8080 in browser.



