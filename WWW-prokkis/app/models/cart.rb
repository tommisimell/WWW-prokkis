class Cart < ActiveRecord::Base

# Ao on koodia jolla jossain webi-esimerkissä oli muutettu määrää

#def increment_product_quantity(id, quantity)
 #  product_to_increment = @items.select{|product| product.product_id == id}

   # We do this because select will return an array
  # unless product_to_increment.empty?
   #   product_to_increment = product_to_increment.first
   #else
      # your error handling here
   #end

   #product_to_increment.quantity = quantity
#end

#def remove_product(id)
 #  @items.delete_if {|product| product.product_id == id }
#end


end
