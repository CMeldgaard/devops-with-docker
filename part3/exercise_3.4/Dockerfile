FROM docker

# Install git and bash
RUN apk update && apk add git bash

# Set working directory
WORKDIR /script

# Copy script
COPY . .

# Run script
ENTRYPOINT ["/bin/bash", "/script/builder.sh"]
