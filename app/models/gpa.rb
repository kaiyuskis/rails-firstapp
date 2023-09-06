class Gpa < ActiveRecord::Base
	enum :grade, [:S, :A, :B, :C, :D, :F, :Z]
end
