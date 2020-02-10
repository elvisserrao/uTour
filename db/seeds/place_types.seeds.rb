# frozen_string_literal: true

p '*** Seeding Place types'
types = [
  {
    name: 'Churrascaria',
    color: 'Purple',
    rgb_code: '#800080'
  },
  {
    name: 'Pizzaria',
    color: 'Dark Green',
    rgb_code: '#117A65'
  },
  {
    name: 'Restaurante',
    color: 'Blue',
    rgb_code: '#2E86C1'
  },
  {
    name: 'Bar/Petiscaria',
    color: 'Green',
    rgb_code: '#28B463'
  },
  {
    name: 'Hamburgueria',
    color: 'Yellow',
    rgb_code: '#F1C40F'
  },
  {
    name: 'Fast Food',
    color: 'Orange',
    rgb_code: '#D68910'
  }
]
types.each do |type|
  persisted = PlaceType
              .where(type)
              .first_or_create(
                name: type[:name],
                color: type[:color],
                rgb_code: type[:rgb_code]
              )
  p "Created place types #{type[:name]}"
end
