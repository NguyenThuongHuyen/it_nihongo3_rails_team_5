class YoutubeChannelReviewsController < ApplicationController
  before_action :set_youtube_channel_review, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /youtube_channel_reviews or /youtube_channel_reviews.json
  def index
    @youtube_channel_reviews = YoutubeChannelReview.all
  end

  # GET /youtube_channel_reviews/1 or /youtube_channel_reviews/1.json
  def show
  end

  # GET /youtube_channel_reviews/new
  def new
    @youtube_channel_review = YoutubeChannelReview.new
  end

  # GET /youtube_channel_reviews/1/edit
  def edit
  end

  # POST /youtube_channel_reviews or /youtube_channel_reviews.json
  def create
    @youtube_channel_review = YoutubeChannelReview.new(youtube_channel_review_params)
    @youtube_channel_review.user_id = current_user.id
    respond_to do |format|
      if @youtube_channel_review.save
        format.html { redirect_to @youtube_channel_review, notice: "Youtube channel review was successfully created." }
        format.json { render :show, status: :created, location: @youtube_channel_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @youtube_channel_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /youtube_channel_reviews/1 or /youtube_channel_reviews/1.json
  def update
    respond_to do |format|
      if @youtube_channel_review.update(youtube_channel_review_params)
        format.html { redirect_to @youtube_channel_review, notice: "Youtube channel review was successfully updated." }
        format.json { render :show, status: :ok, location: @youtube_channel_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @youtube_channel_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /youtube_channel_reviews/1 or /youtube_channel_reviews/1.json
  def destroy
    @youtube_channel_review.destroy
    respond_to do |format|
      format.html { redirect_to youtube_channel_reviews_url, notice: "Youtube channel review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_youtube_channel_review
      @youtube_channel_review = YoutubeChannelReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def youtube_channel_review_params
      params.require(:youtube_channel_review).permit(:user_id, :youtube_channel_id, :rating, :review)
    end
end