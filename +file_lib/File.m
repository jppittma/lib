classdef File
	properties (SetAccess = private)
		name
	end

	properties (Hidden = true)
		java_file	
	end

	methods
		function obj = File(input)
			obj.name = deblank( string( input ) );
			obj.java_file = java.io.File(obj.name) ;
		end

		function str = string(obj)
			str=string(obj.java_file.toString());
		end
		
		function parent=parent(obj)
			import file_lib.File;

			parent = obj.java_file.getParent();
			parent = File(parent);
		end

		function diff=minus(obj, num)
			diff = obj;
			for ii = 1:num
				diff = diff.parent();
			end
		end
	end
end

