#networking
variable "vpc_cidr_block" {
    # type= "string"
    description = "mini-project" 
    default = "70.0.0.0/16"
}

variable "vpc_prod_subnet" {
    type = list(string)
    description = "prod-subnet"
    default = [ "70.0.1.0/24","70.0.2.0/24","70.0.3.0/24","70.0.4.0/24","70.0.5.0/24" ]

}
variable "az" {
    type = list(string)
    description = "prod-az"
    default = [ "ap-south-1a","ap-south-1b","ap-south-1c","ap-south-1a","ap-south-1b" ]
    

  
}