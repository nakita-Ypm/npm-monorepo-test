aexe:
	rm -rf apps/dist
	rm -rf packages/dist
	cd packages/fizzbuzz/ && npx tsc
	cd apps/ && npx tsc && node dist/index.js

pexe:
	cd packages/ && npx tsc && node dist/index.js