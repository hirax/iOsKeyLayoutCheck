# "キーファイル”からPostScriptコードを作成
str= <<EOS
%!PS-Adobe-3.0
0 0 0 setrgbcolor
/Times-Roman findfont 5 scalefont setfont
EOS

lines = open("keys.txt").readlines
i = 0
y = 430
while y < 590
    x = 150
    while x < 350
        str+="#{(lines[0][i]%10)/10.0} #{(lines[0][i]%7)/7.0} #{(lines[0][i]%3)/3.0} setrgbcolor\n"
        str+="#{x} #{200+590-y} moveto\n(#{lines[0][i].chr}) show\n"
        x += 5
        i+=1
    end
    y += 5
end
str+="showpage\n"
puts str
