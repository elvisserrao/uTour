p '*** Seeding Places'
names = ['Sal e Brasa', 'PastelBurg', 'Coco Bambu', 'Brothers Burguer', 'McDonalds', 'Rei do Pirão']
types = ['Churrascaria', 'Pizzaria', 'Restaurante', 'Hamburgueria', 'Fast Food', 'Bar/Petiscaria']
type = types.cycle.each
names.each do |name, |
  place = Place
          .where(name: name)
          .first_or_create(
            establishment: type.next,
            description: 'Um bom lugar para comer e resenhar com os amigos',
          )
          p "Created place: #{place.name}"
    end
