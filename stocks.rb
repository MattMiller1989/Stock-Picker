
def pick(arr)
    l=arr.length
    max_profit=0
    max_buy=nil
    max_sell=nil
    for x in 0..l-1 
        
        for y in x..l-1 
            if arr[y]-arr[x]>max_profit 
                max_profit=arr[y]-arr[x]
                max_buy=x
                max_sell=y
            end
        end
    end

    if max_sell!=nil&&max_buy!=nil
        return [max_buy,max_sell]
    else
        return "No profits exist"
    end
end

puts pick([17,3,6,9,1,8,6,10,15])