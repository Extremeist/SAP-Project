task seed_data: :environment do

  # generate users
  User.create(email: 'dave@gmail.com', password:'j8943ifjfs', address: '123 Mill Street', admin: true)
  User.create(email: 'jenny@gmail.com', password:'9u9f0f43', address: '7 Fancy Lane', admin: true)
  User.create(email: 'george@gmail.com', password:'fjkdfjkg', address: '1 Butterville', admin: false)
  User.create(email: 'sally@gmail.com', password:'mdnddjnc', address: '55 Bluestreet', admin: false)
  User.create(email: 'kim@gmail.com', password:'479fjf3', address: '54 Tall Cressant', admin: false)


  # generate posts
  Post.create(title: 'My Passwords', content: 'The server password is 12345678', private:true)
  Post.create(title: 'Employee Directory', content: '...', private:true)
  Post.create(title: 'Types of Cheese', content: 'Brie, Cheddar, Moz...', private:false)
  Post.create(title: 'Wine Food Pairings 1', content: 'White wine goes with...', private:false)
  Post.create(title: 'Wine Food Pairings 2', content: 'Red wine goes with...', private:false)
  Post.create(title: 'WFH Best Habits', content: 'Dont go on facebook...', private:false)
  Post.create(title: 'Dog Names', content: 'Ruff, Woof, Bark...', private:false)
end