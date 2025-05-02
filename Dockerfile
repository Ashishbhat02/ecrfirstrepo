# Use the official Nginx image
FROM nginx:alpine

# Remove the default nginx index page
RUN rm -f /usr/share/nginx/html/*

# Copy your HTML file into the nginx html directory
COPY Indian_Flag.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
