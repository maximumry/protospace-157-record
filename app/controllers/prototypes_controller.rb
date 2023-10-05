class PrototypesController < ApplicationController
  def index
    @prototype = Prototype.all
  end
end
