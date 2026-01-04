---
allowed-tools: Bash(git add:*), Bash(git status:*), Bash(git diff:*), Bash(git commit:*), Bash(git push:*)
argument-hint: [commit message]
description: 提交并推送代码
---

执行以下步骤：

1. 运行 `git status` 查看当前更改
2. 运行 `git diff --staged` 和 `git diff` 查看具体改动
3. 如果有未暂存的更改，运行 `git add .` 添加所有更改
4. 使用以下 commit message 提交代码：$ARGUMENTS
   - 如果没有提供 message，根据更改内容自动生成一个简洁的 commit message
5. 运行 `git push` 推送到远程仓库

注意：

- 提交前简要说明本次更改的内容
- 如果 push 失败（如需要先 pull），告知我具体情况
