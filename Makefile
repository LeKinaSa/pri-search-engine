
build : install-dependencies get-reviews prepare

# Script for cleaning and processing the Kaggle dataset
prepare :
	python3 prepare.py

# Installs necessary dependencies using pip, Python's package installer
install-dependencies :
	@for dep in pandas seaborn beautifulsoup4 colorama ; do \
		echo "Installing $$dep..." ; \
		pip3 install $$dep > /dev/null ; \
	done

get-reviews :
	python3 get_reviews.py