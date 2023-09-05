data "tls_certificate" "eks" {
  url = aws_eks_cluster.demo.identity[0].oidc[0].issuer
}

#IAM OpenID Connect sağlayıcısını oluşturarak kimlik doğrulama sürecini yönetmenizi sağlar. 
#Kullanıcılar, organizasyonun kimlik sağlayıcısı ile AWS kaynaklarına güvenli bir şekilde erişebilirler.
resource "aws_iam_openid_connect_provider" "eks" {
  client_id_list  = ["sts.amazonaws.com"]
  thumbprint_list = [data.tls_certificate.eks.certificates[0].sha1_fingerprint]
  url             = aws_eks_cluster.demo.identity[0].oidc[0].issuer
}
