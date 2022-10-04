-- TODO: Do a module import/export thing.

n = io.read()

function ends_in_three(num)
    --print("checking if "..num.." ends in three")
    tostring(num)
    last_num = string.sub(num, -1)
    if last_num == "3" then
        --print("it does!")
        return true
    else
        --print("it does not!")
        return false
    end
end

function check_if_prime(num)
    --print("check if "..num.." is prime")
    tonumber(num)
    is_prime = true
    for i = 1, (num - 1) do
        prime_check = num % i
        if prime_check == 0 and i ~= 1 then
            is_prime = false
            return
        else
            is_prime = true
        end
    end
    if is_prime == true then
        --print(num .. "is prime, so we check if it ends in 3")
        check_three = ends_in_three(num)
        if check_three == true then
            print(num)
        end
    end
end

function check_n_primes(n)
    --print("check n primes")
    for i = 1, n do
        check_if_prime(i)
    end
end

check_n_primes(n)