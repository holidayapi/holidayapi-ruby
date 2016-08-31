# ruby-holidayapi
Official Ruby library for Holiday API

## Installation

```shell
gem install ruby-holidayapi
```

## Usage

```ruby
require 'ruby-holidayapi'

var HolidayAPI = require('node-holidayapi');
var hapi = new HolidayAPI('_YOUR_API_KEY').v1;

hapi = Holiday::V1('_YOUR_API_KEY_');

parameters = {
  // Required
  'country' => 'US',
  'year'    => 2016,
  // Optional
  // 'month'    => 7,
  // 'day'      => 4,
  // 'previous' => true,
  // 'upcoming' => true,
  // 'public'   => true,
  // 'pretty'   => true,
}

response = hapi.holiday(parameters)
```
