# ppp_coloring

![image](https://github.com/user-attachments/assets/92cd0d2a-3bd3-4ecd-89d8-01d8028105bd)

## Overview

With the `ppp` method, you can add color to console output.

Are you ever frustrated when the Rails log output in your console isn't colored for debugging purposes?
`ppp_coloring` solves this problem.

It can also be conveniently used when running in Docker containers or when checking Sidekiq logs.

## Installation Method

```ruby
gem 'ppp_coloring', '~> 0.1.3'
```

## Usage in Rails

If you want to use it as easily as the `p` method, register it in initializers.

Create a file like `ppp_initializer.rb` in `api/config/initializers` and register as follows:

```ruby
def ppp(*args)
  PppColoring.ppp(*args)
end
```

If you want to use the `ppp` output only during debugging, it is good to call it as follows:

```ruby
def ppp(*args)
  PppColoring.ppp(*args) if Rails.env.development?
end
```

## Usage

The second argument is optional. (It defaults to `:info` if omitted)

```ruby
ppp "test", :info
ppp "test", :warn
ppp "test", :error
ppp "test", :success
```

## What is happening internally?

Internally, the `ppp` method outputs to the console using the `puts` method.
It is very simple.
