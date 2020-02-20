10.times do |tutorial|
	Tutorial.create!(
		title: "Sample Tutorial Post #{tutorial}",
		body: "Welcome to my generic tutorial dummy information. Whether HTML, CSS, Javascript, Ruby, Rails, PHP, Node.JS, mongoDB, mysql, postgresql, React, and React Native tutorials that I will be not only offering but also I will be inclunding instructional how to tutorials on each of these subjects. Like always if you have any questions please comment below or go to the contact me page to message me directly. Enjoy and goodluck on your coding journey"
	)
end

puts "10 sample tutorial posts created"

5.times do |skill|
	Skill.create!(
		title: "Rails #{skill}",
		level_percentage: 15
		)
end

puts "5 sample skills created"

16.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio title: #{portfolio_item}",
        subtitle: "My great service",
        body: "Check out this portfolio section on each of these images. Please leave feedback in the contact me page. Thanks for checking out my website!!!",
        main_image: "https://place-hold.it/640x360",
        thumb_image: "https://place-hold.it/350x200"
  )
end

put "16 sample portfolio items created"
