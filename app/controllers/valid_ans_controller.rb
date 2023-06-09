class ValidAnsController < ApplicationController

  def answer
    @ans = "I don't care, get dressed and go to work!"
    right_ans = "I am going to work"
    ans = params[:question]
    if ans.casecmp?(right_ans)
      @ans = "Great !"
    end
    if ans.end_with?('?')
      @ans = "Silly question, get dressed and go to work!"
    end
    @ans
  end
end
