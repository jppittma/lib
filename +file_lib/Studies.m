classdef Studies
	properties
		study_folder
		subj_folders
	end
	methods
		function s = Studies(study,subj)
			s.study_folder = study;
			s.subj_folders= subj;
		end
	end
	enumeration
		Bnet("/isilon/datalake/lcbn_research/final/BNET/", "networks/BNET*/ses1/networks/");
	end
end


