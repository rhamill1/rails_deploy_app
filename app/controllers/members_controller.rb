class MembersController < ApplicationController

  def index
    @members = Member.all
    @member = Member.new
  end

  def create
    @member = Member.create(member_params)
    redirect_to root_path
  end


  private

  def member_params
    params.require(:member).permit(:name, :avatar)
  end

end
