(defsystem "yubin"
  :version "0.1.0"
  :author "t-cool"
  :license "MIT"
  :depends-on ("dexador"
               "jonathan"
               "rove")
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description "Postal code is called Yubin Bangou in Japanese. This app searches the name of a place by yubin command."
  :long-description
  #.(read-file-string
     (subpathname *load-pathname* "README.markdown"))
  :in-order-to ((test-op (test-op "yubin/tests"))))

(defsystem "yubin/tests"
  :author ""
  :license ""
  :depends-on ("yubin"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for yubin"

  :perform (test-op (op c) (symbol-call :rove :run c)))
