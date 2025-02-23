# NOde 20
FROM node:20
# Create app directory
WORKDIR /app
RUN wget -qO- https://get.pnpm.io/install.sh | ENV="$HOME/.bashrc" SHELL="$(which bash)" bash -



# Install app dependencies
COPY . /app
RUN npm install
RUN pnpm build


# Bundle app source


# Expose port
EXPOSE 3000



# Build and start the app
CMD ["pnpm", "start"]
