- **自我配置**README（迁移使用）：一般在自己的目录里首先
  - 配置mamba，spack等软件管理器, 安装tmux
  - zsh，先apt，然后zshrc即拿即用，**注意自己安装.oh-my-zsh（用官网的install.sh）**，**然后会在用户目录下生成.oh-my-zsh, 再git 插件，此时zshrc会被覆盖，再覆盖回去即可**（安装完后原来的zshrc会被backup为.zshrc.pre-oh-my-zsh，此时按需取用，注意zsh的版本，有些主题可能对版本有要求）
  - **基本的包安装完后，然后git clone配置仓库，再进行配置** **注意更新的时候要 cp myubuntu/.* ~/ 这样**

  ---

  - 配置tmux和ranger，安装下依赖，在本地配置好字体；修改vim的一些键位 高级配置
      - 安装[rainbarf](https://www.wolai.com/6zsG5eqqs6M2yavBrB3Xwi#2ZhqDBa9pgdxYmJEKBgSnC)，trash-cli命令行回收工具，配置
      - 记得本地主机里的ide，也要配置下vim移动键位的映射方式
  - vim配置：vim插件没有被存入git，所以需要自己[安装 vundle管理器](https://cloud.tencent.com/developer/article/1669204)后，在终端执行一遍`vim +PluginInstall +qall`（插件列表在vimrc中，已上传git）

- 如果当前配置数据不在了，请→tmux复现
- **还有一点，自从使用nfs+软链的方式，以后所有的服务器（实测centos亦可，除了zsh版本太低，不支持p10k），我的用户无处不在**

- lazyvim:直接安装完neovim，启动nvim便是 lazyvim了
  - **lazyvim中 添加copilot插件**  ：[**参考**](https://www.lazyvim.org/extras/coding/copilot)
    - 注意copliot插件需要 Neovim>0.9 
    - 实测 不如Vim中的copilot (这个也需要新版Vim)
