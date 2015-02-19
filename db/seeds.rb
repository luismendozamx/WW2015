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
Workshop.create(title: "SHAKTI DANCE", speaker_id: 5, category_id: 3, day_id: 3, length: 3, time: "12:30 - 14:00", slot: 13, description: "Exploraremos el poder de la energía sexual en nuestro cuerpo a través del baile y el movimiento. Con estas herramientas armonizaremos nuestro cuerpo despertando nuestros sentidos y liberando emociones para lograr que la energía orgásmica circule.")

Speaker.create(first_name: "EDELMIRA", last_name: "CÁRDENAS", category_id: 1, description: "MASTER EN SEXOLOGÍA", bio: "Directora del proyecto a nivel nacional \"Educación Sexual a Domicilio\". Educadora Sexual de Durex y Sico. Columnista de Sexualidad del portal de Fernanda Familiar. Actualmente participa en diversos programas como: Está Cañón con Yordi Rosado (Unicable) y Miembros al Aire (Unicable), entre otros.")
Event.create(speaker_id: 6, day_id: 1, time: "18:00 - 19:00", slot: 3, name: "SEXUALIDAD, EL PLACER DE LO PROHIBIDO", description: "Aprenderás herramientas poderosas para retomar tu poder como mujer y atraer mas amor en tu vida. Descubrirás los diferentes colores del amor que son parte de tu ser, además de cómo utilizarlos para ser una mujer íntegra y relacionarte de una manera más saludable.")

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

Speaker.create(first_name: "CHRISTINA", last_name: "BERTON", category_id: 1, description: "FUNDADORA DE AMARA FUNDACIÓN PRO AUTOESTIMA", bio: "Fundadora de Amara Fundación Pro Autoestima, también Directora y Asesora Global del Proyecto Dove para la Autoestima en México. Es una mujer apasionada y comprometida con la labor de promover una alta autoestima.")
Event.create(speaker_id: 15, day_id: 2, time: "12:00 - 13:00", slot: 8, name: "LIBERANDO ESTEREOTIPOS", description: "En esta conferencia Christina invita a los participantes a una reflexión personal sobre imagen corporal, autoestima  y el impacto de los medios sobre ambas, buscando dejar un mensaje de auto afirmación a través de ejercicios de auto descubrimiento que revisan las creencias limitantes y los estereotipos de belleza.")
Workshop.create(title: "CRECIENDO JUNTOS", category_id: 6, speaker_id: 15, day_id: 1, length: 1, time: "18:00 - 19:00", slot: 3, description: "Exploraremos el poder de la energía sexual en nuestro cuerpo a través del baile y el movimiento. Con estas herramientas armonizaremos nuestro cuerpo despertando nuestros sentidos y liberando emociones para lograr que la energía orgásmica circule.")

Speaker.create(first_name: "LIZZY", last_name: "CANCINO", category_id: 1, description: "EMPRESARIA, SOCIA DE JERRY ML", bio: "Empresaria exitosa con más de 20 años de trayectoria en promoción artística y desarrollando estrategias para consolidar carreras artísticas. Socia de Jerry ML, una agencia consolidada y exitosa con 9 años de trayectoria.")
Event.create(speaker_id: 16, day_id: 1, time: "19:00 - 20:00", slot: 4, name: "DESARROLLANDO TALENTOS", description: "En esta plática Lizzy nos hablará sobre su experiencia en el mundo artístico y como se desarrolla al artista para poder llegar al éxito.")

Speaker.create(first_name: "ANA VICTORIA", last_name: "GARCIA", category_id: 1, description: "FUNDADORA Y DIRECTORA DE V147", bio: "Ana Victoria es fundadora y Directora General de la organización Victoria 147, la cual es una plataforma de aceleración y networking que se enfoca en el desarrollo y empoderamiento de la mujer emprendedora y ejecutiva en México.")
Event.create(speaker_id: 17, day_id: 2, time: "10:00 - 11:00", slot: 6, name: "CÓMO EMPRENDER Y NO MORIR EN EL INTENTO", description: "En este panel Ana Victoria nos presentará a algunas de las emprendedoras de V147, quienes compartirán sus experiencias y claves de éxito.")

#TBD
Speaker.create(first_name: "TBD", last_name: "", category_id: 7)
Event.create(speaker_id: 18, day_id: 2, time: "09:00 - 10:00", slot: 5, name: "TBD")
Event.create(speaker_id: 18, day_id: 2, time: "13:00 - 14:00", slot: 9, name: "TBD")
Event.create(speaker_id: 18, day_id: 2, time: "15:00 - 16:00", slot: 11, name: "LUNCH")

Speaker.create(first_name: "NATALIA", last_name: "LÓPEZ", category_id: 1)
Event.create(speaker_id: 19, day_id: 2, time: "14:00 - 15:00", slot: 10, name: "LOS VALORES DE LA MUJER MEXICANA")

