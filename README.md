# Ruby Skeleton

A skeleton app for building a ruby project.

### Using this skeleton

Run the following to generate a new app, be sure to remove the git directory.

```sh
// Clone the repo
git clone --depth=1 git@github.com:pjskennedy/ruby-skeleton.git $app_path
// Remove the .git directory
rm -rf $app_path/.git
```

### Installation

#### Manually

1. Install ruby however you please (This uses ruby 2.5.1)
2. Install bundler
   ```sh
   $ gem install bundler
   ```
3. Install dependencies
   ```sh
   $ bundle install
   ```
4. Run Tests
   ```sh
   $ bundle exec rspec
   ```
5. Run the program
   ```sh
   $ bundle exec ruby main.rb
   ```

#### Via Docker
1. Install Docker however you please.
2. Build the testing image
   ```sh
   $ docker build -f Dockerfile.test -t $YOUR_APP_NAME-test
   ```
3. Run the image
   ```sh
   $ docker run --rm -t $YOUR_APP_NAME-test --name $YOUR_APP_NAM-test
   ```
4. Build the main image
   ```sh
   $ docker build -f Dockerfile -t $YOUR_APP_NAME
   ```
5. Run the image
   ```sh
   $ docker run --rm -t $YOUR_APP_NAME --name $YOUR_APP_NAME
   ```

### External Dependencies

This project has a docker-compose file for using external dependencies in development.

### Auto-formatting

This project uses [Rubocop]() for formatting code. To auto-format the code in this repo use rake:
```sh
$ bundle exec rake rubocop:auto_correct
```
