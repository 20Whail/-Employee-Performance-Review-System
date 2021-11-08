# class HomeController < ApplicationController
#   def index
#
#     if user_signed_in?
#       if current_user.role == "HR"
#         @users = User.where.not(role:"HR")
#       elsif current_user.role == "Employee"
#       @users = [current_user]
#       else current_user.role == "Manager"
#
#       @users = User.where(assigned_manager: current_user.id)
#
#       end
#     end
#   end
#
#   def about
#
#   end
#
#   def show
#     @user = User.find(params[:id])
#   end
#
#
#
#   def new
#     @user = User.new
#     @managers = User.where(role: "Manager")
#   end
#
#   def create
#     @user = User.new(user_params)
#     if @user.save
#       redirect_to root_path , flash: { success: "Succesfully created the User"}
#     else
#       render :new
#     end
#   end
#
#
#   def edit
#     @user = User.find(params[:id])
#     @managers = User.where(role: "Manager")
#
#   end
#
#
#   def update
#
#     @user = User.find(params[:id])
#
#     if @user.update(user_params)
#       redirect_to root_path , flash: { success: "Updated Sucessfully!" }
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @user = User.find(params[:id])
#     if @user.delete
#       flash = {notice: "Sucessfully friend deleted!"}
#     else
#       flash = {error: "Something went wrong!"}
#     end
#     redirect_to root_path , flash: flash
#   end
#
#   private
#     def user_params
#       params[:user][:role] = params[:user][:role].to_i if params.has_key?(:user)
#       params.require(:user).permit(:first_name, :last_name, :phone,:password,:password_confirmation,
#                                      :email, :role, :joining_date, :assigned_manager)
#     end
# end