Speaker.create(first_name: "ABASEH", last_name: "MIRVALI", category_id: 1)
Event.create(speaker_id: 20, day_id: 3, time: "12:00 - 13:00", slot: 19, name: "PANEL DE CULTURA")

Speaker.create(first_name: "Jorge Lestrade, Mónica Patiño, Elena Reygadas,", last_name: "Ixchel Ornelas y Josefina Santacruz", category_id: 7)
Event.create(speaker_id: 21, day_id: 3, time: "13:00 - 14:00", slot: 20, name: "PANEL DE GASTRONOMÍA", subtitle: "EL PAPEL DE LA MUJER EN LA COCINA CONTEMPORÁNEA")

#Workshops

# Cooking
Workshop.create(title: "TBD", speaker_id: 18, category_id: 2, day_id: 1, length: 2, time: "16:00 - 18:00", slot: 2, description: "Sonia nos dará un demostración de todo lo que comprende crear un pastel delicioso y original. ")

Speaker.create(first_name: "SONIA", last_name: "ARIAS", category_id: 2, description: "PASTRY CHEF", bio: "Desde los ocho años comenzó su interés por la repostería. Realizó sus estudios en el Culinary Institute of America en Nueva York. Actualmente está al frente de la repostería del Restaurante Jaso, considerado como uno de los mejores restaurantes en México.")
Workshop.create(title: "PASTEL DE LA A A LA Z", speaker_id: 22, category_id: 2, day_id: 1, length: 2, time: "18:00 - 20:00", slot: 2, description: "Sonia nos dará un demostración de todo lo que comprende crear un pastel delicioso y original. ")

Speaker.create(first_name: "PILAR", last_name: "MUÑOZ", category_id: 2, description: "HEALTH COACH, MERCADOTECNIA Y COMUNICACIÓN EN MODA", bio: "Estudió en INN: Institute for Integrative Nutrition para certificarse como health coach. Tiene un blog llamado @thewholetable en dónde comparte recetas saludables y muy fáciles.")
Workshop.create(title: "NUTRICÓN CONSCIENTE / RECETAS FÁCILES Y PRÁCTICAS", speaker_id: 23, category_id: 2, day_id: 2, length: 2, time: "09:00 - 11:00", slot: 4, description: "Un taller para cambiar hábitos, saber qué comer, con recetas deliciosas y facilísimas de hacer de @thewholetable.")

Speaker.create(first_name: "ALEJANDRA", last_name: "GARZA", category_id: 2, description: "HEALTH COACH - DIRECTORA DE WOMEN´S WEEKEND", bio: "Directora de Women ́s Weekend México. AADP Health Coach certificada por el Institute for Integrative Nutrition de Nueva York. Responsable de proyectos sociales, educativos y culturales para el Mercado Hispano.")
Speaker.create(first_name: "MARIEN", last_name: "GARZA", category_id: 2, description: "HEALTH COACH - DIRECTORA DE WOMEN´S WEEKEND", bio: "Licenciada en Nutrición y Ciencia de los Alimentos por la Universidad Iberoamericana. Maestra en Ingeniería en Imagen Pública con especialidad en Imagen Física. Autora de 3 libros bajo el sello de la editorial Editmusa (2010): Menopausia, Osteoporosis, Obesidad Infantil.")
Speaker.create(first_name: "MARIEN GARZA Y", last_name: "ALEJANDRA GARZA", category_id: 7)
Workshop.create(title: "MI RETO ANTE LA OBESIDAD INFANTIL", speaker_id: 26, category_id: 2, day_id: 3, length: 3, time: "12:30 - 14:00", slot: 12, description: "Si te interesa darle la mejor nutrición a tus hijos y te preocupa el problema de la mala nutrición (sobrepeso y obesidad) que pueden tener, en esta plática encontrarás tips, sugerencias, recomendaciones que te ayudaran en este gran reto.")

Speaker.create(first_name: "DIANA", last_name: "TENA", category_id: 2, description: "CAKE DESIGNER, PASTRY CHEF", bio: "Ingeniera industrial egresada del ITESM CCM y Chef Pastelero egresada del programa del ISMM e ISMM Buenos Aires.  En Abril del 2012 inauguró la primer tienda de MOKA Cake&Art,  un concepto de pastelería artesanal personalizada, con diseños únicos y garantía en sabor.")
Workshop.create(title: "CREANDO ARTE EN REPOSTERÍA", speaker_id: 27, category_id: 2, day_id: 2, length: 2, time: "18:00 - 20:00", slot: 9, description: "En este taller aprenderás a decorar con diferentes duyas y tipos de betunes, para que puedas en casa decorar cupcakes, galletas y pasteles. ¡Puede ser algo muy divertido para realizar con tus hijos o un lindo detalle para regalar! El taller es de decoración 100% práctico y llevarás las recetas de los betunes a casa.")

