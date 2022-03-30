# frozen_string_literal: true

class ShiurimController < ApplicationController
  def index
    @shiurim = Shiur.order(:importance).all
  end

  def show
    @shiur = Shiur.find(params[:id])
  end
end
