FROM node:16

# Логування для дебагу
RUN echo "Starting build process..."

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо всі файли в контейнер
COPY . .

# Логування для перевірки
RUN echo "Installing dependencies..."

# Встановлюємо залежності
RUN npm install

RUN echo "Dependencies installed."

# Логування під час запуску
RUN echo "Running app..."

# Вказуємо команду для запуску додатку
CMD ["npm", "start"]