Speaker.create(first_name: "CECILIA", last_name: "DE LOS RÍOS", category_id: 2, description: "WELLNESS CHEF, HEALTH COACH", bio: "Ceci se certificó como Health Coach y Nutrición Holística. También está certificada como Coach de Vida y Espiritual por el ICT Soul Coach. Su misión es ayudar a las personas a descubrir su potencial, a conectar con su esencia y a nutrir su cuerpo físico y emocional.")
Workshop.create(title: "NUTRICIÓN EMOCIONAL Y VITALIDAD FÍSICA", speaker_id: 28, category_id: 4, day_id: 3, length: 2, time: "11:30 - 13:00", slot: 14, description: "En este Taller obtendrás consejos, tips y recetas para lograr un mayor equilibrio y sentirte saludable en todos los aspectos de tu vida.")

Speaker.create(first_name: "RENEÉ", last_name: "SOLARI", category_id: 2, description: "BIÓLOGA, EXPERTA EN COCINA VEGANA", bio: "Bióloga de formación y botánica de corazón. Actualmente tiene un restaurante en la condesa \"Pápalo y Papalotl\", dirige un laboratorio Vegano de productos saludables donde también imparte cursos, diplomados y talleres.")
Workshop.create(title: "COCINA VEGANA SIN GLUTEN", speaker_id: 29, category_id: 2, day_id: 3, length: 3, time: "11:00 - 12:00", slot: 11, description: "En este Taller obtendrás consejos, tips y recetas para lograr un mayor equilibrio y sentirte saludable en todos los aspectos de tu vida.")

Speaker.create(first_name: "MAGNOLIA", last_name: "MAGOS", category_id: 2, description: "EXPERTA EN HUERTOS URBANOS ORGÁNICOS", bio: "En 2008, Magnolia creó “Mi huerto en Casa”, proyecto dedicado a impartir talleres de agricultura orgánica, huertos urbanos y la autosuficiencia alimentaria. El principal objetivo es difundir las prácticas de siembra urbana.")
Workshop.create(title: "MI HUERTO EN CASA", speaker_id: 30, category_id: 2, day_id: 2, length: 2, time: "16:00 - 18:00", slot: 8, description: "Aprenderán  a elaborar  composta, a darle el mantenimiento adecuado y cosechar tierra fértil para el huerto. Realizaremos la práctica de germinación de semillas y muchos tips para iniciar en casa.")

# Fitness
Speaker.create(first_name: "JOHANNA", last_name: "LOVERA", category_id: 3, description: "FUNDADORA DE YONI SHAKTI", bio: "Fundadora de la marca YONI SHAKTI, el primer estudio de Pole Dance en México desde 2006 con una propuesta deportiva. Con más de 6 años de experiencia, es la primera mexicana en estructurar una técnica de enseñanza del Pole Dance.")
Workshop.create(title: "POLE THERAPY", speaker_id: 31, category_id: 3, day_id: 2, length: 2, time: "12:00 - 14:00", slot: 6, description: "Los beneficios físicos y terapéuticos de esta disciplina son excepcionales. No se trata sólo de hacer acrobacias y ganar fuerza, sino de la conexión que se logra con tu feminidad y con tu mujer sensual interna.")

Speaker.create(first_name: "LETICIA", last_name: "ROMAN", category_id: 3, description: "ENTRENADORA DE FITNESS, CREADORA DE SERSANA BODY METHOD", bio: "Originaria de Brooklyn, Nueva York. Lleva más de diez años como entrenadora de fitness. Lety ha desarrollado y perfeccionado un método de entrenamiento físico integral confiable con resultados increíbles y duraderos. El programa Ser sana Body Method, se centra en crear hábitos y un estilos de vida saludables, teniendo como eje la actividad física.")
Workshop.create(title: "BODY METHOD", speaker_id: 32, category_id: 3, day_id: 2, length: 2, time: "10:00 - 12:00", slot: 5, description: "Se compone de una serie de entrenamientos dinámicos diseñados para activar el metabolismo, quemar grasa, esculpir el cuerpo, limpiar los órganos, adquirir flexibilidad y fuerza.")
Workshop.create(title: "BODY METHOD FULL WORKOUT", speaker_id: 32, category_id: 3, day_id: 3, length: 3, time: "11:00 - 12:30", slot: 13, description: "Se compone de una serie de entrenamientos dinámicos diseñados para activar el metabolismo, quemar grasa, esculpir el cuerpo, limpiar los órganos, adquirir flexibilidad y fuerza.")

