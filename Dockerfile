# Use the official Ruby image as the base
FROM ruby:2.7-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the application code into the container
COPY . .

# Expose port 4567 (default Sinatra port)
EXPOSE 4567

# Start the application
CMD ["ruby", "app.rb", "-o", "0.0.0.0"]
