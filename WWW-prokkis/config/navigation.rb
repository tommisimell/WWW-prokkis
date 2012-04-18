
SimpleNavigation::Configuration.run do |navigation|
  

  navigation.items do |primary|

	primary.item :home, 'Etusivu', home_index_path
	
		primary.item :valmismatkat, 'Valmismatkat', pages_safari_path do |valmismatkat|
		valmismatkat.item :safari ,'Safari', pages_safari_path
		valmismatkat.item :metsastys ,'Mestästys', pages_metsastys_path
		valmismatkat.item :extreme ,'Extreme', pages_extreme_path
		end
		
	primary.item :oma_matka, 'Oma matka', pages_varusteet_path do |oma_matka|
		oma_matka.item :varusteet ,'Varusteet', pages_varusteet_path
		oma_matka.item :aseet ,'Aseet', pages_aseet_path
		oma_matka.item :alueet ,'Alueet', pages_alueet_path
		oma_matka.item :ajoneuvot ,'Ajoneuvot', pages_ajoneuvot_path
		end
	
	primary.item :tietoa_saaresta, 'Tietoa saaresta', pages_historia_path do |tietoa_saaresta|
		tietoa_saaresta.item :historia ,'Historia', pages_historia_path
		tietoa_saaresta.item :palvelut ,'Palvelut', pages_palvelut_path
		tietoa_saaresta.item :lajiesittely ,'Lajiesittely', pages_lajiesittely_path
		tietoa_saaresta.item :kartta ,'Interaktiivinen kartta', pages_kartta_path
		end
	primary.item :yhteystiedot, 'Yhteystiedot', pages_yhteystiedot_path
	

   
   
    end



  end


