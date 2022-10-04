num = io.read()

function ends_in_three(num)
    tostring(num)
    last_num = string.sub(num, -1)
    if last_num == "3" then
        return print("true")
    else
        return print("false")
    end
end

ends_in_three(num)