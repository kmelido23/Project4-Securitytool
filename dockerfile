# Use the official Ubuntu base image
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && apt-get install -y \
    dialog \
    git 

# Copy the installation script
COPY test.sh /usr/local/bin/test.sh

# Set the script as exeutable
RUN chmod +x /usr/local/bin/test.sh

# Start the installation script by default
CMD ["/usr/local/bin/test.sh"]
