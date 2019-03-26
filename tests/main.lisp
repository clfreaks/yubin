(defpackage #:yubin/tests/main
  (:use #:cl
        #:yubin
        #:rove))
(in-package #:yubin/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :yubin)' in your Lisp.

(deftest yubin
  (testing "should return the address for a given postal code"
    (ok (equal (yubin:get-place 6380321) "奈良県吉野郡天川村坪内"))
    (ok (equal (yubin:get-place 1500000) "東京都渋谷区")))
  (testing "should return an empty string for an unknown postal code"
    (ok (equal (yubin:get-place 6068501) ""))))
