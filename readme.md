# 🔥 Thrash

Randomly write to many, many files. Inspired by desperation.

```ruby

thrasher = Thrash.new

1_000_000.times do |x|
  thrasher.add "thrash-#{(0..10000).to_a.sample}",  ">:|\n"
end

thrasher.finalize
```

## Copyright

Copyright (c) 2012 Austin G. Davis-Richardson. See LICENSE.txt for
further details.
