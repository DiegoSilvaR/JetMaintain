json.extract! motor, :id, :tipo_equipo, :nombre, :description, :image, :user_id, :created_at, :updated_at
json.url motor_url(motor, format: :json)
json.image url_for(motor.image)
