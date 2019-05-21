resource "kubernetes_service" "nodejssvc" {
  metadata {
    name      = "nodejssvc"
    namespace = "smith1"
    labels {
      app = "nodejs"
    }
  }
  spec {
    port {
      name        = "nodejssvc"
      protocol    = "TCP"
      port        = 3001
      target_port = "3001"
    }
    selector {
      app = "nodejs"
    }
  }
}     
