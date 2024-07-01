# Speedtest Server Setup

Welcome to the Speedtest Server Setup! This project provides a quick and easy way to set up a speed test server using Docker and iPerf3. With just a few simple steps, you'll have a server up and running to test your network's performance.

## Features
- Automated Setup: Quickly set up a speed test server using Docker.
- iPerf3 Integration: Utilizes iPerf3, a powerful network testing tool.
- Public IP Display: Automatically displays the server's public IP address.

```Port 443: Runs the iPerf3 server on port 443 for compatibility with most network configurations.```'

## Getting Started
### Prerequisites
- Docker installed on your machine.
- Basic knowledge of Docker and GitHub Actions.

### Installation
Clone the Repository

```bash
Copy code
git clone https://github.com/yourusername/speedtest-server-setup.git
cd speedtest-server-setup
```
Build the Docker Image

bash
Copy code
docker build -t speedtest-server .
Run the Docker Container

```bash
docker run -d -p 443:443 speedtest-server
```
### Usage
Once the Docker container is running, it will automatically start the iPerf3 server on port 443. To test your network speed, you can use an iPerf3 client to connect to the server.

### Example Command
```bash
iperf3 -c <your_server_ip> -p 443
```

## Server Start
```bash
docker build -t speedtest-server .
```
```bash
docker run -d -p 443:443 speedtest-server --expose 443
```
