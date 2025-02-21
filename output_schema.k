schema OutputConfig:
    name: str = "default-app"          # Default value for name
    port: int = 8080                   # Default value for port
    replicas: int = 1                  # Default value for replicas
    enabled?: bool                     # Optional field, no default (Undefined if not set)
    labels?: {str:str}                 # Optional dictionary of labels
    resources?: ResourceConfig         # Optional nested schema

    # Validation rules
    check:
        port > 0 and port <= 65535, "Port must be between 1 and 65535"
        replicas >= 1, "Replicas must be at least 1"

schema ResourceConfig:
    cpu: str = "500m"                  # Default CPU request
    memory: str = "512Mi"              # Default memory request 
