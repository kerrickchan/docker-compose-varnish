vcl 4.0;

backend default {
  .host = "backend";
  .port = "80";
}

sub vcl_recv {
  # Add any custom logic here
}

sub vcl_backend_response {
  # Set TTL to 1 hour
  set beresp.ttl = 1h;
}