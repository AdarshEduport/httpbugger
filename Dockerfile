FROM dart:stable

WORKDIR /app

# Copy project files
COPY . .

# Get dependencies
RUN dart pub get

# Generate necessary files
RUN dart run serverpod_cli:generate

# Expose server port
EXPOSE 8080

# Run the server
CMD ["dart", "bin/main.dart"]
