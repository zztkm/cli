.PHONY: doc
doc:
	@echo "Generating documentation..."
	@v doc -o docs/ -f markdown .

.PHONY: test
test:
	@echo "Running tests..."
	@v test .

.PHONY: vet
vet:
	@echo "Running vet..."
	@v vet .

.PHONY: fmt
fmt:
	@echo "Running fmt..."
	@v fmt -w .

