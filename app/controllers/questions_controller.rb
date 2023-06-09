# frozen_string_literal: true

# Question and answer logic
class QuestionsController < ApplicationController
  def ask; end

  def answer
    return unless params[:question]

    @question = params[:question]
    if @question == 'I am going to work' then @answer = 'Great!'
    elsif @question.include? '?' then @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
