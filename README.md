EasyAxlsx
======

[![Build Status](https://secure.travis-ci.org/dmsilaev/light_axlsx_builder.png?branch=master)][travis]
[![Dependency Status](https://gemnasium.com/dmsilaev/light_axlsx_builder.png)][gemnasium]
[![Code Climate](https://codeclimate.com/github/dmsilaev/light_axlsx_builder.png)][codeclimate]
[![Coverage Status](https://coveralls.io/repos/dmsilaev/light_axlsx_builder/badge.png?branch=master)][coveralls]

[travis]: https://travis-ci.org/dmsilaev/light_axlsx_builder
[gemnasium]: https://gemnasium.com/dmsilaev/light_axlsx_builder
[codeclimate]: https://codeclimate.com/github/dmsilaev/light_axlsx_builder
[coveralls]: https://coveralls.io/r/dmsilaev/light_axlsx_builder

This is gem lets you generate axlsx object of an any class. Very easy.
TODO: Description readme.

Installation
------------

``` terminal
$ gem install easy_axlsx
```

or in your **Gemfile**

``` ruby
gem 'easy_axlsx'
```

Examples
--------

``` ruby
class User
  include EasyAxlsx::ClassConfig
  attr_reader :id, :name, :last_name

  def initialize(args = {})
    @id = args.fetch(:id)
    @name = args.fetch(:name)
    @last_name = args.fetch(:last_name)
  end

  def second_name
  end

  as_easy_axlsx_fields :id, :name, :last_name # this is method names,which will be use as row info
  as_easy_axlsx_widths 1.5, 2.5, 3.5 # this is with column as pt
end

@row_items = (1...3).map { |i| User.new(id: i, name: "Name#{i}", last_name: "Last Name #{i}") } # create your object array

# and after build axlsx object
@axlsx_object = EasyAxlsx::Builder.build @row_items

# after you can save this axlsx object as xlsx file
@axlsx_object.package.serialize('simple.xlsx')
```

This code generate next xlsx file

![Screen 1](http://habrastorage.org/files/986/d6a/281/986d6a281706441bb9e072b5eaf69b96.png)

