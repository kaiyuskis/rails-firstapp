class Classroom < ApplicationRecord
	enum :grade, [ :S, :A, :B, :C, :D, :F ]

	GRADE_POINTS = {
		"S" => 4,
		"A" => 3,
		"B" => 2,
		"C" => 1,
		"D" => 0,
		"F" => 0,
	}
end
