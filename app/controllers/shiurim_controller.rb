# frozen_string_literal: true

class ShiurimController < ApplicationController
  def index
    @shiurim = Shiur
               .order(:importance)
               .where("importance < ?", 3)
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

  def destroy
    Shiur.find(params[:id]).destroy!

    redirect_to shiurim_url
  end

  private

  def shiur_params
    params.require(:shiur).permit(:name)
  end
end
