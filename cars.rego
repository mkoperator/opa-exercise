package cars.authz

# Employees
employees := ["alice", "eve", "ricardo", "carmen"]

# Cars and their record owners
cars := {"id1234": "alice", "id2345": "alice", "id3456": "ricardo"}

default allow := false

# Allow all to get cars
allow {
    some car;
    cars[car]
	input.method == "GET"
	input.path == ["v1", "cars", car]
}

# Allow updates from employees
allow {
    some car;
    cars[car]
	input.method == "PUT"
	input.path == ["v1", "cars", car]
    input.user == employees[_]
}

# Allow new cars from employees
allow {
    some car;
    cars[car]
	input.method == "POST"
	input.path == ["v1", "cars"]
    input.user == employees[_]
}

# Allow owners to delete their cars

allow {
    some car;
    cars[car] == input.user
	input.method == "DELETE"
	input.path == ["v1", "cars", car]
}