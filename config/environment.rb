ENV["RAILS_ENV"] ||= "development"
ENV["SINATRA_ENV"] ||= "development"

require "bundler/setup"
require "sinatra/activerecord"
require 'require_all'
require 'pry'

Bundler.require
binding.pry

require_all 'app/models'

connection_details = YAML::load(File.open('config/database.yml'))[ENV["RAILS_ENV"]]

ActiveRecord::Base.establish_connection(connection_details)
