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
git commit -m ""