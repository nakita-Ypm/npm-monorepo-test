# deps
deps:
	rm -rf node_modules && npm install
	rm -rf apps/node_modules && npm install -w apps
	rm -rf packages/fizzbuzz/node_modules && npm install -w packages/fizzbuzz

# exe
exe:
	rm -rf apps/dist/
	rm -rf packages/dist/
	cd packages/fizzbuzz/ && npx tsc
	cd apps/ && npx tsc && node dist/index.js

# format
fmt:
	npx biome format --write ./