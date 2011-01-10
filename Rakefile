# coding: UTF-8
require 'rubygems'
require 'rake'
require 'echoe'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), 'lib'))
require 'kfold'

Echoe.new('kfold', Kfold::VERSION) do |p|
  p.description    = "Create K-fold splits from data files and assist in training and testing (useful for cross-validation in supervised machine learning)"
  p.url            = "http://github.com/crishoj/kfold"
  p.author         = "Christian Rishøj"
  p.email          = "christian@rishoj.net"
  p.ignore_pattern = ["tmp/**/*", "script/*", "nbproject/**/*"]
  p.runtime_dependencies = ["commander"]
  p.development_dependencies = []
end
