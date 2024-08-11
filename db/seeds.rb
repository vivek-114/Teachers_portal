# Clear existing data
Teacher.destroy_all

# Create a new teacher
Teacher.create!(
  email: 'teacher@example.com',
  password_digest: 'password123'
)

puts "Seed data created!"