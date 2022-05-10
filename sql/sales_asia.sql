/*The company has launched in the U.S. but is looking to expand globally out in Asia. 
Note that the current physical limitation of these smartwatches is that you need an associated smartphone from the same company in order for the smartwatch to be functional. 
In order to start your analysis, you’ll need to know the potential market size, which at the maximum, is based on how many smartphones have been distributed and used globally. 
The first question you’ll need to answer is: How many smartphones were sold in 2019 in Asia?

There will be 3 tables available in the Udacity SQL Workspace for this exercise.

sales_f
product_d
country_d */



select count(*) from sales_f sales
join product_d product
on sales.product_id = product.id
join country_d country
on sales.country_of_order = country.alpha_3
where country.region = 'Asia'
and product.product_name in ('Smartphone 1', 'Smartphone 2')
and date_part('year', sale_ts)=2019