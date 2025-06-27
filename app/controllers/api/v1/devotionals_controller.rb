module Api
  module V1
    class DevotionalsController < ApplicationController
      def index
        devotionals = Devotional.all.order(date: :desc)
        render json: devotionals
      end

      def show_devotional
        devotional = Devotional.find_by(id: params[:id])
        if devotional
          render json: devotional
        else
          render json: { error: "Devotional not found" }, status: :not_found
        end
      end

      def create_devotional
        devotional = Devotional.new(devotional_params)
        if devotional.save
          render json: devotional, status: :created
        else
          render json: { errors: devotional.errors.full_messages }, status: :unprocessable_entity
        end
      end

      def today_devotional
        devotional = Devotional.find_by(date: Date.today)
        if devotional
          render json: devotional
        else
          render json: { message: "There is no devotional HERE today (but you can read the Holy Scriptures)" }, status: :not_found
        end
      end

      private

      def devotional_params
        params.require(:devotional).permit(:title, :verse, :body, :date)
      end
    end
  end
end
