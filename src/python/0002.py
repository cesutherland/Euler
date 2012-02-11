fib = [1,2]
a = 2

while fib[-1]+fib[-2] < 4000000:
		fib.append(fib[-1]+fib[-2])
		if fib[-1] % 2 == 0:
				a += fib[-1]

print(a)
