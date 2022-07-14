# Course.create(title: "Rails")
# Course.create(title: "Ruby")
# Course.create(title: "RubyMine shortcuts")
Course.create(title: "Capitals")
Category.create(name: "Typing")


Answer.create(
  content: "Paris",
  question_id: 1
)

Question.create!(
  content: "The capital of France",
  course_id: 1,
  category_id: 1,
  )


Question.create(
  content: "The capital of Poland",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Warsaw",
  question_id: 2
)

Question.create(
  content: "The capital of the UK",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "London",
  question_id: 3
)

Question.create(
  content: "The capital of Germany",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Berlin",
  question_id: 4
)

Question.create(
  content: "The capital of Russia",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Moscow",
  question_id: 5
)

Question.create(
  content: "The capital of Italy",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Rome",
  question_id: 6
)

Question.create(
  content: "The capital of Spain",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Madrid",
  question_id: 7
)

Question.create(
  content: "The capital of Portugal",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Lisbon",
  question_id: 8
)

Question.create(
  content: "The capital of Hungary",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Budapest",
  question_id: 9
)

Question.create(
  content: "The capital of Bulgaria",
  course_id: 1,
  category_id: 1,
)

Answer.create(
  content: "Sofia",
  question_id: 10
)

# 50. times do |i |
#   Question.create(
#     content: i.to_s + Faker::Lorem.sentence(word_count: rand(5. .10)),
#     course_id: Faker::Number.between(from: 1, to: 2),
#     category_id: Faker::Number.between(from: 1, to: 2),
#     )
# end
#
# 50. times do |i |
#   Answer.create!(
#     content: i.to_s + Faker::Lorem.sentence(word_count: rand(4. .12)),
#     question_id: i + 1 #)
# end