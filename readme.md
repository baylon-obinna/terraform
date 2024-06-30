
PROVISIONING AN INFRASTRUCTURE ON AWS USING TERRAFORM

- This terrraform resource create a virtual private cloud with two public subnets mapped on a section of the cidr block
  
- An internet gateway to enable outside communication, route table and route configured to direct all traffic to the internet gateway

- A route table configuration associating both subnets to the route table, a security group for instances and load balancer allowing traffic from ports 80 and 22

- An instance profile for iam roles with a policy allowing s3 access and ec2 full access

- A load balancer for both subnets associated with a target group by a listener configuration comprising of both instances in the public subnets. 

- The terraform scripts returns an output with loadbalancer DNS which is used to access the served static website from the browser.

- The instances launch with a metadata which basically installs apache and serves a static website, each instance has a slight modification of the index.html file to show 
  the routing of traffic from the loadbalancer.



![Screenshot (154)](https://github.com/baylon-obinna/terraform/assets/111370498/d2532d96-86e0-4f87-ae9a-7ab96a1d1835)



![Screenshot (153)](https://github.com/baylon-obinna/terraform/assets/111370498/8548db90-189f-4234-bfd2-0f13f750652c)