Speaker.create(first_name: "JÑANA", last_name: "DAKINI", category_id: 3, description: "FUNDADORA Y DIRECTORA DE YOGA ESPACIO", bio: "Jñana Dakini es la fundadora de los centros Yoga Espacio. Es co-fundadora del programa de yoga del Centro Budista de la Cd. de México. Ha creado programas para Discovery Channel, Discovery Health, Aomm TV en España y ha colaborado en programas del canal 11 y canal 13.")
Workshop.create(title: "YOGA PARA DESPERTAR TU POTENCIAL", speaker_id: 33, category_id: 3, day_id: 2, length: 2, time: "08:00 - 10:00", slot: 4, description: "En este taller, Dakini nos llevará de la mano en una secuencia de posturas para poder conectar con nuestro ser y nuestro potencial femenino.")

Speaker.create(first_name: "MARY", last_name: "ENTEBI", category_id: 3, description: "BAILARINA PROFESIONAL", bio: "Mary Entebi en el 2010, se mudó a San Francisco por 6 meses para dedicárselo a la danza. Probó distintas técnicas de danza extática y descubrió una forma de meditación en movimiento a través del baile. A su regreso, creó ExtaDanza.")
Workshop.create(title: "FOLLOW YOUR BODY", speaker_id: 34, category_id: 3, day_id: 1, length: 3, time: "17:00 - 18:30", slot: 2, description: "ExtaDanza es meditación a través del movimiento que permite que tu cuerpo se exprese y se libere. A través del baile y la respiración, empezaremos una nueva relación con nosotros mismos. Al conectar con nuestro cuerpo, conectamos con nuestra esencia y con la parte más profunda de nosotros. Podemos despertar nuestra intuición y así estar presente con una mayor conciencia y atención a lo que sucede dentro y fuera de nosotros.")

Speaker.create(first_name: "MAR", last_name: "VARGAS", category_id: 3, description: "BAILARINA DE RITMOS LATINOS", bio: "Con más de 7 años de experiencia en la danza y la docencia, Mariana ha notado que a través del baile la mujer latina redescubre la pasión que llevan dentro, por medio del movimiento y la conciencia corporal, comprobando así, que las mujeres latinas aparte de profesionistas, también son sensuales.")
Workshop.create(title: "BACHATA: SENSUALIDAD LATINA", speaker_id: 35, category_id: 3, day_id: 2, length: 3, time: "17:00 - 18:30", slot: 9, description: "En este taller, Mar nos introduce en el mundo de la bachata. Desde su origen y pasos básicos, encontrando así una divertida forma de expresar la sensualidad.")

Speaker.create(first_name: "MARLENE", last_name: "CARBONELL", category_id: 7)
Workshop.create(title: "LADY SALSA", speaker_id: 36, category_id: 3, day_id: 1, length: 1, time: "16:00 - 17:00", slot: 1)

Speaker.create(first_name: "CARLA", last_name: "REMES", category_id: 7)
Workshop.create(title: "SENSUAL JAZZ", speaker_id: 37, category_id: 3, day_id: 2, length: 2, time: "14:00 - 16:00", slot: 7)

Speaker.create(first_name: "MARIBEL", last_name: "SANABRIA", category_id: 7)
Workshop.create(title: "BUDOKON: BALANCE BODY & SOUL", speaker_id: 38, category_id: 3, day_id: 1, length: 3, time: "18:30 - 20:00", slot: 3)

Speaker.create(first_name: "ADRIANA", last_name: "DÁVILA", category_id: 7)
Workshop.create(title: "BALLET BABY", speaker_id: 39, category_id: 3, day_id: 2, length: 1, time: "16:00 - 17:00", slot: 8)
Workshop.create(title: "SPINNING EN LA OSCURIDAD", speaker_id: 39, category_id: 3, day_id: 2, length: 3, time: "18:30 - 20:00", slot: 10)

# Wellness
Speaker.create(first_name: "BÁRBARA", last_name: "RICO", category_id: 4, description: "FUNDADORA DE ELIXIR", bio: "Bárbara Rico es una exitosa emprendedora mexicana y fundadora de Elixir, compañía pionera en traer a México programas de desintoxicación y jugoterapia que ofrecen productos 100% frescos producidos a diario y con el sello de calidad e higiene Kosher.")
Workshop.create(title: "AGUA ALCALINA Y JUGOTERAPIA", speaker_id: 40, category_id: 4, day_id: 2, length: 1, time: "16:00 - 17:00", slot: 9, description: "El programa de detox más importante de México hablará sobre los mitos, realidades y efectos de hacer un detox en el organismo y la importancia de hacerlo con una hidratación alcalina.")

