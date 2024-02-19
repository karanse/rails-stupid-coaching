class QuestionsController < ApplicationController

  def ask
    @question = params[:question] if params[:question]
    @question
  end

  def answer
    @question = ask
    if @question == "I am going to work".downcase
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    @answer
  end
end
