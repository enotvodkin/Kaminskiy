def Test_Miller_Rabin(n, k):
    s = [e for p, e in factor(n - 1)][0] if n % 2 != 0 else 0
    m, f = (n - 1) / pow(2, s), 1

    for j in range(0, k):
        a = ZZ.random_element(2, n - 1)
        x = pow(a, m, n)
        if x == 1 or x == n - 1: return true, a
        for i in range(1, k):
            x = pow(x, 2, n)
            if x == 1: return false
            elif x == n - 1: return true, a
        return false

n, k = 11, 10
Test_Miller_Rabin(n, k)
