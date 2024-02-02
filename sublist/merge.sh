# 订阅库
wget https://raw.githubusercontent.com/snakem982/proxypool/main/proxies.txt
wget https://raw.githubusercontent.com/snakem982/proxypool/main/nodelist.txt
#合并文件
ls *.txt |
while read file_name;
do
    echo "${file_name%.*}:" >> all.txt
    cat "$file_name" >> all.txt
    echo "" >> all.txt
done
#去重
sort all.txt |uniq > alls.txt
#清理
mv ./alls.txt ../sources.list
rm ./all.txt
rm ./proxies.txt
rm ./nodelist.txt

