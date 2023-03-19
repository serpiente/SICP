#lang sicp

;When using an applicative order we will evaluate the operands/arguments first then the operatio
;In this case it will evaluate both guess and sqrt-iter. But once sqrt iter is evaluated it will
;go into infinite recursion unstil we reach a stack overflow