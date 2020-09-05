class PagesController < ApplicationController
  def index
    @heading = 'Станки'
    #@categories=Category.all
  end
  def machine
    @machines=Machine.all
  end
end
