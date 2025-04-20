# Usa a imagem oficial do Chatwoot 3.15.0 como base
FROM chatwoot/chatwoot:v3.15.0

# Define o diretório de trabalho
WORKDIR /app

# Copia apenas os arquivos que deseja sobrescrever no Chatwoot
# Isso pode incluir controllers, views, workers, assets, etc.
COPY ./app ./app
COPY ./config ./config
COPY ./lib ./lib
COPY ./public ./public
#COPY ./locales ./locales
#COPY ./routes ./routes

# Se tiver modificações no Gemfile ou scripts adicionais
# COPY Gemfile Gemfile.lock ./
# RUN bundle install

# Evita a recompilação dos assets caso não tenha mudado nada de frontend
# Mas se mudar arquivos JS/CSS, pode ser necessário rodar:
# RUN bundle exec rails assets:precompile

# Você pode ajustar isso dependendo da sua personalização
