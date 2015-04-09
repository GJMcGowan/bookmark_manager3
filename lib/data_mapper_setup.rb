env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/bookmark_manager_#{env}")
require_relative 'link'
require_relative 'tag'
require_relative 'user'
DataMapper.finalize