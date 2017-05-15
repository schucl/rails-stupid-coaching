class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer(@query)
  end

  private
  def coach_answer(query)
    if query.downcase == "i am going to work right now!"
      ""
    elsif query.end_with?("?")
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
