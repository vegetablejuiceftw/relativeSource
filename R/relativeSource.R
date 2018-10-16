current_folder = function() dirname(tail(Filter(Negate(is.null), lapply(sys.frames(), function(x) x$ofile)), n=1)[[1]])

relative_path = function(file) paste(current_folder(), file, sep='/')

relative_source = function(file) source(relative_path(file))
