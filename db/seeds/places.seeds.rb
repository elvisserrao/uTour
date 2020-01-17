# frozen_string_literal: true

after :place_types do
  p '*** Seeding Places'
  names = ['Sal e Brasa', 'PastelBurg', 'Coco Bambu', 'Rei do Pirão', 'Brothers Burguer', 'McDonalds']
  i = 0
  names.each do |name|
    i += 1
    place = Place
            .where(name: name)
            .first_or_create(
              description: 'Um bom lugar para comer e resenhar com os amigos',
              place_type_id: i
            )
    p "Created place: #{place.name}"
  end
end
