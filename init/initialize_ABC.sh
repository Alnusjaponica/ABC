#!/bin/bash

#コンテスト番号の取得
cur=$1

#サンプルケースの取得
for prob in a b c d e f
do
    mkdir ABC${cur}
    mkdir ABC${cur}/samples 
    touch ABC${cur}/ABC${cur}_${prob}.py
    oj d https://atcoder.jp/contests/abc${cur}/tasks/abc${cur}_${prob} -d ABC${cur}/samples/test_${prob}/
done

#関数定義
check() {
 oj t -c "python3 ABC${cur}/ABC${cur}_${1}.py" -d ABC${cur}/samples/test_${1}
}

submit() {
 oj s https://atcoder.jp/contests/abc${cur}/tasks/abc${cur}_${1} ABC${cur}/ABC${cur}_${1}.py
}

testes(){
    echo $1
}