(asdf:defsystem cl-hash-util
  :author "Andrew Danger Lyon <orthecreedence@gmail.com>"
  :license "MIT"
  :version "0.1.7"
  :description "A simple and natural wrapper around Common Lisp's hash functionality."
  :serial t
  :in-order-to ((test-op (test-op "cl-hash-util-test")))
  :components ((:file "hash-util")
               (:file "more-hash-util")))
