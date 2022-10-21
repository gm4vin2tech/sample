class PostModel < ApplicationRecord
	# belongs_to :user_model
	belongs_to :author, class_name: 'UserModel'

end
