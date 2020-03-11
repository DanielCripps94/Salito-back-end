class UsersController < ApplicationController

    def sign_in
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {name: user.name }
        else
            render json: {message: 'invalid details' }
        end
    end

end
