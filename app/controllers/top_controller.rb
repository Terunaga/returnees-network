class TopController < ApplicationController

  def index
    @questions = Question.order('created_at DESC')
  end
end