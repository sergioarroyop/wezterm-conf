function merge_tables(base, extension)
	for k, v in pairs(extension) do
		base[k] = v
	end
	return base
end
