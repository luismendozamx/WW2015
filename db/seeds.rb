# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create!(first_name: "Luis", last_name: "Mendoza", email: "luis@mendoza.io", password: "luismendoza")
User.create!(first_name: "Enrique", last_name: "Mendoza", email: "luis@luismendoza.mx", password: "luismendoza")

Day.create(name: "Viernes 6", day: 6)
Day.create(name: "Sábado 7", day: 7)
Day.create(name: "Domingo 8", day: 8)

Category.create(name: "Expertas") #1
Category.create(name: "Cooking") #2
Category.create(name: "Fitness") #3
Category.create(name: "Wellness") #4
Category.create(name: "Business") #5
Category.create(name: "Self Awarness") #6

Location.create(name: "Workshops")
Location.create(name: "Conferencias")

Speaker.create(first_name: "MARGARITA", last_name: "ZAVALA", category_id: 1, description: "MILITANTE Y CONSEJERA DEL PARTIDO ACCIÓN NACIONAL", bio: "Margarita Zavala es militante del Partido Acción Nacional. Consejera Nacional del PAN desde 1991, donde se desempeñó entre otros cargos como Directora Jurídica y Secretaria de Promoción Política de la Mujer. Siempre se ha considerado defensora de la equidad de género y fue promotora de la creación del Instituto Nacional de las Mujeres.")
Event.create(speaker_id: 1, day_id: 2, time: "16:00 - 17:00", slot: 12, name: "LA PARTICIPACIÓN DE LA MUJER EN LA POLÍTICA", description: "En esta conferencia Margarita Zavala nos comparte su experiencia de vida y nos platica sobre el papel que ha venido desempañando la mujer en estos últimos años dentro del ámbito político además de los retos y oportunidades que enfrenta.")

Speaker.create(first_name: "DOMINIKA", last_name: "PALETA", category_id: 1, description: "ACTRIZ Y CONDUCTORA", bio: "Actriz y conductora, ha protagonizado e interpretado papeles de villana en telenovelas. Incursionó en el mundo de la conducción y el doblaje de voces en las películas \"Tinker Bell y el Tesoro Perdido\”. Fundó su sitio \"Placeres Orgánicos\” donde comparte tips de vida saludable. Inauguró su primer tienda \"Amores y Sabores\”.")
Event.create(speaker_id: 2, day_id: 1, time: "17:00 - 18:00", slot: 2, name: "EFECTO DETOX", description: "En esta conferencia, Dominika nos hablará de la importancia de una alimentación sana, alcalina y libre de toxinas.")

Speaker.create(first_name: "OLIVIA", last_name: "PERALTA", category_id: 1, description: "CONDUCTORA Y EMPRESARIA", bio: "Olivia Peralta es una joven conductora y empresaria quien participó en el programa Picnic. Oli ha combinado la conducción junto con un proyecto llamado Mundo Rosa y un libro publicado en 2011, que se convirtió en Best Seller.")
Event.create(speaker_id: 3, day_id: 2, time: "18:00 - 19:00", slot: 14, name: "RETOS DE LA MUJER LABORAL", description: "En esta conferencia, Olivia nos compartirá su experiencia de como la sociedad la percibe a la mujer laboral.")

Speaker.create(first_name: "HILDELISA", last_name: "BELTRÁN", category_id: 1, description: "MAKE UP ARTIST, BLOGGER", bio: "Hildelisa es Makeup Artist Profesional, certificada por la Make-Up Designory New York. Su proyecto BeautyBox, es la primera comunidad virtual de belleza en México. Calificada como una líder de opinión y empresaria reconocida, que sin duda alguna, ha revolucionado el tema de belleza en México.")
Event.create(speaker_id: 4, day_id: 2, time: "19:00 - 20:00", slot: 15, name: "ENCUENTRA LA BELLEZA QUE HAY EN TI", description: "Hildelisa nos dará tips de belleza y nos hablará sobre varios puntos que puedes identificar en ti para lucir tu potencial.")

Speaker.create(first_name: "KARINA", last_name: "VELASCO", category_id: 1, description: "CONDUCTORA, AUTORA, HEALTH COACH", bio: "Ha logrado fusionar sus dos pasiones: los medios de comunicación y disciplinas holísticas. Autora de los best sellers en español: \"Del Punto A al Punto G\" y \"El Arte de la Vida Sana\", su primer eBook: \"Amor Sagrado\", una guía holística sobre la sexualidad de la nueva era. El año pasado salió a la venta su nuevo libro \"Los Colores del Amor\".")
Event.create(speaker_id: 5, day_id: 3, time: "11:00 - 12:00", slot: 18, name: "LOS COLORES DEL AMOR", description: "Aprenderás herramientas poderosas para retomar tu poder como mujer y atraer mas amor en tu vida. Descubrirás los diferentes colores del amor que son parte de tu ser, además de cómo utilizarlos para ser una mujer íntegra y relacionarte de una manera más saludable.")
Workshop.create(title: "SHAKTI DANCE", description: "Exploraremos el poder de la energía sexual en nuestro cuerpo a través del baile y el movimiento. Con estas herramientas armonizaremos nuestro cuerpo despertando nuestros sentidos y liberando emociones para lograr que la energía orgásmica circule.")

