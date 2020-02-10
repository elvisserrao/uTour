# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    @places = Place.all
  end

  def terms; end

  def privacy; end
end
