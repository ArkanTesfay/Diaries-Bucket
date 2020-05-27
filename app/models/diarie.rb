class Diarie < ApplicationRecord

		validates :title , presence: true, uniqueness:{case_sensitive:false}, length:{minimum:5, maximum:100}
		validates :body , presence: true, uniqueness:{case_sensitive:false}, length:{minimum:10, maximum:500}








end