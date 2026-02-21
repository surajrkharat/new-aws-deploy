# Use nginx base image
FROM nginx:alpine

# Copy the static index file into nginx public dir
COPY ./index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80


# Start nginx
CMD ["nginx", "-g", "daemon off;"]
