ENV_NAME = randomforestrangers
PYTHON_VERSION = 3.12

init:
	@if conda info --envs | grep -q '$(ENV_NAME)'; then \
		echo "Environment $(ENV_NAME) already exists."; \
	else \
		conda create --name $(ENV_NAME) python=$(PYTHON_VERSION) -y; \
	fi

install: init
	@conda run -n $(ENV_NAME) pip install -r requirements.txt
