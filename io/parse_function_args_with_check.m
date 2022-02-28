function kwargs = parse_function_args(necessary_var_keys, varargin)
%% kwargs = parse_function_args(necessary_var_keys, varargin{:});
    kwargs = struct();
    for idx = 1:2:length(varargin)
        kwargs.(varargin{idx}) = varargin{idx+1};
    end
    for i = 1:length(necessary_var_keys)
        if ~isfield(kwargs, necessary_var_keys(i))
            error("varargin must include %s.", necessary_var_keys(i));
        end
    end    
end