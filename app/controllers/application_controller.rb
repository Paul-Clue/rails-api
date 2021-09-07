# rubocop:disable all
class ApplicationController < ActionController::Base
  include Response
  include ExceptionHandler
end
