class Classroom < ApplicationRecord
	enum :grade, [:S, :A, :B, :C, :D, :F]

	$grade_point = {
		S: 4,
		A: 3,
		B: 2,
		C: 1,
		D: 0,
		F: 0,
	}
end
