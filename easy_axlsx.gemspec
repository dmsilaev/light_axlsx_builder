# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'easy_axlsx/version'

Gem::Specification.new do |spec|
  spec.name          = 'easy_axlsx'
  spec.version       = EasyAxlsx::VERSION
  spec.authors       = ['Dmitry Silaev']
  spec.email         = ['dmsilaev@yandex.ru']
  spec.summary       = 'Generate axlsx object of an any class'
  spec.description   = 'Generate axlsx object of an any class. After you can generate xlsx file, or change axslx object.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(/^bin\//) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(/^(test|spec|features)\//)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_dependency 'axlsx', '~> 2.0'
end
