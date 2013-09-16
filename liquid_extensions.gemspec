#!/usr/bin/env gem build
# encoding: utf-8

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'liquid_extensions/version'

Gem::Specification.new do |s|
  s.name        = 'liquid_extensions'
  s.version     = LiquidExtensions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Cédric Bousmanne, Gil Vandendriessche']
  s.email       = ['info@2houses.com']
  s.homepage    = 'http://2houses.com'
  s.summary     = '2houses Liquid Extensions'
  s.description = 'Extra liquid tags, filters for 2houses'

  s.required_rubygems_version = '>= 1.3.6'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'mocha'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'activesupport', '~> 3'

  s.add_dependency 'locomotivecms_solid', '~> 0.2.1'

  s.require_path = 'lib'

  s.files        = Dir.glob('lib/**/*')
end

