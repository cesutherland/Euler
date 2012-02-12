
fib = [1,2]
a = 3
while (len(str(fib[1])) < 1000):
	fib.append(fib[0]+fib[1])
	fib.pop(0)
	a+=1

print (a)
