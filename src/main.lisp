(defpackage #:yubin
  (:use #:cl)
  (:import-from #:jonathan)
  (:import-from #:dexador)
  (:export #:get-place))
(in-package #:yubin)

(defun get-place (zipcode)
  (let* ((url (format nil "http://zipcloud.ibsnet.co.jp/api/search?zipcode=~A" zipcode))
         (data (reverse (car (fourth (jonathan:parse (dex:get url)))))))
    (concatenate 'string (first data) (third data) (fifth data))))
