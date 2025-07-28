CURRENT_DIR = $(CURDIR)

RM = rm -rf


RUN = poetry run

shell:
	poetry env activate

check:
	$(RUN) pre-commit run --all-files

commit:clean
	git add .
	git commit -m "$(msg)"

push:commit
	git push

clean:clean_chche
	$(RM) dist

build:
	poetry build

install:
	poetry install


clean_chche:
	$(RM) $(CURRENT_DIR)/__pycache__
	$(RM) $(CURRENT_DIR)/.mypy_cache
	$(RM) $(CURRENT_DIR)/__pycache__/*
	$(RM) $(CURRENT_DIR)/.mypy_cache/*

	$(RM) $(CURRENT_DIR)/opentrons_bot/__pycache__
	$(RM) $(CURRENT_DIR)/opentrons_bot/.mypy_cache
	$(RM) $(CURRENT_DIR)/opentrons_bot/__pycache__/*
	$(RM) $(CURRENT_DIR)/opentrons_bot/.mypy_cache/*
