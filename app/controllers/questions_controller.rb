# include Tweet
# include SlackModule
# include GenerateImages

class QuestionsController < ApplicationController
  # before_action :authenticate_user!, only: [:new]
  before_action :set_question, only: [:show] #, :edit, :update, :destroy
  #before_action :create_log, only: [:show] #, :edit, :update, :destroy
  PER = 10
  TWITTER_PER=40

  def index
    #@questions = Question.not_answered.includes(:answers).page(params[:page_1]).per(PER)
    #@questions_answered = Question.answered.includes(:answers).page(params[:page_2]).per(PER)
    @questions = Question.includes(:answers).order('created_at DESC').page(params[:page]).per(PER)
  end

  def show
    @answer = Answer.new
    @answers = @question.answers.includes(:likes).page(params[:page]).per(PER)
  end

  def new
    @question = Question.new
  end

  # def edit
  # end

  def create
    @question = Question.new(question_params)
    @question.is_anonymous = params[:anonymous].present? || params[:submit_type] == "anonymous"
    if @question.save
      #workers(@question)
      flash[:notice_link] = profile_path(current_user) if current_user.is_dummy_email
      notice = flash[:notice_link].blank? ? "質問が投稿されました" : "質問が投稿されました。通知を受け取るためにメール登録してください"
      redirect_to @question, notice: notice
    else
       redirect_to action: :new
    end
  end




  private
    # Use callbacks to share common setup or constraints between actions.

    # def workers(question)
    #   #image(question)
    #   #TwitterQuestionWorker.perform_async(@question.id, ENV["TWITTER_ACCESS"], ENV["TWITTER_ACCESS_SECRET"]) #自動ツイート
    #   ImageWorker.perform_async(question.id)
    #   AnswerBotWorker.perform_async(question.id) #Anser bot
    #   SlackQuestionWorker.perform_async(question.id) if Rails.env.production?
    #   TwitterQuestionWorker.perform_async(question.id, session[:access_token], session[:access_token_secret]) if Rails.env.production?
    #   FacebookWorker.perform_async(question.id)# if Rails.env.production?
    # end

    def set_question
      @question = Question.find(params[:id])
    end

    # def create_log
    #   @log = QuestionShowLog.new(question_id: params[:id], user_id:current_user.try(:id))
    #   @log.save
    # end


    def user_data(user)
      {
      screen_name: user.screen_name,
      uid: user.id,
      name: user.name,
      image: user.profile_image_url,
      }
    end


    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:user_id, :content, :is_tweet, :is_anonymous)
    end
end
