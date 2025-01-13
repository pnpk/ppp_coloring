# ppp_coloring

![image](https://github.com/user-attachments/assets/92cd0d2a-3bd3-4ecd-89d8-01d8028105bd)

## Overview

With the `ppp` method, you can add color to console output.

Are you frustrated when Rails logs appear in the console without colors during debugging? The `ppp_coloring` gem resolves this issue.

## Installation

```
gem 'ppp_coloring', '~> 0.1.3'
```

## Usage with Rails

If you want to use it as easily as the `p` method, register it in the initializers.

Create a file named `ppp_initializer.rb` in `api/config/initializers` and register it as follows:

```ruby
def ppp(*args)
  PppColoring.ppp(*args)
end
```

If you want to use the output of `ppp` only during debugging, call it like this:

```ruby
def ppp(*args)
  PppColoring.ppp(*args) if Rails.env.development?
end
```

## How to Use

The second argument is optional. (If omitted, it defaults to `:info`.)

```ruby
ppp "test", :info
ppp "test", :warn
ppp "test", :error
ppp "test", :success
```
