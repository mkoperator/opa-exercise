
all: build test

build:
	opa build cars.rego

test:
	./run_test.sh test_inputs/get_nouser_carid1234.json
	./run_test.sh test_inputs/get_alice_carid1234.json
	./run_test.sh test_inputs/put_alice_carid1234.json
	./run_test.sh test_inputs/put_nouser_carid1234.json
	./run_test.sh test_inputs/post_alice.json
	./run_test.sh test_inputs/post_nouser.json
	./run_test.sh test_inputs/delete_alice_carid1234.json
	./run_test.sh test_inputs/delete_nouser_carid1234.json
	./run_test.sh test_inputs/delete_ricardo_carid1234.json
	./run_test.sh test_inputs/delete_ricardo_carid3456.json


