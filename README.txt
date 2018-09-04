
A drupal boilderplate based on Docker + docker And  [drupal-composer/drupal-project](https://github.com/drupal-composer/drupal-project "composer/drupal-project")

### Create ENV:
1. Copy env-example to .env (cp env-example .env).
2. Modify CONTAINER_NAME_WEB and ports in .env (if needed).

### Download Drupal (Installation)
1. Download latest drupal 8 into src dir - From root Dir - `/download.sh`
2. Remove install.sh
3. Copy to a new repo
4. Install from docker

### Run
From root Dir - `./build.sh`
