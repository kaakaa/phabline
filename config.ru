require 'rubygems'
require 'bundler/setup'

$LOAD_PATH.unshift(::File.expand_path('lib', ::File.dirname(__FILE__)))

require 'phabline/app'

run Phabline::App
