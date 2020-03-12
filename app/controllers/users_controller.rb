class UsersController < ApplicationController

    def sign_in
        user = User.find_by(email: params[:email])
        if user && user.authenticate(params[:password])
            render json: {user: user, token: generate_token({id: user.id}) }
        else
            render json: {message: 'invalid details' }
        end
    end

    def validate
        user = get_user
        if user 
            render json: {user: user, token: generate_token({id: user.id}) }
        else
            render json: {message: 'You are not authorized'}
        end
    end

end
