# ruby-holidayapi
Official Ruby library for Holiday API

## Installation

```shell
gem install ruby-holidayapi
```

## Usage

```ruby
require 'ruby-holidayapi'

hapi = Holiday::V1.new('_YOUR_API_KEY_')

parameters = {
  # Required
  'country' => 'US',
  'year'    => 2016,
  # Optional
  # 'month'    => 7,
  # 'day'      => 4,
  # 'previous' => true,
  # 'upcoming' => true,
  # 'public'   => true,
  # 'pretty'   => true,
}

response = hapi.holidays(parameters)
```
