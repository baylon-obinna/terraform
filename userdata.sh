#!/bin/bash
apt update
apt install -y apache2

# Get the instance ID using the instance metadata
#INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

# Install the AWS CLI
apt install -y awscli

# Create a simple HTML file to show loadbalancer distribution of traffic
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>Baylon Terraform Project</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server </h1>
  <h2>NAME:<span style="color:green">BAYLON</span></h2>
  <p>Baylon demonstrating loadbalancer distribution of traffic for webserver1</p>
  
</body>
</html>
EOF

# Start Apache and enable it on boot
systemctl start apache2
systemctl enable apache2