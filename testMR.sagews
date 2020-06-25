︠a77e597d-6fcc-4d90-814e-33de6f1731e9s︠
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
︡4932bb2f-27d4-411a-bb4f-1cbd756a06f0︡{"stdout":"(True, 5)\n"}︡{"done":true}










