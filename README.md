# README

## 1.0 Simple User's blog posts with categories : 

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

## 2.0 Gems Links 
ActiveAdmin [active_admin](https://github.com/activeadmin/activeadmin)

## <a name="resources"></a> 3.0 Resources 
[ActiveAdmin](http://blog.gemnasium.com/post/60090180534/activeadmin-060-is-out) 
[ActiveAdmin-Resources](https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md)
---

## 4.0 Usages

1) Command 

	1.1) To include inside the activeAdmin 
		1.1.1) rails g active_admin:resource <Model>

	1.2) Read seeds.rb 
		1.2.1) bundle exec rake db:seed

2) Customize the dashboards (Refer to [Resources](#resources))

	2.1) New Version > 6.0  

		2.1.1) ActiveAdmin.register_page "Dashboard" do
			   end

Feel free to review the <tt>[code here](https://github.com/yclim95/user_category_post_blog)</tt> 
