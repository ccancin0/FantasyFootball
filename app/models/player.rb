class Player < ApplicationRecord
	has_one :team
	has_one :stat
end
