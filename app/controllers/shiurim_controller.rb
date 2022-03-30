# frozen_string_literal: true

class ShiurimController < ApplicationController
  def index
    @shiurim = Shiur.order(:importance).all
  end

  def show
    @shiur = Shiur.find(params[:id])
  end

  def edit
    @shiur = Shiur.find params[:id]
  end

  def update
    shiur = Shiur.find params[:id]
    shiur.update shiur_params

    redirect_to shiur
  end

  def new
    @shiur = Shiur.new
  end

  def create
    shiur = Shiur.create shiur_params

    redirect_to shiur
  end

  private

  def shiur_params
    params.require(:shiur).permit(:name)
  end
end
