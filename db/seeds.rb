# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'faker'

MovieSelection.destroy_all
Recommendation.destroy_all
Movie.destroy_all
Friend.destroy_all
User.destroy_all


user1 = User.create!(first_name: "Veni", last_name: "Aljo", email: "veni@test.com", password: "123456", bio: "University Graduate from King's College London in Chemistry, changing my career path to get into coding and programming. Getting started with Le Wagon web development course!")
file = URI.open('https://avatars.githubusercontent.com/u/81187143?v=4')
user1.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user2 = User.create!(first_name: "Marcus", last_name: "Allen", email: "marcus@test.com", password: "123456", bio: "Hello world! I am an aspiring software developer, hoping to broaden my skills in Ruby, and web development through Le Wagon. Previously I was a music producer and chef. Looking forward to new opportunities and meeting new people.")
file = URI.open('https://avatars.githubusercontent.com/u/71977744?v=4')
user2.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user3 = User.create!(first_name: "Felix", last_name: "Altenburg", email: "felix@test.com", password: "123456", bio: "Hi, I'm Felix! Before Le Wagon, I was in school finishing my IB diploma, and since my exams got canceled I had a lot of free time open up. As I am interested in entrepreneurship and I enjoy learning new skills I felt like Web development at Le Wagon would fit right in. After this bootcamp I will continue my gap year and try and do many more interesting things.")
file = URI.open('https://avatars.githubusercontent.com/u/80281479?v=4')
user3.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user4 = User.create!(first_name: "Marie", last_name: "Apolozan", email: "marie@test.com", password: "123456", bio: "Hi, I'm Marie. I graduated from an MSc in Data Analytics and am taking advantage of a pandemic induced lull to learn other aspects of programming languages.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618906081/uwglzhbnj7yyqjbhgtst.jpg')
user4.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user5 = User.create!(first_name: "Chloe", last_name: "Avenas", email: "chloek@test.com", password: "123456", bio: "Hey! After graduating from a business school in France, I moved to London to work in a digital marketing agency, and then for a mobile app. I worked in different teams in the past 8 years: marketing, CSM, operations, product, ... I love understanding what people do and have always had a strong interest for tech, so am finally joining Le Wagon's bootcamp to better understand how to create a web app from scratch. Either to officially switch to Product Management, or to start my own business, or... well, we'll see in the next couple of weeks :)")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618501225/aeew3amojdtvyvmflbfo.jpg')
user5.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user6 = User.create!(first_name: "Cesar", last_name: "Bouttier", email: "cesar@test.com", password: "123456", bio: "Hi my name is César, I am french and I am 22 years old, I recently graduated from the University of Bath in politics and economics and I now wish to discover the world of IT and how we can use it to make our world a better place.")
file = URI.open('https://avatars.githubusercontent.com/u/82714944?v=4')
user6.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user7 = User.create!(first_name: "Emma", last_name: "Cardon", email: "emma@test.com", password: "123456", bio: "After working for a few years in sales and account management roles for different SaaS companies, I am now more interested in focusing on the technical side of things. I am excited to start learning web development at Le Wagon and later would love to get back to the tech industry on a product development role!")
file = URI.open('https://avatars.githubusercontent.com/u/80233825?v=4')
user7.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user8 = User.create!(first_name: "Jennifer", last_name: "Carlyle", email: "jennifer@test.com", password: "123456", bio: "Hi! I'm from Charlotte, NC and have worked in Operations for 12 years, but I decided I wanted to make a career change and do something different. I'm very excited to be in London learning to code!")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618827613/c6s4hzx9htdl23idct3x.jpg')
user8.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user9 = User.create!(first_name: "Beverly", last_name: "Chan", email: "beverly@test.com", password: "123456", bio: "I'm a freelance designer researcher with a varied creative background. I'm drawn to work in areas which merge social sciences with art and design, and I hope to better understand people, our global movements, and wellbeing. I'm excited to learn coding for the first time. I've signed up because I want to equip myself for the future, and it offers me another way to solve problems and to collaborate and create.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618569271/fwymgf1wbs9p2lefudn5.jpg')
user9.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user10 = User.create!(first_name: "Eduard", last_name: "Ciugulea", email: "eduard@test.com", password: "123456", bio: "I start on a path to discover my passion and on my way to do it I found out that IT is a domain that fascinates me, furthermore, the Web Development domain get my attention and now my goal is to be a Web Developer.")
file = URI.open('https://avatars.githubusercontent.com/u/80752559?v=4')
user10.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user11 = User.create!(first_name: "Egidio", last_name: "DeSouza", email: "egidio@test.com", password: "123456", bio: "Hi Everyone, my name is Egidio De-Souza. I have a degree in Business With Mandarin, and I have been working in the international educational sector for the past three years. At the beginning of last year, I was a Sales and Admissions Advisor for an small independent school. I want to get a full-time job as a developer, and work with my business partner on a personal and professional development initiative called Finesse The System that provides people with the tools and skills to start their career and navigate the workplace, and has a goal in supporting as many students as possible to develop the skills they need to start their career.")
file = URI.open('https://avatars.githubusercontent.com/u/71524093?v=4')
user11.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user12 = User.create!(first_name: "Nick", last_name: "Dillon", email: "nicholas@test.com", password: "123456", bio: "Hi everyone! I'm Nick and I come from a marketing background. My interest in coding came, primarily, from working alongside web developers and my goal is to either work in front end development or carry my new set of skills into the digital marketing sector.")
file = URI.open('https://avatars.githubusercontent.com/u/81957758?v=4')
user12.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user13 = User.create!(first_name: "Emily", last_name: "Doswell", email: "emily@test.com", password: "123456", bio: "I've been in Switzerland for the last three years working in Verbier for Chalet companies, I've had a blast but I'm ready to make a career change into something that I'm more interested in. I completed my degree in Architectural Engineering and I always had in the back of my mind that I'd end up in an Engineering job. However, computer Engineering has been far more motivating for me over the last year and hence me signing up for Le Wagon. Who knows what the future will hold.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618826522/iun86a66ulmux0dvdbnh.jpg')
user13.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user14 = User.create!(first_name: "Hector", last_name: "Dyer", email: "hector@test.com", password: "123456", bio: "hey everyone, looking forward to meeting you all :) i used to work as a curator in the arts and still have my own practice as an artist, working with performance and mixed media. i'm v new to this world but realised i wanted to make a change over the past year and move with something different xxx")
file = URI.open('https://avatars.githubusercontent.com/u/79449028?v=4')
user14.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user15 = User.create!(first_name: "Robyn", last_name: "Ellison", email: "robyn@test.com", password: "123456", bio: "I've just left my role in the Civil Service as a healthcare policy advisor. Previous to that I was an office manager for a Minister of State. In between graduating and starting my first role in the Civil Service, I lived in China for 3 years learning Mandarin. I felt I'd learnt as much as I could in my most recent role and having been studying programming in my spare time for a while, decided what better time to throw myself in full-time!")
file = URI.open('https://avatars.githubusercontent.com/u/79164134?v=4')
user15.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user16 = User.create!(first_name: "Beatriz", last_name: "Galindo", email: "beatriz@test.com", password: "123456", bio: "Hi! I’m an architect, I’ve been working in architecture and interior design for the past three years and I plan to change careers to become a developer. :)")
file = URI.open('https://avatars.githubusercontent.com/u/72728033?v=4')
user16.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user17 = User.create!(first_name: "Dean", last_name: "Gilden", email: "dean@test.com", password: "123456", bio: "I was previously in the building trade, doing roofing on-site and office-based for roughly eleven years. I've recently decided to have a complete career change and learn how to code.")
file = URI.open('https://avatars.githubusercontent.com/u/80426606?v=4')
user17.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user18 = User.create!(first_name: "Oliver", last_name: "Kyte", email: "oliver@test.com", password: "123456", bio: "Hello! I'm Oli, 25 from North London. I'm a former Search Engine Optimisation Consultant looking to retrain as a a web developer :) I'm a big fan of LEGO and Watford FC.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618824336/aiwdy46l1dex8bt4ylz6.jpg')
user18.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user19 = User.create!(first_name: "Vera", last_name: "Meanti", email: "vera@test.com", password: "123456", bio: "Hi everyone!! After having studied Business Management in Barcelona I started working in the entertainment industry. I have always been interested in programming but never pursued it until now, to kickstart my career in the start up world and bring my ideas to life.")
file = URI.open('https://avatars.githubusercontent.com/u/82151764?v=4')
user19.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user20 = User.create!(first_name: "Tiana", last_name: "Milanovich", email: "tiana@test.com", password: "123456", bio: "I decided to learn how to code because after working in a lot of boring jobs I made the decision to change my career path. I found coding and realized this was the path I want to take. After Le Wagon I plan to get a job as a junior developer. :)")
file = URI.open('https://avatars.githubusercontent.com/u/63407361?v=4')
user20.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user21 = User.create!(first_name: "James", last_name: "Moran", email: "jamesm@test.com", password: "123456", bio: "Studied Construction Management and Engineering and for the past 6 years have been working as Project Manager for a Civil Construction Company in London. The main reason I'm learning to code is that I want a change in career . Also the problem solving aspect of coding really appeals to me. Why not do something you enjoy for a living, right? The aim after the bootcamp is to hopefully secure a role as a Junior Developer with a company where I can continue to learn and progress with everything we cover over the next 9 weeks!")
file = URI.open('https://avatars.githubusercontent.com/u/78893700?v=4')
user21.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user22 = User.create!(first_name: "James", last_name: "Price", email: "jamesp@test.com", password: "123456", bio: "Hi there! I'm James and up until now I've been working in Theatre, TV and Film. Mainly Acting but a bit of writing and directing also. I began learning to code through lockdown but was a bit unsure what to do with it. I took the decision a couple of months ago that I wanted to change career and become a Developer. I'm open to just about anything after Le Wagon but being a Developer at a start up would be exciting. Looking forward to (socially-distanced) meeting everyone!")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618951328/coj12cu8ljrmsmtp4xrs.jpg')
user22.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user23 = User.create!(first_name: "Borja", last_name: "Requena", email: "borja@test.com", password: "123456", bio: "Hola! I'm Borja :) I was born in 1987 in Elche, Spain and spent my early 20s studying Journalism and Film Business Management. After six years of working in marketing and film distribution for Warner Bros and eOne, I decided to move to London in 2018 to give British life-style a go. I have always loved technology and after seeing my brother succeed as a Web Developer/entrepreneur, I knew this is what I wanted to get to as the final stop of my career journey. Le Wagon seemed like the perfect choice as they focus on real world programming and makes it possible for someone like me to achieve my goals in the shortest possible time.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618506947/w7vtzrxv3qmutakw9k8k.jpg')
user23.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user24 = User.create!(first_name: "Yonatan", last_name: "Rospigliosi", email: "yonatan@test.com", password: "123456", bio: "Hello, my name is Yonatan, I would like to learn coding to change my professional career, I'm always interested in technology. I would like to explore this field more and learn more about it. I have done some small courses before so I have some knowledge, but not enough to be a developer. So I think is a good opportunity to build a new career from here.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618949586/t9aui1ogepkhozmwcuhs.jpg')
user24.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user25 = User.create!(first_name: "Natalia", last_name: "Rossini", email: "natalia@test.com", password: "123456", bio: "I’m a IT enthusiast and I’ve been having fun learning the coding basics by myself for the past few years, I’m looking forward to get a deep and professional knowledge to start a career in web development!")
file = URI.open('https://avatars.githubusercontent.com/u/47406531?v=4')
user25.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user26 = User.create!(first_name: "Rob", last_name: "Rowe", email: "rob@test.com", password: "123456", bio: "I was intrigued by and have tinkered with code since I was a young child on my MSX, C64, and Amiga, through to Windows and Linux desktop computers and laptops. I love seeing how technology evolves, using it to solve problems, and want to learn how best to apply this to real-world situations in a more modern, structured, and extensible way.")
file = URI.open('https://avatars.githubusercontent.com/u/174759?v=4')
user26.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user27 = User.create!(first_name: "Spencer", last_name: "Ryton", email: "spencer@test.com", password: "123456", bio: "I am a fully qualified tennis coach and have been since leaving university in 2016. Now looking for a new challenge in coding and web development.")
file = URI.open('https://avatars.githubusercontent.com/u/80348654?v=4')
user27.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user28 = User.create!(first_name: "Laurence", last_name: "Sainsbury", email: "laurence@test.com", password: "123456", bio: "Before Le Wagon I was a full-time manager of two bar/cafes in York city centre. Long-term I'd like to make my own video games but I am joining Le Wagon to learn the skills to get my foot in the door of the tech industry.")
file = URI.open('https://res.cloudinary.com/wagon/image/upload/c_fill,g_face,h_200,w_200/v1618825885/n9bj7w5yjxviscehfrc6.jpg')
user28.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user29 = User.create!(first_name: "Ozgur Firat", last_name: "Sayin", email: "ozgur@test.com", password: "123456", bio: "Studied mechanical engineering, worked in automotive industry for about 9 years. I am currently unemployed, and spending my time learning how to code. I would like to, in a way, stay engaged with coding after bootcamp although I haven't created a plan as to how yet.")
file = URI.open('https://avatars.githubusercontent.com/u/82212179?v=4')
user29.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')

user30 = User.create!(first_name: "Joe", last_name: "Smith", email: "joesmith@test.com", password: "123456", bio: "Before applying for the Web Development Course at Le Wagon, I worked in retail for the past 14 years to make ends meet. Recently made redundant due to COVID and decided to make a change in job sectors as I've always been interested in technology. My plan after the course is to build a platform for my sister's fitness company to grow her business and look for a junior developer role!")
file = URI.open('https://avatars.githubusercontent.com/u/32105677?v=4')
user30.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')


# 5.times do
#   User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: "123456")
# end

# puts "Created 5 Random Users"

# # 10 great movies
# # Generate a unique title using faker for each movie
# # Then we build url
# # Make the request
# # Collect the response in the variable
# # With the details, we create a new instance of a movie
# # select the random platform and assign it to the movie
# # then we save it
platforms = Movie.platform.values

40.times do
  movie_title = Faker::Movie.unique.title

  url = "http://www.omdbapi.com/?t=#{CGI.escape(movie_title)}&apikey=#{ENV['OMDB_KEY']}"
  response = JSON.parse(URI.open(url).read)
  next if response["Response"] == "False"

  movie = Movie.new(
    title: response["Title"],
    description: response["Plot"],
    director: response["Director"],
    year: response["Year"],
    rating: response["Metascore"],
    genre: response["Genre"],
    runtime: response["Runtime"],
    platform: platforms.sample,
    youtube_id: YOUTUBE_TRAILER_IDS[movie_title.to_sym]
  )
  puts "here"
  begin
    poster_file = URI.open(response["Poster"])
  rescue
    next
  else
    movie.poster.attach(io: poster_file, filename: response["Title"], content_type: 'image/png')
    movie.save!
  end

end

puts "Created #{Movie.count} movies"
