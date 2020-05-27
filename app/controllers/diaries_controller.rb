class DiariesController < ApplicationController
	

	def diarie_params

		params.require(:diaries).permit(:title,:body)
		
	end
	def new
		@diary=Diarie.new
	end


	def create

		@diary=Diarie.create(diarie_params)


		if @diary.save

			redirect_to root_path
			else

				render 'new'
		end
		
	end


	def index
		@diary=Diarie.all
		
	end

end
