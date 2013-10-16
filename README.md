# L12n

**l12n** creates locations data for you. It only for Turkey.

## Requirements

Before generating your application, you will need:

* Ruby ~> 2.0
* Rails ~> 4.0

## Usage

First you should install the l12n gem than you can use it for creating new gem.

```ruby
gem install l12n
gem 'l12n'
```

Run rake

```ruby
rake l12n:install:migrations
rake db:migrate
```

Add the following line into config/routes.rb

```ruby
mount L12n::Engine => '/locations'
```

### Cities

#### Get
```
/locations/cities
```

#### Parameters
* `callback` Not required

#### Response
```json
[
    {
        id: 1,
        name: "Adana"
    },
    {
        id: 2,
        name: "Adıyaman"
    }
]
```

### Districts

#### Get
```
/locations/district
```

#### Parameters

* `city_id` Required
* callback` Not required

#### Response
```json
[
    {
        id: 454,
        name: "Sultanbeyli"
    },
    {
        id: 453,
        name: "Şile"
    }
]
```

## Bugs and  Feedback

If you discover any bugs or want to drop a line, feel free to create an issue on GitHub.

http://github.com/kebab-project/l12n/issues

## Contributing

L12n uses [rDoc](http://rubydoc.info/gems/l12n) and [SemVer](http://semver.org/), and takes it seriously.

Once you've made your great commits:

1. Fork Template
2. Create a topic branch - `git checkout -b my_branch`
3. Push to your branch - `git push origin my_branch`
4. Create a Pull Request from your branch
5. That's it!

## Credits

- L12n is maintained and funded by [lab2023 - internet technologies](http://lab2023.com/)
- Thank you to all the [contributors!](https://github.com/kebab-project/l12n/graphs/contributors)
- The names and logos for lab2023 are trademarks of lab2023, inc.

## License

Copyright 2012 lab2023 – internet technologies