Speaker.create(first_name: "DR. JAVIER", last_name: "RUIZ", category_id: 4, description: "DERMATÓLOGO", bio: "Médico especialista en Dermatología, Cirugía Dermatológica y Dermato-oncología con posgrados en Dermatología Cosmética, Tricología y Enfermedades del cabello.  Actualmente es Director Médico y fundador de DERMEDICA.")
Workshop.create(title: "COMO MEJORAR LA PIEL A BASE DE LA ALIMENTACIÓN.", speaker_id: 41, category_id: 4, day_id: 3, length: 1, time: "13:00 - 14:00", slot: 15, description: "El dermatólogo de las artistas, platicará y sobre como una alimentación balanceada, alcalina y basada en vegetales crudos, es el principal fundamento de un cutis sano y vibrante. ¡Confía, sus típs harán que tu piel cambie!")

Speaker.create(first_name: "ALEJANDRA", last_name: "URBINA", category_id: 4, description: "DISEÑADORA", bio: "Estudió la carrera de Diseño Gráfico. Participa en diferentes proyectos de diseño de interiores colaborando con la empresa Crearte Mobiliario y Andrea Bracho Studio Design. Fue colaboradora y coordinadora en D.F. del proyecto Eco Azul; para poder limpiar el derrame de petróleo ocurrido en el 2010 en el Golfo de México.")

Speaker.create(first_name: "FERNANDA", last_name: "ARAGONES", category_id: 4, description: "FASHION EXPERT", bio: "Escribo por que es lo único que me hace sentido (además de mi hija). Me confunden muchas cosas de la vida empezando por la comida. Escribo con pluma, máquina, computadora o cualquier cosa que me lo permita. Visto gente y sé de moda por que la vida me  lo enseñó.")
Workshop.create(title: "POWER YOUR STYLE", speaker_id: 43, category_id: 4, day_id: 1, length: 3, time: "18:30 - 20:00", slot: 3, description: "Una plática que habla sobre inseguridades, mujeres, estilo personal, de como aceptarte y amar tu imagen. Cómo puedes empoderarte a través de la moda y el estilo personal.")

Speaker.create(first_name: "SANDRA", last_name: "WEIL", category_id: 4, description: "DISEÑADORA DE MODA", bio: "Fundadora de Sandra Weil Couture se fundó en el año 2008 con la visión de crear bellos atuendos hechos a mano y de altísima calidad. Su especialización es la corsetería y el modelado.")
Workshop.create(title: "CUSTOMIZA TU ROPA", speaker_id: 44, category_id: 4, day_id: 1, length: 3, time: "16:00 - 17:30", slot: 1, description: "En este taller aprenderás a sacarle provecho a algunas prendas que ya no usas y que estabas planeando regalar.")

Speaker.create(first_name: "ADRIANA HURTADO Y", last_name: "ANA ISABEL IRAZABAL", category_id: 4, description: "CREADORAS DE OLIVIA Y TINTO - IMAGEN AMBIENTAL EN EVENTOS", bio: "Adriana y Ana Isabel crearon Olivia y Tinto. Agencia enfocada al diseño, planeación y producción de eventos usando muebles, accesorios, flores y detalles. Nuestra propuesta es crear ambientes que comuniquen un mensaje.")
Workshop.create(title: "ESTILO Y PERSONALIDAD A TRAVÉS DEL USO DE FLORES", speaker_id: 45, category_id: 4, day_id: 2, length: 2, time: "13:00 - 15:00", slot: 7, description: "En este taller Adriana y Ana Isabel nos enseñarán como comunicar a través del uso de flores el mensaje que deseamos transmitir. Así como a descubrir nuestra personalidad y estilo reflejado en éstas.")

Speaker.create(first_name: "ELIZABETH", last_name: "RANGEL", category_id: 4, description: "DIRECTORA DE CRAFTINGEEK", bio: "Liz Rangel es conocida por su canal de youtube y sitio web Craftingeek, Donde comparte nuevas técnicas, tendencias, materiales y artistas del mundo del making.")
Workshop.create(title: "KUSUDAMA FLOWER ART", speaker_id: 46, category_id: 4, day_id: 2, length: 3, time: "18:30 - 20:00", slot: 11, description: "En este taller Elizabeth nos enseña como reciclar hojas de revistas para crear hermosas flores que pueden usarse como centros de mesa. Nos compartirá las nuevas tendencias en el mundo del \"making y craft art\".")

Speaker.create(first_name: "LORETO", last_name: "GARCÍA", category_id: 5, description: "DIRECTORA DE EDUCACIÓN FINANCIERA GRUPO BANAMEX", bio: "Directora Ejecutiva de Cultura Organizacional y Educación Financiera en el Grupo Financiero Banamex.")
Workshop.create(title: "EL TECHO DE CRISTAL, A TRAVÉS DE LA VIDA", speaker_id: 47, category_id: 4, day_id: 1, length: 1, time: "17:30 - 18:30", slot: 2, description: "Hablará del reto de la mujer de hoy en el ámbito empresarial. Cuál es el rol de la mujer de hoy, a qué se enfrenta, qué ha cambiado y cómo preparase para cumplir los retos personales y profesionales.")

