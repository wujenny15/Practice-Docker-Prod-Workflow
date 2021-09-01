FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# all the build files are in /app/build

FROM nginx
# In second stage, we will copy the files from builder stage , and the folder we want to copu is /app/build
COPY --from=builder /app/build /usr/share/nginx/html