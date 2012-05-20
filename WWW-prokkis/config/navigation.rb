
SimpleNavigation::Configuration.run do |navigation|
  

  navigation.items do |primary|

	primary.item :home, 'Etusivu', home_index_path
	
	#Kaikki noudattaa samaa kaavaa: key (controllerit), name (näkyy palvelussa)
	#ja url, johon item ohjaa ja johon vois kehittää elegantimman viittauksen
	
	# Näistä ei taideta osata tehdä sellaisia että lisäisi paketin sisältämän määrän
	# esimerkiksi aseita ja varusteita ostoskoriin
	
	#Pitää vielä lisätä se että ku klikkaa valmismatkoja ni tulee kiva alotusruutu
	#sen sijaan et näytetään safari.html.erb (jota kautta ei siis saada ainakaan tuotteita näkyviin)
		primary.item :valmismatkat, 'Valmismatkat', pages_safari_path do |valmismatkat|
		valmismatkat.item :safari ,'Safari', "/products/group/safari"
		valmismatkat.item :metsastys ,'Mestästys', "/products/group/metsastys"
		valmismatkat.item :extreme ,'Extreme', "/products/group/extreme"
		end
		
	primary.item :oma_matka, 'Oma matka', pages_varusteet_path do |oma_matka|
		oma_matka.item :varusteet ,'Varusteet', "/products/group/varusteet"
		oma_matka.item :aseet ,'Aseet', "/products/group/aseet"
		oma_matka.item :alueet ,'Alueet', "/products/group/alueet"
		oma_matka.item :kulkuneuvot ,'Kulkuneuvot', "/products/group/kulkuneuvot"
		end
	
	primary.item :tietoa_saaresta, 'Tietoa saaresta', pages_historia_path do |tietoa_saaresta|
		tietoa_saaresta.item :historia ,'Historia', pages_historia_path
		tietoa_saaresta.item :palvelut ,'Palvelut', pages_palvelut_path
		tietoa_saaresta.item :lajiesittely ,'Lajiesittely', pages_lajiesittely_path
		tietoa_saaresta.item :kartta ,'Kartta', pages_kartta_path
		end
	primary.item :yhteystiedot, 'Yhteystiedot', pages_yhteystiedot_path
	

   
   
    end



  end


