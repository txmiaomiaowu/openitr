rm ../sources.list
# 订阅库
wget https://raw.githubusercontent.com/snakem982/proxypool/main/proxies.txt
wget https://raw.githubusercontent.com/snakem982/proxypool/main/nodelist.txt
wget https://raw.githubusercontent.com/WilliamStar007/ClashX-V2Ray-TopFreeProxy/main/combine/v2raysub.txt
#合并文件
ls *.txt |
while read file_name;
do
    cat "$file_name" >> all.txt
    echo "
" >> all.txt
done
#去重
sort all.txt |uniq > alls.txt
#清理
mv ./alls.txt ../sources.list
rm ./all.txt
rm ./proxies.txt
rm ./nodelist.txt
rm ./v2raysub.txt

