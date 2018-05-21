require 'open-uri'
require 'json'

class GamesController < ApplicationController

  def new
    @letters = ("a".."z").to_a.shuffle[0,11].join
  end

  def score
    @letters = params[:letters]
    if (params[:longest].length > @letters.length)
      @answer = "This is not a correct word"
      raise
    end
  end
end
