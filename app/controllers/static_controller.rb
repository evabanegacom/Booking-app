# frozen_string_literal: true

class StaticController < ApplicationController
  def index
    render 'hello there'
  end
end
