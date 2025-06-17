module "eks" {
  source = "./modules/eks"

  cluster_name       = "dev-eks-cluster"
  subnet_ids         = [ "subnet-06053f1ddc9a129a2", "subnet-043fd9105126cf4a5" ]
  kubernetes_version = "1.29"
  key_pair_name = "github-action"

  desired_size   = 2
  min_size       = 1
  max_size       = 2
  instance_types = ["t2.medium"]
}