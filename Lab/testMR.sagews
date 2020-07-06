def Test_Miller_Rabin(n, k):
    m, s = n - 1, 0
    while m % 2 == 0:
      s += 1
      m /= 2

    for j in range(0, k):
        a = ZZ.random_element(2, n - 1)
        x = pow(a, m, n)
        if x == 1 or x == n - 1: return true, a
        for i in range(1, s):
            x = pow(x, 2, n)
            if x == 1: return false
            elif x == n - 1: return true, a
        return false

n, k = 11, 10
Test_Miller_Rabin(n, k)
