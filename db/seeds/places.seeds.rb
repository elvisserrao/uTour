p '*** Seeding Places'
names = ['Coco Bambu', 'Sal e Brasa', 'PastelBurg', 'Brothers Burguer']
types = ['Churrascaria', 'Pizzaria', 'Restaurante']
names.each do |name|
  place = Place
          .where(name: name)
          .first_or_create(
            establishment: 'Restaurante',
            description: 'Um bom lugar para comer e resenhar com os amigos',
          )
end
p "Created places: #{names.to_sentence}"
