if ENV['RAILS_ENV']
  require 'rubygems'
  require 'hirb'
  require 'active_record'
  Hirb.enable
  ActiveRecord::Base.logger = Logger.new(STDOUT)
end
