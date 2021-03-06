module Api
	module V1
		class SchedulesController < ApplicationController
			def index
				# api/v1/buniesses/business_id/schedules
				@schedule = Business.find(params[:business_id]).schedule

				render json: @schedule
			end

			def show
				#api/v1/buniesses/id
				@schedule = Schedule.find(params[:id])

				render json: @schedule
			end

			def create
				# /api/v1/businesses/:business_id/schedules
				@schedule = Schedule.new(schedules_params)
				if @schedule.save
					render json: @schedule, status: :created
				else
					render json: @schedule.errors, status: :unprocessable_entity
				end
			end

			def update
				@schedule = Schedule.find(params[:id])

				if @schedule.update(schedules_params)
					render json: @schedule, status: :created
				else
					render json: @schedule.errors, status: :unprocessable_entity
				end
			end

			def destroy
				@schedule = Schedule.find(params[:id])

				if @schedule.destroy
					render json: { message: "Your user has been deleted." }, status: :ok
				else
					render json: { message: "There was an error retrieving your schedule to delete." }, status: :unprocessable_entity
				end
			end

			private

			def schedules_params
				params.permit(
					:business_id,
					:sunday,
					:monday,
					:tuesday,
					:wednesday,
					:thursday,
					:friday,
					:saturday,
				)
			end
		end
	end
end
