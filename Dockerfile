# Use a base image with a C development environment
FROM gcc:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the C source code to the container
COPY main.c .

# Compile the C program
RUN gcc -o myprogram main.c

# Command to run the compiled C program
CMD ["./myprogram"]
