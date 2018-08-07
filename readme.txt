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