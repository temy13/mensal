# include Tweet

class AnswersController < ApplicationController
  before_action :authenticate_user!
  before_action :save_title_query, only: [:auto_complete]

  # before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # # GET /answers
  # def index
  #   @answers = Answer.all
  # end
  #
  # # GET /answers/1
  # def show
  # end
  #
  # # GET /answers/new
  # def new
  #   @answer = Answer.new
  # end
  #
  # # GET /answers/1/edit
  # def edit
  # end

  # POST /answers
  #TODO: ここでtitle_dummyをtitleに変更させる
  def create
    @answer = Answer.new(answer_params)
    @answer.is_anonymous = params[:anonymous].present? || params[:submit_type] == "anonymous"

    if @answer.save
      # workers(@answer)
      redirect_to ({controller: 'questions', action: 'show', id: @answer.question.id}), notice: '回答が投稿されました'
    elsif @answer.question.present?
      redirect_to controller: 'questions', action: 'show', id: @answer.question.id
    else
      redirect_to controller: 'questions', action: 'index'
    end

  end

  # # PATCH/PUT /answers/1
  # def update
  #   if @answer.update(answer_params)
  #      redirect_to @answer, notice: 'Answer was successfully updated.'
  #   else
  #      render :edit
  #   end
  # end
  #
  # # DELETE /answers/1
  # def destroy
  #   @answer.destroy
  #   redirect_to answers_url, notice: 'Answer was successfully destroyed.'
  # end


  private
    # def workers(answer)
    #   TwitterAnswerWorker.perform_async(answer.id, session[:access_token], session[:access_token_secret]) if answer.is_tweet
    #   NotificationMailerWorker.perform_async(answer.id) if answer.is_send_email
    #   PushNotificationWorker.perform_async(answer.question.id)
    # end
    # # Use callbacks to share common setup or constraints between actions.
    # def set_answer
    #   @answer = Answer.find(params[:id])
    # end
    # def save_title_query
    #   @query = TitleQuery.new(user_id: current_user.try(:id), query: params[:term])
    #   @query.save
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:user_id, :question_id, :content, :is_tweet, :is_anonymous)
    end
end
