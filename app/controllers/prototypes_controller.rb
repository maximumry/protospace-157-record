class PrototypesController < ApplicationController
  before_action :authenticate_user!, expect: [:index, :show]
  
  def index
    @prototype = Prototype.all
  end

  def new
      @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  
  def prototype_params
    params.require(:prototype).permit(:proto_name, :catch_copy, :concept, :image).merge(user_id: current_user.id)
  end
end
