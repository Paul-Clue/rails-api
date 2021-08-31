# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Frame.destroy_all

gucci = Frame.create(make: 'Gucci', pic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHnWHKDdVLgCrVHN5Me0UX0gCYD9gmPLMrLUT9cUulxdg9kULIPR5w4ro9odPI1jI_h8&usqp=CAU")

versace = Frame.create(make: 'Versace', pic: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2zLGfDjz5tnmkqWTuDxl-bxnCGiCiie5JZOzYb8B5vHwoCuXI-a24grNBsKVHs8__flw&usqp=CAU')

armani = Frame.create(make: 'Armani', pic: 'https://cdn1.visiofactory.com/64058-large/giorgio-armani-frames-of-life-black-ar7141-5017-52-19-large.jpg')

dg = Frame.create(make: 'D&G', pic: 'https://img-cdn1.cdnsbg.com/450/2/7/430309_side_2_1599514852139.jpg')

tomford = Frame.create(make: 'Tom Ford', pic: 'https://media.designerframesoutlet.com/images/Thumbs/0712101_tom-ford-eyeglasses-ft5527_580.jpeg')

burberry = Frame.create(make: 'Burberry', pic: 'https://assets.lenscrafters.com/is/image/LensCrafters/8056597423236__002.png?impolicy=LC_grey&width=1024')

User.create(name: 'ZzZzYYYyy19B', password: 'ZzZzYYYyy19B')
