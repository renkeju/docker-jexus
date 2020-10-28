# Jexus in docker

## Version Info:

- Jexus/6.2.20.1022 Linux
- Mono/6.8.0.123-x86_64, Build: 2020.09.04
- Alpine/latest

## Usage:

1. Get the image with command:

  ```sh
  docker pull renkeju/jexus:latest
  ```

2. Prepare the directors for volumes:

  ```sh
  mkdir -p "$(pwd)/jexus/{conf,log,www}"
  ```

3. Copy your website config file to `$(pwd)/jexus/conf` folder, Copy your websites to `$(pwd)/jexus/www` folder

4. Run the image with command:

  ```sh
  docker run \
      --detach \
      --name jexus \
      --restart unless-stopped \
      --publish 9999:80 \
      --volume $(pwd)/jexus/www:/var/www \
      --volume $(pwd)/jexus/conf:/usr/jexus/siteconf \
      --volume $(pwd)/jexus/log:/usr/jexus/log \
      renkeju/jexus:latest
  ```

5. Then browse [http://127.0.0.1:9999/info](http://127.0.0.1:9999/info) with your faverite borwser, see what happens.

> You can change the port 9999 as your like.
