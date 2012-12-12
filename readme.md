# 🔥 Thrash

Randomly write to many, many files. Inspired by desperation.

```ruby

thrasher = Thrash.new

random_numbers = (0..10_000).to_a

1_000_000.times do |x|
  filename = "thrash-#{random_numbers.sample}"
  thrasher.write(filename, "data")
end

thrasher.finalize
```

## Copyright

Copyright (c) 2012 Austin G. Davis-Richardson. See LICENSE.txt for
further details.
