

def fibs(n)
    number1=0
    number2=1
    number3=0
    print "#{number1} #{number2} "
    (n-2).to_i.times do
        number3=number1+number2
        number1=number2
        number2=number3
        print "#{number3} "
    end
end

fibs(5)

puts ""


def fibs_rec(n,arr=[0,1])
    return if n==2
    arr << arr[-2] + arr[-1]
    fibs_rec(n-1,arr)
    arr
end

p fibs_rec(5)
