class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @ask = params[:question]
    if @ask == 'I am going to work'
      @coach = 'Great!'
    elsif @ask.to_s.include? '?'
      @coach = 'Silly question, get dressed and go to work!'
    else
      @coach = 'I don\'t care, get dressed and go to work!'
    end
  end
end
