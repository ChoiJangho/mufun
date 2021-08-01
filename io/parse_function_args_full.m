function kwargs = parse_function_args_full( ...
    necessary_var_keys, ...
    default_var_keys, ...
    default_var_values, varargin)
%% kwargs = parse_function_args(default_var_keys, default_var_values, varargin{:});
    if length(default_var_keys) ~= length(default_var_values)
        error("default_var_keys and default_var_values should have same length.");
    end
    kwargs = struct();
    for idx = 1:2:length(varargin)
        kwargs.(varargin{idx}) = varargin{idx+1};
    end
    if ~isempty(necessary_var_keys)
        for i = 1:length(necessary_var_keys)
            if ~isfield(kwargs, necessary_var_keys{i})
                error("varargin must include %s.", necessary_var_keys{i});
            end
        end
    end
    if ~isempty(default_var_keys)
        for i = 1:length(default_var_keys)
            if ~isfield(kwargs, default_var_keys{i})
                kwargs.(default_var_keys{i}) = default_var_values{i};
            end
        end
    end
end