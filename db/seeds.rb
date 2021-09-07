# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Frame.destroy_all

gucci = Frame.create(make: 'Gucci', pic: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHnWHKDdVLgCrVHN5Me0UX0gCYD9gmPLMrLUT9cUulxdg9kULIPR5w4ro9odPI1jI_h8&usqp=CAU")

versace = Frame.create(make: 'Versace', pic: 'https://www.otticasm.com/media/catalog/product/cache/all/small_image/800x533/7cccbbb73661449a43bcbcafc1e3e887/v/e/versace-ve-1264-1460.jpg')

armani = Frame.create(make: 'Armani', pic: 'https://cdn1.visiofactory.com/64058-large/giorgio-armani-frames-of-life-black-ar7141-5017-52-19-large.jpg')

dg = Frame.create(make: 'D&G', pic: 'https://img-cdn1.cdnsbg.com/450/2/7/430309_side_2_1599514852139.jpg')

tomford = Frame.create(make: 'Tom Ford', pic: 'https://media.designerframesoutlet.com/images/Thumbs/0712101_tom-ford-eyeglasses-ft5527_580.jpeg')

burberry = Frame.create(make: 'Burberry', pic: 'https://cdn.eyewa.com/900x900/media/catalog/product/g/l/glasses-burberry-be2255q-3001-51-2.jpg')

User.create(name: 'ZzZzYYYyy19B', password: 'ZzZzYYYyy19B')
