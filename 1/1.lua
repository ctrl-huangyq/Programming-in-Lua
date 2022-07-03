function fact(n)
    if n == 0 then
        return 1
    else
        return n * fact(n - 1)
    end
end

print("enter a num: ")
local a = io.read("*n")
if a < 0 then
    print(-1)
else
    print(fact(a))
end