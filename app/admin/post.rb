ActiveAdmin.register Post do
	menu :label => "Blog Post"
	permit_params :title, :body, :category_id, :user_id  # ActiveModel::ForbiddenAttributes
end