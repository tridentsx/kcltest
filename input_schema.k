schema InputConfig:
    name?: str
    port?: int
    replicas?: int
    enabled?: bool
    labels?: {str: str}
    resources?: InputResourceConfig

schema InputResourceConfig:
    cpu?: str
    memory?: str
