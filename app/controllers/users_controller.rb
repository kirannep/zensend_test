class UsersController < ApplicationController

    def hello
    @users = User.all
    end

      
    
      # GET /users/1
      # GET /users/1.json
      def show
      end
    
      # GET /users/new
      def new
         @user = User.new
      end
    
      # GET /users/1/edit
      def edit
      end
    
      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)
        respond_to do |format|
          if @user.save
            format.html { redirect_to hello_path, notice: 'User was successfully created.' }
            format.json { render :show, status: :created, location: @user }
            # Api.sms_request(user_params)
    
          else
            format.html { render :new }
            format.json { render json: @user.errors, status: :unprocessable_entity }
          end
        end
      end

      def user_params
        params.permit(:phonenum)
      end

end
