# Use official nginx image as the base image
FROM nginx:alpine

# Copy the static content to the default nginx public folder
COPY index.html /usr/share/nginx/html/index.html
COPY css /usr/share/nginx/html/css
COPY assets /usr/share/nginx/html/assets

# Expose port 80
EXPOSE 80

# Start nginx
CMD ["nginx", "-g", "daemon off;"]