Speaker.create(first_name: "EDELMIRA", last_name: "CÁRDENAS", category_id: 1, description: "MASTER EN SEXOLOGÍA", bio: "Directora del proyecto a nivel nacional \"Educación Sexual a Domicilio\". Educadora Sexual de Durex y Sico. Columnista de Sexualidad del portal de Fernanda Familiar. Actualmente participa en diversos programas como: Está Cañón con Yordi Rosado (Unicable) y Miembros al Aire (Unicable), entre otros.")
Event.create(speaker_id: 6, day_id: 1, time: "18:00 - 19:00", slot: 3, name: "AUTOESTIMA SEXUAL", description: "Aprenderás herramientas poderosas para retomar tu poder como mujer y atraer mas amor en tu vida. Descubrirás los diferentes colores del amor que son parte de tu ser, además de cómo utilizarlos para ser una mujer íntegra y relacionarte de una manera más saludable.")

Speaker.create(first_name: "NATHALY", last_name: "MARCUS", category_id: 1, description: "NUTRIÓLOGA, DIRECTORA DE BIENESTA", bio: "Licenciada en Nutrición y Ciencia de los Alimentos, desde siempre se sintió atraída por la prevención, el autocuidado y la sanación integral. Dirige BIENESTA, Centro de Salud Integral basado en la Medicina Funcional.")
Speaker.create(first_name: "SHULAMIT", last_name: "GRABER", category_id: 1, description: "PSICÓLOGA, TERAPEUTA Y AUTORA", bio: "Psicóloga clínica y terapeuta de pareja y familiar con más de 25 años de experiencia. Ha impartido diversos talleres y conferencias. Escribió el libro testimonial \"Agonía en la Incertidumbre\", con la idea de que las personas pueden resignificar sus vivencias.")
Speaker.create(first_name: "NATHALY MARCUS Y", last_name: "SHULAMIT GRABER", category_id: 7)
Event.create(speaker_id: 9, day_id: 2, time: "11:00 - 12:00", slot: 7, name: "MEDICINA MENTE/CUERPO: CÓMO ESCUCHAR-NOS", description: "En esta conferencia, Nathaly y la Dra. Shulamit nos hablarán sobre la medicina funcional, sobre como saber escucharnos y como llevar un estilo de vida más saludable en base a hábitos y alimentación. ")

Speaker.create(first_name: "AIDA", last_name: "ROMÁN", category_id: 1, description: "MEDALLISTA OLÍMPICA, EMBAJADORA DE BANAMEX", bio: "Considerada la máxima ganadora de preseas para la UNAM en la Olimpiada Nacional. En las Olimpiadas de Londres 2012 obtuvo la medalla de plata en el tiro con arco. En la Copa del Mundo de Tiro con Arco en LAUSANA, Suiza, se apoderó de dos medallas de oro.")
Speaker.create(first_name: "SUSANA", last_name: "FERRANDO", category_id: 1, description: "PRESIDENTA DEL CONSEJO DE MUJERES BANAMEX", bio: "Susana Ferrando es la Presidenta del Consejo de Mujeres Banamex de México, ella tiene bajo su responsabilidad la identificación de riesgos Legales, las Franquicias Banamex y la Reputación que pueda impactar al Grupo Financiero.")
Speaker.create(first_name: "ALEJANDRA", last_name: "LLANEZA", category_id: 1, description: "JUGADORA PROFESIONAL DE LA LPGA Y EMBAJADORA DE BANAMEX", bio: "Ha representado a México en eventos a nivel mundial como jugadora profesional de la LPGA.")
Speaker.create(first_name: "AIDA ROMÁN, SUSANA", last_name: "FERRANDO Y ALEJANDRA LLANEZA", category_id: 7)
Event.create(speaker_id: 13, day_id: 2, time: "17:00 - 18:00", slot: 13, name: "LOS CAMINOS HACIA EL ÉXITO", description: "En este panel, las ponente, nos comparten sus experiencias de vida y los caminos que han seguido con sus diferentes obstáculos, logros y oportunidades para llegar a ser las grandes mujeres de éxito que son.")

Speaker.create(first_name: "MAR", last_name: "ABASCAL", category_id: 1, description: "PUBLISHER", bio: "Publisher de revistas femeninas en México y Latinoamérica en Editorial Televisa, teniendo a su cargo los títulos de Vanidades, Marie Claire, Vanidades novias y Grazia.")
Event.create(speaker_id: 14, day_id: 1, time: "16:00 - 17:00", slot: 1, name: "10 REGLAS DE MODA Y BELLEZA PARA LUCIR IMPECABLE", description: "Mar nos comparte increíbles tips que podemos aplicar para tener una imágen segura y atractiva. ¡No te pierdas sus consejos!")

