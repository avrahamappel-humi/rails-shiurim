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
    shiur.update params.require(:shiur).permit(:name)

    redirect_to shiur
  end
end
