# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Book.create!([
    {title: "Book 1", author: 'Darwin', price: 10, publishedDate: '2024-01-01'},
    {title: "Book 2",  author: 'Darwin', price: 10, publishedDate: '2024-01-01'},
    {title: "Book 3",  author: 'Darwin', price: 10, publishedDate: '2024-01-01'},
    {title: "Book 4",  author: 'Darwin', price: 10, publishedDate: '2024-01-01'},
    {title: "Book 5",  author: 'Darwin', price: 10, publishedDate: '2024-01-01'}
])