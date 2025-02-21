import .output_schema as _os
import .input_schema as _is

defaultConfig = _os.OutputConfig {}
mergeInput = _is.InputConfig {
    name: "custom-app"
    port: 3000
    enabled: True
    labels: {"env": "prod"}
    resources: {"memory": "1Gi"}
}

config_map = {key: mergeInput[key] if key in mergeInput and mergeInput[key] != None else defaultConfig[key] for key in _os.OutputConfig.attr}

finalConfig = defaultConfig | mergeInput | config_map

