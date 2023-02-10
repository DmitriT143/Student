# 	y = a * sqrt ( x ) + b * x + c # 
# А нужно найти Корни x#

def X_from_sqare():
	a = 1
	b = 4
	c = -4
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
		x = (((0 - b) + Disk)/a)
		print('x= ',x)

X_from_sqare()