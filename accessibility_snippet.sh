#!/bin/bash

targetDir=$HOME"/Library/Developer/Xcode/UserData/CodeSnippets"

echo "准备下载 AccesibilityCodeSnippets"
git clone https://git.woa.com/wyanwan/AccesibilityCodeSnippets.git

cd AccesibilityCodeSnippets

echo "将文件复制到:"$targetDir
find . -name "*.codesnippet" -exec cp {} $targetDir \;

cd ..
echo "删除 AccesibilityCodeSnippets"
rm -rf AccesibilityCodeSnippets/
echo "执行完成 重启 XCode 生效"