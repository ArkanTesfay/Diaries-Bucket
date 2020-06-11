class DiariesController < ApplicationController
	
	
	
	def new
		@diary=Diarie.new
	end


	def create
		
		@diary=Diarie.create(diarie_params)
		@diary.account_id=current_account.id

			if @diary.save

				redirect_to diaries_path


			else

				render 'new'
					
			end
		
	end
	
	def diarie_params

		 params.require(:diarie).permit(:title,:body)
		
	end


	def index
		@diary=Diarie.all

		
	end

	def destroy
		@diary=Diarie.find_by(params[:id])

		if @diary.account_id==current_account.id
		@diary.destroy

		redirect_to diaries_path

		end 
	end

	

end
