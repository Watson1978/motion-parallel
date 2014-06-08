# motion-parallel

motion-parallel provides parallel iterations for RubyMotion

## Installation

Add this line to your application's Gemfile:

    gem 'motion-parallel'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install motion-parallel

## Usage

### #p_times

```ruby
10.p_times do |i|
  i ** 2
end
```

### #p_each

```ruby
['foo', 'bar', 'baz'].p_each do |obj|
  "Hello #{obj}"
end
```

### #p_each_index

```ruby
['foo', 'bar', 'baz'].p_each_index do |index|
  puts index
end
```

### #p_each_with_index

```ruby
['foo', 'bar', 'baz'].p_each_index do |obj, index|
  puts "#{obj} at #{index}"
end
```

### #p_map

```ruby
['foo', 'bar', 'baz'].p_map do |obj|
  "Hello #{obj}"
end
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
