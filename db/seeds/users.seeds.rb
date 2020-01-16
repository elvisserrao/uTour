p '*** Seeding Users'
names = ['Cristiano Ronaldo', 'Rubens Barrichello', 'Daniel Ricciardo', 'Nelson Piquet', 'Lewis Hamilton', 'Michael Schumacher']
names.each do |name|
  first_name, last_name = name.split(" ")
  user = User
        .where(email: "#{first_name.downcase}.#{last_name.downcase}@gmail.com")
        .first_or_create(
          first_name: first_name,
          last_name: last_name,
          password: 'password',
          password_confirmation: 'password'
        )
        p "Created User: #{user.name}"
end
