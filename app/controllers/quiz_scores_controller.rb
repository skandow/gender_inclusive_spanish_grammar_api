class QuizScoresController < ApplicationController
    def create
        quiz_score = QuizScore.create(quiz_score_params)
        if quiz_score.valid?
            render json: {user: UserSerializer.new(current_user)}
        else 
            render json: {error: 'failed to save quiz score'}, status: :not_acceptable
        end 
    end

    def update
        quiz_score = QuizScore.find(params[:id])
        quiz_score.update(quiz_score_params)
        if quiz_score.valid?
            render json: {user: UserSerializer.new(current_user)}
        else 
            render json: {error: 'failed to save quiz score'}, status: :not_acceptable
        end 
    end 

    private

    def quiz_score_params 
        params.require(:quiz_score).permit(:quiz, :score, :percentage, :user_id)
    end 
end
