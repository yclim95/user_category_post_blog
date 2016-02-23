# README

Simple User's blog posts with categories : 

1) Languages included:

	1.1) Ruby 
	1.2) CSS


2) Apply ActiveRecord and Postgresql 

	2.1) Post (database)
	2.2) Category (database)
	2.3) User (Implemented ActiveAdmin)

3) Apply Gem 

	3.1) ActiveAdmin 
	3.2) Devise
	3.3) protected_attribute


---

## Gems Links 
ActiveAdmin [active_admin](https://github.com/activeadmin/activeadmin)

---

## Usage

1) Command 

	1.1) To include inside the activeAdmin 
		1.1.1) rails g active_admin:resource <Model>

2) Customize the dashboards

	2.1) New Version > 6.0  http://blog.gemnasium.com/post/60090180534/activeadmin-060-is-out
	ActiveAdmin.register_page "Dashboard" do
	end

Feel free to review the <tt>[code here](https://github.com/yclim95/user_category_post_blog)</tt> 