Workshop.create(title: "ATELLIER LANCOME: EL ARTE DE LUCIR BELLA A LA FRANCESA", speaker_id: 18, category_id: 4, day_id: 2, length: 2, time: "09:00 - 11:00", slot: 5)
Workshop.create(title: "ATELLIER LANCOME: EL ARTE DE LUCIR BELLA A LA FRANCESA", speaker_id: 18, category_id: 4, day_id: 3, length: 2, time: "10:00 - 11:30", slot: 13)

Speaker.create(first_name: "ALEJANDRA URBINA Y", last_name: "ANDREA BRACHO", category_id: 7)
Workshop.create(title: "RECREANDO, DECORA TU CASA RECICLANDO", speaker_id: 48, category_id: 4, day_id: 2, length: 2, time: "11:00 - 13:00", slot: 6)

Speaker.create(first_name: "NANCY", last_name: "RODRIGUEZ", category_id: 7)
Workshop.create(title: "JOYERÍA", speaker_id: 49, category_id: 4, day_id: 2, length: 3, time: "17:00 - 18:30", slot: 10)

# Fitness
Speaker.create(first_name: "ALEX", last_name: "QUIYONO", category_id: 3, description: "INSTRUCTOR DE YOGA", bio: "Lic. en Economía y Maestro en Finanzas del ITAM. Lleva veinte años como director de empresas del deporte y catorce años como instructor de Yoga. Co-fundador de Inspira Yoga. Autor del compendio de poemas \"CERO, el viaje de un loco\" y \"UNO, el camino del mago\".")
Workshop.create(title: "SOUL YOGA", speaker_id: 50, category_id: 3, day_id: 3, length: 2, time: "09:00 - 11:00", slot: 12, description: "Es un estilo de yoga creado por Alex. Cada sesión es temática, enfocada a un aspecto que inspire a mente, cuerpo y energía a trascender hacia el alma.")

# Cooking
Speaker.create(first_name: "LETICIA", last_name: "SAENZ", category_id: 7)
Workshop.create(title: "EL MUNDO DEL TÉ", speaker_id: 51, category_id: 2, day_id: 2, length: 3, time: "11:00 - 12:30", slot: 5)

Workshop.create(title: "POSTRES LIGEROS", speaker_id: 22, category_id: 2, day_id: 2, length: 3, time: "12:30 - 14:00", slot: 6)
Workshop.create(title: "TBD", speaker_id: 18, category_id: 2, day_id: 3, length: 2, time: "09:00 - 11:00", slot: 10)

# Self-Awerness
Speaker.create(first_name: "RAQUEL", last_name: "BESSUDO", category_id: 5, description: "MAESTRA EN HISTORIA DE MÉXICO", bio: "Con Diplomado en Literatura maya y náhuatl de la Facultad de Filosofía y Letras y la maestría en Historia de México en la UNAM, ha obtenido diversos reconocimientos y premios nacionales.")
Workshop.create(title: "LA MUJER EN EL MUNDO, LOGROS Y RETOS", speaker_id: 52, category_id: 6, day_id: 2, length: 1, time: "13:00 - 14:00", slot: 10, description: "Raquel nos compartirá su experiencia de vida como mujer exitosa y reconocida, cómo percibe la sociedad a la mujer y cómo empoderar nuestro potencial femenino. ")

Speaker.create(first_name: "ALEJANDRA", last_name: "DE LA FUENTE", category_id: 6, description: "CONDUCTORA", bio: "Con tan sólo 34 años de edad, es considerada una de las voces más importantes de la radio en el Estado de Veracruz. Actualmente, conduce su propio programa de radio. En este programa comparte créditos con Pedro Ferriz de Con y Adela Micha.")
Workshop.create(title: "COMPLEJO DE CENICIENTA", speaker_id: 53, category_id: 6, day_id: 2, length: 1, time: "10:00 - 11:00", slot: 7, description: "Esta plática habla sobre el miedo de las mujeres a la independencia.")

Speaker.create(first_name: "ANA PAULA", last_name: "DOMINGUEZ", category_id: 6, description: "FUNDADORA Y DIRECTORA DEL INSTITUTO MEXICANO DE YOGA, A.C.", bio: "Ana Paula es fundadora y directora del Instituto Mexicano de Yoga, A.C. y también es responsable de la organización y realización del Encuentro Nacional de Yoga y Expo Yoga. Autora de los libros: “Yoga para la felicidad, “La salud y otras cosas”, “El Mapa de la felicidad” y “Mamá te quiero Zen”.")
Workshop.create(title: "EL MAPA DE LA FELICIDAD", speaker_id: 54, category_id: 6, day_id: 1, length: 1, time: "19:00 - 20:00", slot: 4, description: "Taller práctico en donde exploraremos los obstáculos que nos impiden ser felices. Realizaremos un mapa de la felicidad para organizar las diferentes áreas que comprenden una vida equilibrada.")

