class QuestionsController < ApplicationController

  def ask
  end

  def answer

    # @replies = ['Great!', 'Silly question, get dressed and go to work!', "I don't care, get dressed and go to work!"]
    # puts params
    # if params[:question]
    #   @replies = @replies.select{ |reply|
    #     reply.includes(params[:question])
    #   }
    # end

# STRAIGHT FORWARD WAY

    if params[:question] == 'I am going to work'
      @answer = 'Great'
    elsif params[:question] == 'I am going to work!'
      @answer = 'Great! Love the motivation'
    elsif params[:question].include? "?"
    # elsif params[:question][-1] == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I don\'t care, get dressed and go to work!'
    end
  end
end
