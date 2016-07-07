require 'rubygems'
require 'observr'

all_rb = Dir['*.rb'].join('|')
script = Observr::Script.new
script.watch( all_rb ) { |file| system("rake") }
controller = Observr::Controller.new(script, Observr.handler.new)
controller.run