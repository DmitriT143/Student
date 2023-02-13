# 	y = a * sqrt ( x ) + b * x + c # 
# А нужно найти Корни x#

def X_from_sqare():
	a = float(input("a = "))
	b = float(input("b = "))
	c = float(input("c = "))
	Disk = (b ** 2) + 4 * a * c
	print('a = ',a,', b = ',b,', c = ',c,', d = ',Disk)
	if Disk < 0:
		print('Correct ur statement')
	elif Disk==0:
		print('This is fine')
		x = ((0 - b)/a)
		print('x= ',x)
	elif Disk>0:
		print('Perfect')
		x_1 = (((0 - b) + (Disk**(-1/2)))/a)
		x_2 = (((0 - b) - (Disk**(-1/2)))/a)
		print('x= ',x_1, " or x = ", x_2)

X_from_sqare()
