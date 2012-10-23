# 🔥 Thrash

Randomly write to many, many files. Inspired by desperation.

```ruby

thrasher = Thrash.new

10_000.times do |x|
  thrasher["file-#{x}"].write("text\n")
end

thrasher.finalize
```

## Copyright

Copyright (c) 2012 Austin G. Davis-Richardson. See LICENSE.txt for
further details.
