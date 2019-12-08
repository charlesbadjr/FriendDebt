# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Payment.create( actual_payment_amount:50.55, amount_interest:20.23, amount_principle:30.32, total_todate:50.55, 
                  comment:"this sucks so bad", paid:true, debt_id:1 )

