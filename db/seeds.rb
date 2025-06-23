User.create!(email: "test@example.com", password: "password").tap do |user|
  10.times do
    user.tasks.create!(
      title: Faker::Lorem.sentence(word_count: 3),
      description: Faker::Lorem.paragraph,
      due_date: rand(1..3).days.from_now,
      status: "pending"
    )
  end

  5.times do
    Meme.create!(
      image_url: Faker::LoremFlickr.image(size: "300x300", search_terms: ['funny']),
      caption: Faker::Quote.famous_last_words,
      category: %w[sarcasm productivity distraction].sample
    )
  end
end
