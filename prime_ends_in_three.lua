n = io.read()

function ends_in_three(num)
    tostring(num)
    last_num = string.sub(num, -1)
    if last_num == "3" then
        return true
    else
        return false
    end
end

function check_if_prime(num)
    tonumber(num)
    is_prime = true
    -- Run through and check if it's prime first
    for i = 1, (num - 1) do
        prime_check = num % i
        if prime_check == 0 and i ~= 1 then
            is_prime = false
            return
        end
    end
    -- If it is prime, then do this...
    if is_prime == true then
        check_three = ends_in_three(num)
        if check_three == true then
            print(num)
        end
    end
end

function check_n_primes(n)
    for i = 1, n do
        check_if_prime(i)
    end
end

check_n_primes(n)