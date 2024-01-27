(in-package :cage433-package)

(defun test-suite ()
  (labels ((check-match (actual expected)
                    (if (not (equal actual expected))
                      (format t "Failed again. Expected ~A, got ~A%" actual expected))
                    (equal actual expected)))
    (info "Suite"
          (info "Sub suite"
                (spec "Test"
                      (check-match 3 3))))))



