variable "environment" {
  default = "dev"
  type = string
}

variable "channel_name" {
  default = "ttws"
}

variable "primary"{
  type = string
  default = "us-east-1"
}


variable "secondary"{
  type=string
  default = "us-west-2"
}

variable "instance_count" {
  description = "Number of ec2 instances to create"
  type = number
  
}

variable "associate_public_ip"{
  description = "Associate public ip adress ith ec2 instances"
  type = bool
  default = true
}


variable "monitoring_enabled"{
  description = "monitoring ke liye"
  type = bool
  default = true
}


variable "cidr_block"{
  description = "cidr block for the vpc"
  type = list(string)
  default = ["10.0.0.0/16","192.168.0.0/16","172.16.0.0/12"]
}


variable "allowed_vm_types"{
  description = "list of allowed vm types"
  type = list(string)
  default = ["t2.micro","t2.small","t3.micro","t3.small"]
}



variable "allowed_region"{
  description = "List of allowed aws region"
  type = set(string)
  default = ["us-east-1","us-west-2","eu-west-1"]

}


variable "tags" {
  type = map(string)
  default = {
    Environment = "dev-environment"
    Name = ".environment}-ec2-instance"
    created_by = "terraform"
  }
}


variable "ingress_values"{
  type =tuple([number,string,number])
  default = [443,"tcp",443]
  }


  variable "config"{
    type = object({
      region = string,
      monitoring = bool,
      instance_count = number
    })
    default = {
      region = "us-east-1",
      monitoring = true,
      instance_count = 1
    }
  }


  variable "bucket_name"{
    default = "techtutorialwithshreyesh-104"
  }