# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name: "Luis", last_name: "Mendoza", email: "luis@mendoza.io", password: "luismendoza")
User.create!(first_name: "Enrique", last_name: "Mendoza", email: "luis@luismendoza.mx", password: "luismendoza")

Category.create(name: "Expertas") #1
Category.create(name: "Cooking") #2
Category.create(name: "Fitness") #3
Category.create(name: "Wellness") #4
Category.create(name: "Business") #5
Category.create(name: "Self Awarness") #6

Location.create(name: "Workshops")
Location.create(name: "Conferencias")

Speaker.create(first_name: "MARGARITA", last_name: "ZAVALA", category_id: 1, description: "MILITANTE Y CONSEJERA DEL PARTIDO ACCIÓN NACIONAL", bio: "Margarita Zavala es militante del Partido Acción Nacional. Consejera Nacional del PAN desde 1991, donde se desempeñó entre otros cargos como Directora Jurídica y Secretaria de Promoción Política de la Mujer. Siempre se ha considerado defensora de la equidad de género y fue promotora de la creación del Instituto Nacional de las Mujeres.")
Event.create(speaker_id: 1, name: "LA PARTICIPACIÓN DE LA MUJER EN LA POLÍTICA", description: "En esta conferencia Margarita Zavala nos comparte su experiencia de vida y nos platica sobre el papel que ha venido desempañando la mujer en estos últimos años dentro del ámbito político además de los retos y oportunidades que enfrenta.")

Speaker.create(first_name: "DOMINIKA", last_name: "PALETA", category_id: 1, description: "ACTRIZ Y CONDUCTORA", bio: "Actriz y conductora, ha protagonizado e interpretado papeles de villana en telenovelas. Incursionó en el mundo de la conducción y el doblaje de voces en las películas \"Tinker Bell y el Tesoro Perdido\”. Fundó su sitio \"Placeres Orgánicos\” donde comparte tips de vida saludable. Inauguró su primer tienda \"Amores y Sabores\”.")
Event.create(speaker_id: 2, name: "EFECTO DETOX", description: "En esta conferencia, Dominika nos hablará de la importancia de una alimentación sana, alcalina y libre de toxinas.")

Speaker.create(first_name: "OLIVIA", last_name: "PERALTA", category_id: 1, description: "CONDUCTORA Y EMPRESARIA", bio: "Olivia Peralta es una joven conductora y empresaria quien participó en el programa Picnic. Oli ha combinado la conducción junto con un proyecto llamado Mundo Rosa y un libro publicado en 2011, que se convirtió en Best Seller.")
Event.create(speaker_id: 3, name: "RETOS DE LA MUJER LABORAL", description: "En esta conferencia, Olivia nos compartirá su experiencia de como la sociedad la percibe a la mujer laboral.")

Speaker.create(first_name: "HILDELISA", last_name: "BELTRÁN", category_id: 1, description: "MAKE UP ARTIST, BLOGGER", bio: "Hildelisa es Makeup Artist Profesional, certificada por la Make-Up Designory New York. Su proyecto BeautyBox, es la primera comunidad virtual de belleza en México. Calificada como una líder de opinión y empresaria reconocida, que sin duda alguna, ha revolucionado el tema de belleza en México.")
Event.create(speaker_id: 4, name: "ENCUENTRA LA BELLEZA QUE HAY EN TI", description: "Hildelisa nos dará tips de belleza y nos hablará sobre varios puntos que puedes identificar en ti para lucir tu potencial.")

Speaker.create(first_name: "KARINA", last_name: "VELASCO", category_id: 1, description: "CONDUCTORA, AUTORA, HEALTH COACH", bio: "Ha logrado fusionar sus dos pasiones: los medios de comunicación y disciplinas holísticas. Autora de los best sellers en español: \"Del Punto A al Punto G\" y \"El Arte de la Vida Sana\", su primer eBook: \"Amor Sagrado\", una guía holística sobre la sexualidad de la nueva era. El año pasado salió a la venta su nuevo libro \"Los Colores del Amor\".")
Event.create(speaker_id: 5, name: "LOS COLORES DEL AMOR", description: "Aprenderás herramientas poderosas para retomar tu poder como mujer y atraer mas amor en tu vida. Descubrirás los diferentes colores del amor que son parte de tu ser, además de cómo utilizarlos para ser una mujer íntegra y relacionarte de una manera más saludable.")
Workshop.create(title: "SHAKTI DANCE", description: "Exploraremos el poder de la energía sexual en nuestro cuerpo a través del baile y el movimiento. Con estas herramientas armonizaremos nuestro cuerpo despertando nuestros sentidos y liberando emociones para lograr que la energía orgásmica circule.")