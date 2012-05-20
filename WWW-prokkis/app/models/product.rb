class Product < ActiveRecord::Base
# alasivujen nimet ovat valittavana groupiksi, joka puolestaan auttaa tuotteiden filteröimisessä
	GROUPS = ['safari', 'metsastys', 'extreme', 'varusteet', 'aseet', 'alueet', 'kulkuneuvot']
end