# キーボードを押させる。マウスクリックには"cliclick"を使用
y = 430
while y < 590
    x = 150
    while x < 350
        system "/Applications/cliclick #{x} #{y}"    
        x += 5
    end
    y += 5
end
