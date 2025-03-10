#1. Import the NUMPY package under the name np.
import numpy as np


#2. Print the NUMPY version and the configuration.
print(np.version.version)


#3. Generate a 2x3x5 3-dimensional array with random values. Assign the array to variable "a"
# Challenge: there are at least three easy ways that use numpy to generate random arrays. How many ways can you find?
a = np.random.random((2,3,5))
a2 = np.random.rand(2,3,5)


#4. Print a.
print(a)


#5. Create a 5x2x3 3-dimensional array with all values equaling 1.
#Assign the array to variable "b"
b = np.ones((5,2,3))
b2 = np.full((5,2,3), 1)


#6. Print b.
print(b)


#7. Do a and b have the same size? How do you prove that in Python code?
def array_size_comparision(a,b):
    return a.size == b.size

"""def array_size_comparision(a,b):
    if a.size == b.size:
        return True
    else:
        return False"""
    
array_size_comparision(a,b)



#8. Are you able to add a and b? Why or why not?
print(np.add(a, b))
#raise an error because a and b have the same size but not the same shape


#9. Transpose b so that it has the same structure of a (i.e. become a 2x3x5 array). Assign the transposed array to varialbe "c".
c = np.transpose(b,(1,2,0))


#10. Try to add a and c. Now it should work. Assign the sum to varialbe "d". But why does it work now?
d = np.add(a,c)
print(d)
#same size and same shape means all individual element can be added from both array because it exists on both side.


#11. Print a and d. Notice the difference and relation of the two array in terms of the values? Explain.
#d is a with 1 added at each value



#12. Multiply a and c. Assign the result to e.
e = np.multiply(a,c)


#13. Does e equal to a? Why or why not?
#e is equal to a because multiplying by one each element does not change them.



#14. Identify the max, min, and mean values in d. Assign those values to variables "d_max", "d_min", and "d_mean"
d_max = np.max(d)
d_min = np.min(d)
d_mean = np.mean(d)

#15. Now we want to label the values in d. First create an empty array "f" with the same shape (i.e. 2x3x5) as d using `np.empty`.
f = np.empty([2, 3,5])



"""
#16. Populate the values in f. For each value in d, if it's larger than d_min but smaller than d_mean, assign 25 to the corresponding value in f.
If a value in d is larger than d_mean but smaller than d_max, assign 75 to the corresponding value in f.
If a value equals to d_mean, assign 50 to the corresponding value in f.
Assign 0 to the corresponding value(s) in f for d_min in d.
Assign 100 to the corresponding value(s) in f for d_max in d.
In the end, f should have only the following values: 0, 25, 50, 75, and 100.
Note: you don't have to use Numpy in this question.
"""
"""old response
for i in range(2):
    for j in range(3):
        for k in range(5):
    
            if d[i,j,k]>d_min and d[i,j,k]<d_mean:
                f[i,j,k]=25
            elif d[i,j,k]>d_mean and d[i,j,k]<d_max:
                f[i,j,k]=75
            elif d[i,j,k]==d_mean:
                f[i,j,k]=50
            elif d[i,j,k]==d_min:
                f[i,j,k]=0
            elif d[i,j,k]==d_max:
                f[i,j,k]=100"""
     
#new response

f = f.astype(str)

f[f == '0.0'] = 'A'
f[f == '25.0'] = 'B'
f[f == '50.0'] = 'C'
f[f == '75.0'] = 'D'
f[f == '100.0'] = 'E'

print(f)



"""
#17. Print d and f. Do you have your expected f?
For instance, if your d is:
array([[[1.85836099, 1.67064465, 1.62576044, 1.40243961, 1.88454931],
        [1.75354326, 1.69403643, 1.36729252, 1.61415071, 1.12104981],
        [1.72201435, 1.1862918 , 1.87078449, 1.7726778 , 1.88180042]],

       [[1.44747908, 1.31673383, 1.02000951, 1.52218947, 1.97066381],
        [1.79129243, 1.74983003, 1.96028037, 1.85166831, 1.65450881],
        [1.18068344, 1.9587381 , 1.00656599, 1.93402165, 1.73514584]]])

Your f should be:
array([[[ 75.,  75.,  75.,  25.,  75.],
        [ 75.,  75.,  25.,  25.,  25.],
        [ 75.,  25.,  75.,  75.,  75.]],

       [[ 25.,  25.,  25.,  25., 100.],
        [ 75.,  75.,  75.,  75.,  75.],
        [ 25.,  75.,   0.,  75.,  75.]]])
"""
#I have the expected f for my dataset

"""
#18. Bonus question: instead of using numbers (i.e. 0, 25, 50, 75, and 100), how to use string values 
("A", "B", "C", "D", and "E") to label the array elements? You are expecting the result to be:
array([[[ 'D',  'D',  'D',  'B',  'D'],
        [ 'D',  'D',  'B',  'B',  'B'],
        [ 'D',  'B',  'D',  'D',  'D']],

       [[ 'B',  'B',  'B',  'B',  'E'],
        [ 'D',  'D',  'D',  'D',  'D'],
        [ 'B',  'D',   'A',  'D', 'D']]])
Again, you don't need Numpy in this question.
"""

"""old response
f = f.astype(str)
for i in range(2):
    for j in range(3):
        for k in range(5):
    
            if d[i,j,k]>d_min and d[i,j,k]<d_mean:
                f[i,j,k]="B"
            elif d[i,j,k]>d_mean and d[i,j,k]<d_max:
                f[i,j,k]="D"
            elif d[i,j,k]==d_mean:
                f[i,j,k]="C"
            elif d[i,j,k]==d_min:
                f[i,j,k]="A"
            elif d[i,j,k]==d_max:
                f[i,j,k]="E"
        """

#new response

f[f == 0] = 'A'
f[f == 25] = 'B'
f[f == 50] = 'C'
f[f == 75] = 'D'
f[f == 100] = 'E'

print(f)