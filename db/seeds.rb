3.times do |topic|
    Topic.create!(
        title: "Topic #{topic}"
    )
end
puts "3 topic created."

10.times do |blog| 
    Blog.create!(
        title: "What is Lorem Ipsum?", 
        body: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. #{blog}",
        topic_id: Topic.last.id
    )
end
puts "10 blog posts created."

5.times do |skill|
    Skill.create!(
        title: "Rails skill #{skill}",
        percent_utilized: "15"
    )
end
puts "5 skills created."

8.times do |portfolio|
    Portfolio.create!(
        title:"Portfolio title #{portfolio}",
        subtitle:"Ruby on Rails",
        body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        main_image:"https://via.placeholder.com/350x150",
        thumb_image:"https://via.placeholder.com/150"
    )
end
1.times do |portfolio|
    Portfolio.create!(
        title:"Portfolio title #{portfolio}",
        subtitle:"Angular",
        body:"Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        main_image:"https://via.placeholder.com/350x150",
        thumb_image:"https://via.placeholder.com/150"
    )
end
puts "9 portfolio created."

3.times do |technology|
    # Technology.create!(
    #     name: "Technology #{technology}",
    #     portfolio_id: Portfolio.last.id
    # )
    Portfolio.last.technologies.create!(
        name: "Techonology #{technology}"
    )
end

puts "3 technology created."
