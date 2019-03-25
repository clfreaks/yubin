# yubin

<img src="https://lh3.googleusercontent.com/7R86AWGBu4t5mbtw1heKahOQ8p82_CvjrDYfhejwtl8LqzCAROM5xWptgyvmj45Skgh3bGpgKvV6Q4_jBGI" width="100px">

[技術書典6 Survival Common Lisp](https://techbookfest.org/event/tbf06/circle/38170002)

4章「プロジェクトの作り方」のサンプルコードです。

郵便番号から地名を検索します。

### 利用法

```
$ ros install clfreaks/yubin
$ yubin 6380321
"奈良県吉野郡天川村坪内"
```

### テスト

```
$ rove ~/.roswell/local-projects/yubin/yubin.asd
Testing System yubin/tests

;; testing 'yubin/tests/main'
  test-yubin-1
    (yubin:get-place 6380321) should equal to "奈良県吉野郡天川村川合"
    ✓ Expect (EQUAL (GET-PLACE 6380321) 奈良県吉野郡天川村坪内) to be true. (630ms)
  test-yubin-2
    should (equal (yubin:get-place 1500000) "東京都渋谷区") to be true
    ✓ Expect (EQUAL (GET-PLACE 1500000) 東京都渋谷区) to be true. (582ms)
  test-yubin-3
    (yubin:get-place 6068501) should equal to ""
    ✓ Expect (EQUAL (GET-PLACE 6068501) ) to be true. (302ms)

✓ 3 tests completed

Summary:
  All 3 tests passed.
```