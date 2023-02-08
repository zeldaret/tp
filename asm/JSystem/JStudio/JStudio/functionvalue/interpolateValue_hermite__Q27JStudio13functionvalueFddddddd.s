lbl_80281710:
/* 80281710  FD 21 10 28 */	fsub f9, f1, f2
/* 80281714  C9 02 BA 08 */	lfd f8, lit_792(r2)
/* 80281718  FC 05 10 28 */	fsub f0, f5, f2
/* 8028171C  FC 08 00 24 */	fdiv f0, f8, f0
/* 80281720  FC 49 00 32 */	fmul f2, f9, f0
/* 80281724  FD 42 40 28 */	fsub f10, f2, f8
/* 80281728  C8 22 BA 10 */	lfd f1, lit_793(r2)
/* 8028172C  C8 02 BA 18 */	lfd f0, lit_794(r2)
/* 80281730  FC 00 00 B2 */	fmul f0, f0, f2
/* 80281734  FC 21 00 2A */	fadd f1, f1, f0
/* 80281738  FC 02 00 B2 */	fmul f0, f2, f2
/* 8028173C  FD 61 00 32 */	fmul f11, f1, f0
/* 80281740  FC 0A 02 72 */	fmul f0, f10, f9
/* 80281744  FC 02 00 32 */	fmul f0, f2, f0
/* 80281748  FC A0 01 F2 */	fmul f5, f0, f7
/* 8028174C  FC 0A 02 B2 */	fmul f0, f10, f10
/* 80281750  FC 09 00 32 */	fmul f0, f9, f0
/* 80281754  FC 40 01 32 */	fmul f2, f0, f4
/* 80281758  FC 08 58 28 */	fsub f0, f8, f11
/* 8028175C  FC 20 00 F2 */	fmul f1, f0, f3
/* 80281760  FC 0B 01 B2 */	fmul f0, f11, f6
/* 80281764  FC 01 00 2A */	fadd f0, f1, f0
/* 80281768  FC 02 00 2A */	fadd f0, f2, f0
/* 8028176C  FC 25 00 2A */	fadd f1, f5, f0
/* 80281770  4E 80 00 20 */	blr 
