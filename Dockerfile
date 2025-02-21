FROM ubuntu:latest  # Or a more specific Ubuntu version (e.g., ubuntu:jammy)

# Install dependencies (if any).  For the miner, you might need these:
RUN apt-get update && apt-get install -y wget tar

# Create a working directory inside the container
WORKDIR /app

# Copy the miner files into the container (after downloading and extracting)
COPY SRBMiner-Multi-2-7-9-Linux /app/SRBMiner-Multi-2-7-9-Linux

# Set the entrypoint to run the miner
ENTRYPOINT ["/app/SRBMiner-Multi-2-7-9-Linux/SRBMiner-MULTI"]

# Define the command and arguments for the miner (using environment variables)
CMD ["--algorithm", "xelishashv2", "--pool", "us.xelis.herominers.com:1225", "--wallet", "$WALLET_ADDRESS"]
