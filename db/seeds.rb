require "open-uri"

puts 'Cleaning users...'
User.destroy_all

puts 'Creating users...'

User.create!(email: 'flo@gmail.com', password: 'azerty', first_name: 'Florence', last_name: 'Martino', nickname: 'Flof', age: 30, sex_preference: 'male', sex: 'female')
User.create!(email: 'laura@gmail.com', password: 'azerty', first_name: 'Laura', last_name: 'Davy', nickname: 'Lauraton', age: 30, sex_preference: 'male', sex: 'female')
User.create!(email: 'fred@gmail.com', password: 'azerty', first_name: 'Frederique', last_name: 'StGenis', nickname: 'Fredouille', age: 30, sex_preference: 'male', sex: 'female')
User.create!(email: 'dodo@gmail.com', password: 'azerty', first_name: 'Dorian', last_name: 'Salort', nickname: 'Dodo', age: 29, sex_preference: 'female', sex: 'male')
User.create!(email: 'martin@gmail.com', password: 'azerty', first_name: 'Martin', last_name: 'Capron', nickname: 'Martin', age: 30, sex_preference: 'female', sex: 'male')
User.create!(email: 'Caroline@gmail.com', password: 'azerty', first_name: 'Caroline', last_name: 'Dupieux', nickname: 'Caro', age: 20, sex_preference: 'male', sex: 'female')
User.create!(email: 'Michelle@gmail.com', password: 'azerty', first_name: 'Michelle', last_name: 'Obamot', nickname: 'MichMich', age: 22, sex_preference: 'male', sex: 'female')
User.create!(email: 'Margot@gmail.com', password: 'azerty', first_name: 'Margot', last_name: 'Lescargot', nickname: 'Gomar', age: 24, sex_preference: 'male', sex: 'female')
User.create!(email: 'Emilie@gmail.com', password: 'azerty', first_name: 'Emilie', last_name: 'Jolie', nickname: 'Emily', age: 26, sex_preference: 'male', sex: 'female')

puts 'Creating users with picture...'

franck = User.create!(email: 'franck@gmail.com', password: 'azerty', first_name: 'Franck', last_name: 'Lopez', nickname: 'Francky', age: 33, sex_preference: 'female')
file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
franck.photos.attach(io: file, filename: 'picture.png', content_type: 'image/png')

puts 'Finished!'
