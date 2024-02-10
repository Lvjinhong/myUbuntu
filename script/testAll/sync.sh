
# 源文件夹和目标文件夹路径
SOURCE_DIR="./*"
#如果是服务器加上username@server.com:
TARGET_DIR="/home/ljh/Project/ASC/ASC24-LLM-inference-optimization"

# 使用 rsync 同步文件夹   --delete选项会删除目标文件夹中没有的文件
rsync -avhP  --exclude='model' -e "ssh -p 39290" $SOURCE_DIR ljh@115.24.15.70:$TARGET_DIR
# rsync -avhP  $SOURCE_DIR $TARGET_DIR

# echo "同步完成。"
