FROM debian:bullseye as builder

# Update default packages
RUN apt-get update

# Get Ubuntu packages
RUN apt-get install -y \
    build-essential

COPY . .

# Check cargo is visible
RUN make






