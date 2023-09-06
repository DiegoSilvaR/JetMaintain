# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(
  email: 'admin@mail.com', # Cambia esto por el correo del administrador
  password: '123456',    # Cambia esto por la contraseña del administrador
  role: 'administrador'       # Asigna el rol de administrador
)

# Crea 20 registros de motores
20.times do |i|
  tipo_motor = i.even? ? "REAC" : "TURBO"
  nombre_motor = "#{tipo_motor}-#{i + 1}"

  Motor.create!(
    tipo_equipo: tipo_motor == "REAC" ? "Motor a reacción" : "Motor turbohélice",
    nombre: nombre_motor,
    description: "Descripción del Motor #{i + 1}",
    user_id: User.first.id # Reemplaza esto con el ID del usuario apropiado
  )
end

puts 'Se crearon 20 registros de motores con nombres REAC-número o TURBO-número y tipo de equipo correspondiente'

# db/seeds.rb

# Obtén las opciones de materiales y ciudades disponibles
materiales_disponibles = [
  "Aceite lubricante",
  "Filtro de aire",
  "Bujías de encendido",
  "Aceite hidráulico",
  "Aceite de turbina",
  "Aceite de motor",
  "Filtros de aceite",
  "Bujías de ignición",
  "Bujías de precalentamiento",
  "Filtros de combustible",
  "Bujes",
  "Cojinetes",
  "Válvulas",
  "Sellos",
  "Empaquetaduras",
  "Tornillos",
  "Arandelas",
  "Tuercas",
  "Juntas tóricas",
  "Correas de transmisión"
]

ciudades_disponibles = [
  "Santiago",
  "Valparaíso",
  "Concepción",
  "Antofagasta",
  "Iquique",
  "Puerto Montt",
  "La Serena",
  "Rancagua",
  "Talca",
  "Arica",
  "Chillán",
  "Temuco",
  "Copiapó",
  "Curicó",
  "Quillota",
  "Punta Arenas",
  "Osorno",
  "Viña del Mar",
  "Coquimbo",
  "Los Ángeles",
  "Calama",
  "Valdivia",
  "Talcahuano",
  "San Fernando",
  "Ovalle",
  "Linares",
  "Quilpué",
  "Los Andes",
  "San Antonio",
  "Iquique"
]

# Crear 100 registros de mantenimientos
100.times do
  tipo_motor = rand(1..2) == 1 ? "REAC" : "TURBO"
  tipo_mantenimiento = ["Preventivo", "Correctivo"].sample
  motor_id = Motor.pluck(:id).sample
  ciudad = ciudades_disponibles.sample
  materiales = materiales_disponibles.sample(3).join(", ") # Selecciona hasta 3 materiales al azar
  fecha_mantenimiento = Faker::Date.between(from: 1.year.ago, to: Date.today)
  tecnico_email = Faker::Internet.email

  Mantenimiento.create!(
    tipo_motor: tipo_motor,
    tipo_mantenimiento: tipo_mantenimiento,
    motor_id: motor_id,
    ciudad: ciudad,
    materiales: materiales,
    fecha_mantenimiento: fecha_mantenimiento,
    tecnico_email: tecnico_email
  )
end

puts 'Se crearon 100 registros de mantenimientos para motores'
