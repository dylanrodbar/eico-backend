# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Sitios de interés
Site.create({title: "titulo1", description: "description1"})
Site.create({title: "titulo2", description: "description2"})
Site.create({title: "titulo3", description: "description3"})
Site.create({title: "titulo4", description: "description4"})
Site.create({title: "titulo5", description: "description5"})
Site.create({title: "titulo6", description: "description6"})

#Servicios
Service.create({title: "titulo1", description: "description1"})
Service.create({title: "titulo2", description: "description2"})
Service.create({title: "titulo3", description: "description3"})
Service.create({title: "titulo4", description: "description4"})
Service.create({title: "titulo5", description: "description5"})
Service.create({title: "titulo6", description: "description6"})

#Tipos de usuario
Usertype.create({name: "Estudiante"})
Usertype.create({name: "Director"})
Usertype.create({name: "Administrador"})
Usertype.create({name: "Graduado"})
Usertype.create({name: "Funcionario"})

#Tipos de calificación
Ratingtype.create({name: "Relevante"})
Ratingtype.create({name: "Indiferente"})
Ratingtype.create({name: "Emocionante"})


#Usuarios
User.create({username: "dylanrodbar", password: "Dylan123456", email: "dylan123@gmail.com", title: "llenar", profession: "llenar", workplace: "llenar", media: "https://res.cloudinary.com/poppycloud/image/upload/v1528784869/qmhbjbem3xsczqycxbtn.jpg", usertype_id: 1})
User.create({username: "albertorodbar", password: "Alberto123456", email: "alberto123@gmail.com", title: "llenar", profession: "llenar", workplace: "llenar", media: "https://res.cloudinary.com/poppycloud/image/upload/v1528784869/qmhbjbem3xsczqycxbtn.jpg", usertype_id: 4})


Post.create({title: "Primer publicación", description: "Primera descripción", video: "Primer video", date: "2018-02-02", media: "https://res.cloudinary.com/poppycloud/image/upload/v1528818962/gerhhqogjqndqyjkhoxc.jpg", user_id: 1})
Post.create({title: "Segunda publicación", description: "Segunda descripción", video: "Segundo video", date: "2018-02-03", media: "https://res.cloudinary.com/poppycloud/image/upload/v1528815838/mz7iyumqenyinfmwn5rj.jpg", user_id: 1})
Post.create({title: "Tercera publicación", description: "Tercera descripción", video: "Tercer video", date: "2018-02-03", media: "https://res.cloudinary.com/poppycloud/image/upload/v1528807071/lniyl4lhuq0ept1vejsp.jpg", user_id: 2})


Calendar.create({title: "calendario1", description: "descripcion1", date: "2018-02-02"})
Calendar.create({title: "calendario2", description: "descripcion2", date: "2018-03-02"})
Calendar.create({title: "calendario2", description: "descripcion2", date: "2018-03-02"})
Calendar.create({title: "calendario2", description: "descripcion2", date: "2018-03-03"})
Calendar.create({title: "calendario3", description: "descripcion3", date: "2018-03-03"})

Project.create({projectname: "Proyecto1", workplace: "Lugar1", initialdate: "2018-02-05", finaldate: "2018-02-10", description: "Descripción 1", user_id: 1})
Project.create({projectname: "Proyecto2", workplace: "Lugar3", initialdate: "2018-02-05", finaldate: "2018-02-10", description: "Descripción 2", user_id: 2})
Project.create({projectname: "Proyecto3", workplace: "Lugar3", initialdate: "2018-02-05", finaldate: "2018-02-10", description: "Descripción 3", user_id: 1})


Visit.create({date: "2018-02-02"})
Visit.create({date: "2018-02-02"})
Visit.create({date: "2018-02-02"})
Visit.create({date: "2018-02-03"})
Visit.create({date: "2018-02-03"})