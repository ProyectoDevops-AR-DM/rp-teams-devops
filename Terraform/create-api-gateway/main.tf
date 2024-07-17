provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  token      = var.aws_session_token
}

resource "aws_apigatewayv2_api" "example" {
  name          = "example-api"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_stage" "default" {
  api_id      = aws_apigatewayv2_api.example.id
  name        = "$default"
  auto_deploy = true
}

resource "aws_apigatewayv2_integration" "orders" {
  api_id                  = aws_apigatewayv2_api.example.id
  integration_type        = "HTTP_PROXY"
  integration_uri         = var.orders_integration_uri
  integration_method      = "POST"
  payload_format_version  = "1.0"
}

resource "aws_apigatewayv2_route" "orders" {
  api_id    = aws_apigatewayv2_api.example.id
  route_key = "POST /orders"
  target    = "integrations/${aws_apigatewayv2_integration.orders.id}"
}

resource "aws_apigatewayv2_integration" "shipping" {
  api_id                  = aws_apigatewayv2_api.example.id
  integration_type        = "HTTP_PROXY"
  integration_uri         = var.shipping_integration_uri
  integration_method      = "GET"
  payload_format_version  = "1.0"
}

resource "aws_apigatewayv2_route" "shipping" {
  api_id    = aws_apigatewayv2_api.example.id
  route_key = "GET /shipping/{shippingId}"
  target    = "integrations/${aws_apigatewayv2_integration.shipping.id}"
}

resource "aws_apigatewayv2_integration" "products" {
  api_id                  = aws_apigatewayv2_api.example.id
  integration_type        = "HTTP_PROXY"
  integration_uri         = var.products_integration_uri
  integration_method      = "GET"
  payload_format_version  = "1.0"
}

resource "aws_apigatewayv2_route" "products" {
  api_id    = aws_apigatewayv2_api.example.id
  route_key = "GET /products"
  target    = "integrations/${aws_apigatewayv2_integration.products.id}"
}

output "api_gateway_url" {
  value = aws_apigatewayv2_api.example.api_endpoint
}
