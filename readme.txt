git 本地仓库管理
1.初始化一个Git仓库，使用git init命令。
   添加文件到Git仓库，分两步：
        使用命令git add <file>，注意，可反复多次使用，添加多个文件；
        使用命令git commit -m <message>，完成。
2.要随时掌握工作区的状态，使用git status命令，如果git status告诉你有文件被修改过，用git diff可以查看修改内容。

3. 穿梭前，用git log可以查看提交历史，以便确定要回退到哪个版本。
git log [--pretty=oneline]

4.回退上一个版本
git reset --hard HEAD^
 回退制定版本
git reset --hard <版本号（可以写前几位）>

5.查看文件内容
cat file_name

6.要重返未来，用git reflog查看命令历史，以便确定要回到未来的哪个版本。

7. 把暂存区的修改撤销掉,重新放回工作区
git reset HEAD <file>
eg: git reset HEAD readme.txt

8. 把工作区的内容撤销掉：
git checkout -- file

9. 删除文件
git rm file_name
git commit -m

10.查看远程仓库
git remote -v

eg
git remote add origin https://github.com/RamonZhao/git.git
获取远程仓库信息
 git fetch origin


11. git push 使用本地的对应分支来更新对应的远程分支。
格式 $ git push <远程主机名> <本地分支名>:<远程分支名> 
eg  $ git push origin master
上面命令表示，将本地的master分支推送到origin主机的master分支。如果后者不存在，则会被新建。 
origin是一个远程厂库地址。

如果省略本地分支名，则表示删除指定的远程分支，因为这等同于推送一个空的本地分支到远程分支，这条命令是删除远程master分支。
$ git push origin :master
# 等同于
$ git push origin --delete master

如果当前分支只有一个追踪分支，那么主机名都可以省略。
$ git push

最后，git push不会推送标签(tag)，除非使用–tags选项。
$ git push origin --tags

12 git pull 获取并合并其他的厂库，或者本地的其他分支。
格式 git pull <远程主机> <远程分支>:<本地分支>
eg git pull origin master:my_test
上面的命令是将origin厂库的master分支拉取并合并到本地的my_test分支上。

如果省略本地分支，则将自动合并到当前所在分支上。如下：
git pull origin master

13 . 查看当前分支属性
git branch -vv 
git config --lis

git远程仓库管理
  第一步.创建SSH Key.
  ssh-keygen -t rsa -b 4096 -C "314662604@qq.com"
  如果一切顺利的话，可以在用户主目录里找到.ssh目录，里面有id_rsa和id_rsa.pub两个文件，这两个就是SSH Key的秘钥对，id_rsa是私钥，不能泄露出去，id_rsa.pub是公钥，可以放心地告诉任何人。

  第2步：登陆GitHub，打开“Account settings”，“SSH Keys”页面：
  然后，点“Add SSH Key”，填上任意Title，在Key文本框里粘贴id_rsa.pub文件的内容：

1.要关联一个远程库，使用命令
git remote add origin git@github.com:path/repo-name.git

2.本地仓库推数据给远程仓库
git push -u origin master （第一次）
git push origin master   （第一次后）

3.要克隆一个仓库，首先必须知道仓库的地址，然后使用git clone命令克隆。


    使用git在本地创建一个项目的过程

    $ makdir ~/hello-world    //创建一个项目hello-world
    $ cd ~/hello-world       //打开这个项目
    $ git init             //初始化 
    $ touch README
    $ git add README        //更新README文件
    $ git commit -m 'first commit'     //提交更新，并注释信息“first commit” 
    $ git remote add origin git@github.com:defnngj/hello-world.git     //连接远程github项目  
    $ git push -u origin master     //将本地项目更新到github项目上去