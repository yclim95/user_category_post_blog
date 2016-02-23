ActiveAdmin.register Category do
	permit_params :name  # ActiveModel::ForbiddenAttributes
end