if [ -n "$CUDA_V" ]; then
	echo "目前使用的CUDA版本CUDA_V为  $CUDA_V"
	sudo cp ./include/cudnn*.h /usr/local/$CUDA_V/include
	sudo cp -P lib/libcudnn* /usr/local/$CUDA_V/lib64 
	sudo chmod a+r /usr/local/$CUDA_V/include/cudnn*.h /usr/local/$CUDA_V/lib64/libcudnn*
else
	echo "未指定CUDA_V环境变量，无法安装cudnn"
fi
