#!/bin/sh

var1=$(./saidai_kouyakusuu.sh 4 2|tail -n 1)

if [ $var1 = 2 ] ; then
	echo "成功"
else
	echo "失敗"
fi

#エラー検知テスト
echo "要素数エラー検知 要素数　少"

var1=$(./saidai_kouyakusuu.sh 3|tail -n 1)

if [ $var1 = "ERROR" ]; then
	echo "エラー検知：成功"
else
	echo "エラー検知：失敗"
fi

echo "要素数エラー検知 要素数　多"

var1=$(./saidai_kouyakusuu.sh 4 5 3|tail -n 1)

if [ $var1 = "ERROR" ]; then
        echo "エラー検知：成功"
else
        echo "エラー検知：失敗"
fi

echo "整数以外の要素の検知"

var1=$(./saidai_kouyakusuu.sh 3 r|tail -n 1)

if [ $var1 = "ERROR" ]; then
        echo "エラー検知：成功"
	else
        echo "エラー検知：失敗"
fi
