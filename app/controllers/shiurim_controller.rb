# frozen_string_literal: true

class ShiurimController < ApplicationController
  def index
    @shiurim = ['Daf Yomi', 'Tanach Yomi', 'Rambam Yomi']
  end
end
