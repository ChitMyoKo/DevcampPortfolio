class ApplicationController < ActionController::Base
    include SetSource
    include DeviseWhiteList
end
