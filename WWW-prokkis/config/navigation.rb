
SimpleNavigation::Configuration.run do |navigation|
  

  navigation.items do |primary|

	primary.item :home, 'Etusivu', home_index_path
	
	primary.item :tietoa_saaresta, 'Tietoa saaresta', pages_historia_path do |tietoa_saaresta|
		tietoa_saaresta.item :historia ,'Historia', pages_historia_path
		tietoa_saaresta.item :palvelut ,'Palvelut', pages_palvelut_path
		tietoa_saaresta.item :lajiesittely ,'Lajiesittely', pages_lajiesittely_path
		tietoa_saaresta.item :kartta ,'Interaktiivinen kartta', pages_kartta_path
		end
	primary.item :yhteystiedot, 'Yhteystiedot', pages_yhteystiedot_path
	primary.item :posts, 'Postit', posts_path
	

   
   
    end



  end


