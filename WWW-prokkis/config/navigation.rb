
SimpleNavigation::Configuration.run do |navigation|
  

  navigation.items do |primary|

	primary.item :home, 'etusivu', home_index_path
    primary.item :kirjat, 'kirjat', 'http://www.google.fi'
	primary.item :posts, 'Postit', posts_path
	primary.item :aseet, 'aseet', 'http://www.puolustusvoimat.fi'
	primary.item :yhteystiedot, 'Yhteystiedot', pages_yhteystiedot_path
	
	

   
   
    end



  end


