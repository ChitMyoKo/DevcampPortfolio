module CurrentUserConcern
    extend ActiveSupport::Concern
    def current_user
        super || OpenStruct.new(name: "Guest User",first_name: "Guest",last_name:"User",email:"cmk@gmail.com")
    end
end