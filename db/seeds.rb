# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Note.destroy_all
NoteTag.destroy_all




users = ["OCD", "OCDv2", "LotsAhNotesMan", "NoteLover69", "DunnitToTheMax"]

users.each do |user| 
    User.create(username: user)
end 

notes_content = ["He looked down into her brown eyes
    And said 'Say a prayer for me'
    She threw her arms around him
    Whispered 'God will keep us free'
    They could hear the riders coming
    He said 'This is my last fight
    If they take me back to Texas
    They won't take me back alive'", "You're not shy, you get around
    You wanna fly, don't want your feet on the ground
    You stay up, you won't come down
    You wanna live, you wanna move to the sound
    Got fire in your veins
    Burnin' hot but you don't feel the pain
    Your desire is insane
    You can't stop until you do it again
    But sometimes I wonder as I look in your eyes
    Maybe you're thinking of some other guy
    But I know, yes I know, how to treat you right
    That's why you call me in the middle of the night" ]

note_titles  = ["Seven Spanish Angels", "Urgent"]


note_one = Note.create(title: note_titles[0], content: notes_content[0], user_id: User.all.ids.sample)
# Note.create(title: note_titles[1], content: notes_content[1], user_id: User.all.ids.sample)

 tag_one = Tag.create(name: "Songs")
tag_two = Tag.create(name: "JS")
Tag.create(name: "Unneccessary Note")
Tag.create(name: "#Organized")
NoteTag.create(tag: tag_one, note: note_one )
NoteTag.create(tag: tag_two, note: note_one)