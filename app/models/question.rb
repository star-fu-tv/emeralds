class Question < ActiveRecord::Base
	private
    def question_params
      params.require(:questions).permit(:question_text, :correct_a, :incorrect_a, :incorrect_b, :incorrect_c)
    end
end
