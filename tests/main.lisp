(defpackage yubin/tests/main
  (:use :cl
        :yubin
        :rove))
(in-package :yubin/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :yubin)' in your Lisp.

(deftest test-yubin-1
  (testing "(yubin:get-place 6380321) should equal to \"奈良県吉野郡天川村坪内\"")
    (ok (equal (yubin:get-place 6380321) "奈良県吉野郡天川村坪内")))

(deftest test-yubin-2
  (testing "should (equal (yubin:get-place 1500000) \"東京都渋谷区\") to be true")
    (ok (equal (yubin:get-place 1500000) "東京都渋谷区")))

(deftest test-yubin-3
  (testing "(yubin:get-place 6068501) should equal to \"\"")
    (ok (equal (yubin:get-place 6068501) "")))
