#lang racket

(require rackunit
         rackunit/text-ui
         errortrace
         "tests/test-environment.rkt"
         "tests/files.rkt"
         "tests/project.rkt"
         "tests/crypto.rkt"
         "tests/compiler.rkt")

(setup-test-environment)
;; Run tests
(define result
  (run-tests 
    (make-test-suite "all-tests"
      (list
        compiler-suite
        file-suite
        project-suite
        crypto-suite))))
(teardown-test-environment)

(exit result)
