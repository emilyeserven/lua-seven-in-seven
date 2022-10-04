print("Enter a number.")
num = io.read()

function check_if_prime(num)
    tonumber(num)
    is_prime = false
    for i = 1, (num - 1) do
        prime_check = num % i
        if prime_check == 0 and i ~= 1 then
            print("NOT prime!")
        end
    end
    if is_prime == true then
        print("Prime!")
    end
end

check_if_prime(num)