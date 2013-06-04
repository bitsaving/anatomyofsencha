# core/lang/Number.js

## 即時関数

### isToFixedBroken
IE6,7 で `Number.toFixed` に誤差があるバグがあるらしい。 (0.9).toFixed() が 1 にならない。その判定。

## Ext.Number

`Ext.Number`オブジェクトを定義。

### constrain

数値を最小、最大の範囲内に収めて返す。

### snap

数値、増加値、最小値、最大値を引数に取り、増加値にあうような値を返す。グリッドにひっつく場合などに使用すると便利。

増加値の半分以上か、未満で値を分岐。2で割るのでは無く、値を2倍してるのがポイント。誤差が出るので割り算はあまり使わないほうがいい。


### toFixed

`isToFixedBroken` の時の対応。切りの良い数字じゃないとバグるので、その対応。


### from

value を数値にして返す。数値じゃない場合、デフォルト値を返す。

`parseFloat` を使用しているのが疑問。
`parseFloat` は、文字列の途中まで数字にする。`Number()`は完全に数字がチェックする。

```
> parseFloat("123a56")
123
> Number("123a56")
NaN
```

次のように 16進数などを表す場合困る。

```
> parseFloat("0x20")
0
> Number("0x20")
32
```


## Ext のエイリアス

Ext 名前空間にエイリアスを定義

- Ext.num
 - deprecated