Speaker.create(first_name: "KARLA", last_name: "RIVEROL", category_id: 6, description: "EXPERTA EN HERRAMIENTAS DE SANACIÓN", bio: "Experta en herramientas de sanación como: terapias de desbloqueo emocional, uso de velas, piedras de poder, terapia Nierika del campo punto cero, flores de bach, bioenergía, ashtanga vinyasa yoga, trabajo chamánico, diagnóstico metafísico, entre otras.")
Workshop.create(title: "LIBERA TU SER", speaker_id: 55, category_id: 6, day_id: 2, length: 3, time: "18:30 - 20:00", slot: 15, description: "Esta sesión está diseñada para ayudarte a soltar emociones que te mantienen anclada a eventos o experiencias que ya no son de utilidad. Para generar una nueva realidad, es necesario deshacerte de lo que ya no es útil. Si estás lista para caminar más ligera, esta sesión es para ti.")

Speaker.create(first_name: "MARTHA", last_name: "MAYER", category_id: 6, description: "HEALTH COACH, FUNDANDORA DE BAZAR HOLÍSTICO Y LUNCH SALUDABLE", bio: "Martha estudió psicología clínica con diferentes especialidades: Hipnosis clínica, PNL, terapia de arte, terapia cognitivo conductual, entre otras. Dedicada desde hace 3 años a dar asesoría y consultas en salud. Fundadora de 2 empresas enfocadas en el bienestar del ser humano.")
Workshop.create(title: "CÓMO SIENTO, COMO", speaker_id: 56, category_id: 6, day_id: 2, length: 1, time: "09:00 - 10:00", slot: 6, description: "Conocer, comprender y resolver la relación que hay en la manera en la que sentimos y la manera en la que comemos, para crear un estilo de vida saludable.")

Speaker.create(first_name: "ROXANA", last_name: "CASTAÑOS", category_id: 6, description: "MAESTRA ESPIRITUAL", bio: "Su formación espiritual comenzó a los catorce años con rituales de influencia tolteca en diferentes centros ceremoniales. Imparte meditaciones en grupo, terapias espirituales particulares, desbloqueos cuánticos y meditaciones personalizadas para activar el amor incondicional.")
Workshop.create(title: "EL PODER DE LA MEDITACIÓN", speaker_id: 57, category_id: 6, day_id: 3, length: 3, time: "09:00 - 10:30", slot: 16)
Workshop.create(title: "LA IMPORTANCIA DE SOLTAR", speaker_id: 57, category_id: 6, day_id: 3, length: 1, time: "10:30 - 11:30", slot: 17)

Speaker.create(first_name: "VICTORIA", last_name: "MARIN", category_id: 6, description: "EXPERTA EN TERAPIAS DE SANACIÓN", bio: "Apasionada por la terapia alternativa, ha dedicado los últimos 5 años al estudio de diferentes técnicas alternativas de sanación. Actualmente, dirige un centro holístico llamado Aum Konrai.")
Workshop.create(title: "MUJERES AL BORDE DE UN ATAQUE DE CONSCIENCIA", speaker_id: 58, category_id: 6, day_id: 2, length: 1, time: "14:00 - 15:00", slot: 11, description: "Cuántas veces has pronunciado esta famosa queja ancestral: “Pero, ¿Por qué a mi?”. Es momento de entender. En este taller analizaremos las creencias más comunes sobre la mujer mexicana.")

Speaker.create(first_name: "YAMILA", last_name: "HEIBLUM", category_id: 6, description: "SANADORA, FOTÓGRAFA ", bio: "Su vocación está compartida entre la fotografía y el campo de la sanación. Desde su llegada a Mexico empezó seriamente a estudiar y practicar como terapeuta en Esencias Florales.  Algo constante en su formación ha sido el estudio de la Kabbalah por 18 años.")
Workshop.create(title: "CONSCIENCIA Y SANACIÓN", speaker_id: 59, category_id: 6, day_id: 3, length: 3, time: "11:30 - 13:00", slot: 18, description: "En este taller Yamila nos hablará acerca de la relación entre nuestra consciencia y nuestra salud. Ser consciente del camino de vida que cada uno tiene y la relación que hay entre el cumplir o alejarnos de éste, nos puede llevar al bienestar o a la enfermedad.")

