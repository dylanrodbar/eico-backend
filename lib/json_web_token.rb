class JsonWebToken
  class << self
    #el método encode se utiliza para autenticar al usuario y generar un token para este
    def encode(payload, exp = 7.days.from_now)
      payload[:exp] = exp.to_i
      JWT.encode(payload, Rails.application.secrets.secret_key_base)
    end

    #el método decode verifica si el token que se utiliza para cada request es correcto
    def decode(token)
      body = JWT.decode(token, Rails.application.secrets.secret_key_base)[0]
      HashWithIndifferentAccess.new body
    rescue
      nil
    end
  end
end