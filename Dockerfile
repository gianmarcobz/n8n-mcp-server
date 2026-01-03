FROM node:20-slim
WORKDIR /app
RUN npm install -g supergateway
ENV PORT=8080
ENV N8N_API_URL=""
ENV N8N_API_KEY=""
ENV MCP_MODE="stdio"
ENV LOG_LEVEL="error"
ENV DISABLE_CONSOLE_OUTPUT="true"
EXPOSE 8080
CMD ["sh", "-c", "supergateway --stdio 'npx -y n8n-mcp' --port $PORT"]
