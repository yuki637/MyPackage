function myiseven(x::Int)
    return x % 2 == 0
end

#@assert myiseven(1) == false
#@assert myiseven(2) == true

#本来はここに引数の定義を書かなくてはならない。

function bisect(f, a::Float64, b::Float64, tol::Float64)
    if f(a) * f(b) > 0
        println("aaaaa")
       error("f(a) and f(b) must have opposite signs !!!")
    end

    if a >= b
        error("a must be less than b")
    end

    mid = (a+b)/2.0

    while abs(f(mid)) >= tol 
        if f(mid) * f(a) < 0
            b = mid
        else
            a = mid
        end

        mid = (a+b)/2.0
    end 
    
    return 0.5*(a+b)
end

function c_m()
    m_o = 1.0
    m = 1.0
    tol = 1e-3
    n_l = 1000
    for i_l in 1:n_l
        m = 1/2*tanh(m_0/2)
        if abs(m_0-m) < tol
            return m
        end
        if i_l == n_l
            println("error")
        end

        m_0 = m
    end
end