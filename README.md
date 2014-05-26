# Gyazo::Server

Gyazo Server

Inspire the https://github.com/send/gyazo-sinatra

## Requirements

 - FFmpeg
 - GraphicsMagick

## Installation

Add this line to your application's github:

    git clone https://github.com/naoto/gyazo-server.git

And then Setup:

    $ bundle install --path vendor/bundle


And the Run

    $ bundle exec ruby bin/gyazo-server

## Usage

Running Option

 - `-p`, `--port=` Service binding port
 - `-b`, `--bind-address=` Service binding address
 - `-h`, `--host=` Gyazo Server access domain

## Example

 ```shell
 $bundle exec ruby bin/gyazo-server -p 8888 -b 0.0.0.0 -h example.com:80
 ```

## Contributing

1. Fork it ( http://github.com/naoto/gyazo-server/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
