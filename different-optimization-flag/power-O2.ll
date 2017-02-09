; ModuleID = 'power.c'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind readnone uwtable
define i32 @main() #0 {
  br label %1

; <label>:1                                       ; preds = %1, %0
  %y.0 = phi i32 [ undef, %0 ], [ %3, %1 ]
  %r.0 = phi i32 [ 1, %0 ], [ 0, %1 ]
  %2 = icmp sgt i32 %y.0, 0
  %3 = add nsw i32 %y.0, -1
  br i1 %2, label %1, label %4

; <label>:4                                       ; preds = %1
  ret i32 %r.0
}

attributes #0 = { nounwind readnone uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"Ubuntu clang version 3.4-1ubuntu3 (tags/RELEASE_34/final) (based on LLVM 3.4)"}
