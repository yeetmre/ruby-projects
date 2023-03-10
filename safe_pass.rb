require 'bcrypt'

users =[
  {username:"mustafa",password:"password1"},
  {username:"yiğit",password:"password2"},
  {username:"emre",password:"password3"},
  {username:"kübra",password:"password4"},
  {username:"buse",password:"password5"},
  {username:"ece",password:"password6"},
]
def create_hash_digest(password)
  BCrypt::Password.create(password)
end

def verify_hash_digest(password)
  BCrypt.Password.new(password)
end

def create_secure_users(list_of_users)
  list_of_users.each do |user_record|
    user_record[:password] =create_hash_digest(user_record[:password])
  end
  list_of_users
end

puts create_secure_users(users)