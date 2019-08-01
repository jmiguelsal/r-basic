va = scan(text = "2 0 2 1 2 3 0 1 3")
vb = scan(text = "3 2 1 1 0 0 1 1 1")

A = matrix(va, nrow = 3, byrow = T)
A

B = matrix(vb, nrow = 3, byrow = T)
B

axb = A%*%B
axb

axa = A%*%A
axa

bxb = B%*%B
bxbxb = bxb%*%B
bxbxb

mtx.exp(B, 3)
B%^%3
