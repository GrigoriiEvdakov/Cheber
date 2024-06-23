# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
User.create!(login: 'user1', password_digest: 'password1', role: 0, email: 'user1@example.com')
User.create!(login: 'user2', password_digest: 'password2', role: 0, email: 'user2@example.com')

# Создаем клиентов
Client.create!(name: 'Client 1', phone: '123-456-7890', address: '123 Main St', user_id: 1)
Client.create!(name: 'Client 2', phone: '456-789-0123', address: '456 Elm St', user_id: 2)

# Создаем мастеров
Master.create!(name: 'Master 1', phone: '111-222-3333', specialization: 'Specialty 1', status_on: true, bio: 'Bio 1', address: '789 Oak St', reviews_image: 'reviews1.jpg', diploms_image: 'diploms1.jpg', user_id: 1)
Master.create!(name: 'Master 2', phone: '222-333-4444', specialization: 'Specialty 2', status_on: false, bio: 'Bio 2', address: '012 Pine St', reviews_image: 'reviews2.jpg', diploms_image: 'diploms2.jpg', user_id: 2)
