FROM n8nio/n8n:latest

ENV N8N_BASIC_AUTH_ACTIVE=true
ENV N8N_BASIC_AUTH_USER=admin
ENV N8N_BASIC_AUTH_PASSWORD=yourpassword

EXPOSE 5678

CMD ["n8n", "start"]

RUN echo "Starting build process..."
RUN npm install
RUN echo "Finished installing dependencies"
RUN npm run build
RUN echo "Finished building"
