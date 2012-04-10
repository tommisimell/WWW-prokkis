
SimpleNavigation::Configuration.run do |navigation|
  

  navigation.items do |primary|

	primary.item :home, 'Etusivu', home_index_path
    primary.item :kirjat, 'kirjat', 'http://www.google.fi'

	primary.item :aseet, 'aseet', 'http://www.puolustusvoimat.fi'
	primary.item :yhteystiedot, 'Yhteystiedot', pages_yhteystiedot_path do |yhteystiedot|
		yhteystiedot.item :historia ,'Historia', pages_historia_path
		yhteystiedot.item :palvelut ,'Palvelut', pages_palvelut_path
		end
	primary.item :posts, 'Postit', posts_path do |posts|
		posts.item :lajiesittely ,'Lajiesittely', pages_lajiesittely_path
		end
	

   
   
    end



  end


