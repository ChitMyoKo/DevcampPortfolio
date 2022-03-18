class ApplicationController < ActionController::Base
    include SetSource
    include DeviseWhiteList
    include CurrentUserConcern
    include DefaultPageConcern
end