Speaker.create(first_name: "HELENA", last_name: "PEDROZA", category_id: 7, description: "ASTRÓLOGA", bio: "Profesional en Astrología, con once años de estudio y profundización en diferentes áreas complementarias: Kabbalah, Tarot Terapéutico, Astrología Maya, Numerología, Gemoastrología.")
Workshop.create(title: "LA ENERGÍA DE LA LUNA EN ASTROLOGÍA", speaker_id: 60, category_id: 6, day_id: 2, length: 3, time: "17:00 - 18:30", slot: 14, description: "En este taller Helena nos habla sobre la energía de la luna y sus aspectos generales.")

Speaker.create(first_name: "VERÓNICA", last_name: "MARTÍNEZ", category_id: 6, description: "CONDUCTORA, FUNDADORA DE “NOSOTRAS HABLAMOS”", bio: "Licenciada en Relaciones Internacionales y Licenciada en Derecho. Presidenta y Fundadora de Nosotras Hablamos, A.C.")
Workshop.create(title: "LA EXPRESIÓN COMO BASE FUNDAMENTAL DE LA SALUD", speaker_id: 61, category_id: 6, day_id: 1, length: 1, time: "17:00 - 18:00", slot: 2, description: "Tiene como propósito prevenir en las mujeres padecimientos como el estrés, la ansiedad, depresión y problemas emocionales que puedan derivar en una enfermedad mental.")

Speaker.create(first_name: "ALANA", last_name: "SAVOIR", category_id: 6, description: "EXPERTA EN HOMEOPATIA, DISEÑADORA DE MODA", bio: "Apasionada por la medicina alternativa, en especial la Homeopatía y la Ayurveda. También es diseñadora de moda consagrada, tiene una Boutique de Novias y Alta Costura.")
Workshop.create(title: "HOMEOPATIA PRÁCTICA PARA TODA LA FAMILIA", speaker_id: 62, category_id: 6, day_id: 2, length: 1, time: "12:00 - 13:00", slot: 9, description: "Curso práctico en el uso de la Homeopatía para tratar las enfermedades más comunes en adultos y niños, regresándole al cuerpo el poder de sanación. Incluye introducción básica a la Homeopatía y a su manera de comprender holísticamente a la persona. Aprenderemos procesos de auto-prescripción en familia, habrán compuestos a la venta para tratar naturalmente las enfermedades más comunes: gripe, tos, dolor de oído, diarrea, insomnio, heridas, golpes, alergias respiratoria, etc”.")

Speaker.create(first_name: "ANA", last_name: "HOP", category_id: 4, description: "FOTÓGRAFA", bio: "Fotógrafa de moda que ha trabajado para grandes revistas como Casa Viva, National Geographic y otras revistas. Con fotografías muy vívidas y llenas de color, Ana nos muestra su forma de ver el mundo y nosotros mostramos cómo es Ana.")
Workshop.create(title: "LA FOTOGRAFÍA Y SUS MEJORES REPRESENTANTES", speaker_id: 63, category_id: 6, day_id: 2, length: 3, time: "15:30 - 17:00", slot: 13, description: "En este taller Ana nos hablará de su experiencia como fotógrafa y nos compartirá algunos tips y bases de fotografía.")

Speaker.create(first_name: "MAYRA", last_name: "CONTRERAS", category_id: 7)
Workshop.create(title: "NEGOCIOS Y MUJER, CÓMO GANAR LA VITRINA DIGITAL", speaker_id: 64, category_id: 6, day_id: 1, length: 1, time: "16:00 - 17:00", slot: 1)

Speaker.create(first_name: "ANA", last_name: "DESVIGNES", category_id: 7)
Workshop.create(title: "BIENESTAR INTEGRAL", speaker_id: 65, category_id: 6, day_id: 2, length: 1, time: "11:00 - 12:00", slot: 8)

Speaker.create(first_name: "RACHEL", last_name: "ITTIC", category_id: 7)
Workshop.create(title: "KABBALAH: TRANSFORMANDO TU VIDA", speaker_id: 66, category_id: 6, day_id: 3, length: 1, time: "13:00 - 14:00", slot: 19)

Workshop.create(title: "BLANK", speaker_id: 18, category_id: 2, day_id: 2, length: 1, time: "13:00 - 14:00", slot: 3)
Workshop.create(title: "BLANK", speaker_id: 18, category_id: 2, day_id: 2, length: 2, time: "13:00 - 14:00", slot: 7)

Workshop.create(title: "BLANK", speaker_id: 18, category_id: 4, day_id: 2, length: 1, time: "13:00 - 14:00", slot: 4)
Workshop.create(title: "BLANK", speaker_id: 18, category_id: 4, day_id: 2, length: 1, time: "13:00 - 14:00", slot: 8)

Workshop.create(title: "BLANK", speaker_id: 18, category_id: 6, day_id: 2, length: 1, time: "13:00 - 14:00", slot: 5)
Workshop.create(title: "BLANK", speaker_id: 18, category_id: 6, day_id: 2, length: 4, time: "13:00 - 14:00", slot: 12)

