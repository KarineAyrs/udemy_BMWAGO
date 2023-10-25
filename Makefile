format:
	$(GOPATH)/bin/gci write $$(find . -type f -name '*.go' -not -path "./pkg/proto/*" -not -name "*.gen.go" -not -path "*/mock/*") -s standard -s default -s "prefix(gitlab.viju.ru/development/internal-dev/viju-backend)"
lint_docker:
	docker run --rm -v $(GOPATH)/pkg/mod:/go/pkg/mod:ro -v `pwd`:/`pwd`:ro -w /`pwd` golangci/golangci-lint:v1.46.2-alpine golangci-lint run --fix --deadline=5m -v
