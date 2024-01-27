(load "package.lisp")

(in-package :cage433-package)


(defun load-and-compile-source()
  (format t "Loading source ~%")
    (and
      (cage433-ci:load-and-compile-if-necessary "source")
      (cage433-ci:load-and-compile-if-necessary "tests/test")
      ))

(defun compile-and-run-tests()
  (declare #+sbcl(sb-ext:muffle-conditions style-warning))
    (if (load-and-compile-source)

      (run-tests (info "tests"
          (test-suite)
          ))))

(in-package :common-lisp-user)

(defun ci()
  (cage433-ci:run-ci-function #'cage433-package::compile-and-run-tests)
  )




