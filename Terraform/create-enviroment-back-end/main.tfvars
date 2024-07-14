vpc_name            = "vpc-proyectodevops"
vpc_cidr            = "10.0.0.0/16"
subnet1_name        = "aws-service-subnets"
subnet1_cidr        = "10.0.1.0/24"
subnet2_name        = "aws-service-subnets1"
subnet2_cidr        = "10.0.2.0/24"
rt_name             = "rt-proyecto-devops"
igw_name            = "igw-proyecto-devops"
eks_cluster_name    = "eks-proyectodevops"
eks_version         = "1.29"
node_group_name     = "serviceGroup"
node_instance_type  = "t3.medium"
node_disk_size      = 20
desired_size        = 2
min_size            = 2
max_size            = 2
max_unavailable     = 1
eks_cluster_role_arn = "arn:aws:iam::090240839138:role/LabRole"  # Reemplaza 123456789012 con tu ID de cuenta
eks_node_role_arn    = "arn:aws:iam::090240839138:role/LabRole"  # Reemplaza 123456789012 con tu ID de cuenta