# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p '*** Seeding Administrator'
admin = User
        .where(email: 'elvis.serrao1@gmail.com')
        .first_or_create(
          first_name: 'Elvis',
          last_name: 'Serrão',
          password: 'password',
          password_confirmation: 'password',
          admin: true
        )
admin = User
        .where(email: 'julianacurvelo2@gmail.com')
        .first_or_create(
          first_name: 'Juliana',
          last_name: 'Curvelo',
          password: 'password',
          password_confirmation: 'password',
          admin: true
        )
