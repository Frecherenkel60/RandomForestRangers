init:
	conda create --name randomforestrangers --file environment.yaml
	conda activate randomforestrangers

save-env:
	conda env export > environment.yaml
