lbl_80281774:
/* 80281774  C8 02 BA 08 */	lfd f0, lit_792(r2)
/* 80281778  FC C0 08 28 */	fsub f6, f0, f1
/* 8028177C  FC 06 01 B2 */	fmul f0, f6, f6
/* 80281780  FD 00 01 B2 */	fmul f8, f0, f6
/* 80281784  FD 21 00 72 */	fmul f9, f1, f1
/* 80281788  FD 49 00 72 */	fmul f10, f9, f1
/* 8028178C  C8 E2 BA 20 */	lfd f7, lit_799(r2)
/* 80281790  C8 C2 BA 28 */	lfd f6, lit_800(r2)
/* 80281794  FC 01 48 2A */	fadd f0, f1, f9
/* 80281798  FC 00 50 28 */	fsub f0, f0, f10
/* 8028179C  FC 06 00 32 */	fmul f0, f6, f0
/* 802817A0  FC 07 00 2A */	fadd f0, f7, f0
/* 802817A4  FC 80 01 32 */	fmul f4, f0, f4
/* 802817A8  C8 22 BA 30 */	lfd f1, lit_801(r2)
/* 802817AC  FC 06 02 B2 */	fmul f0, f6, f10
/* 802817B0  FC 00 48 28 */	fsub f0, f0, f9
/* 802817B4  FC 01 00 2A */	fadd f0, f1, f0
/* 802817B8  FC 60 00 F2 */	fmul f3, f0, f3
/* 802817BC  FC 28 00 B2 */	fmul f1, f8, f2
/* 802817C0  FC 0A 01 72 */	fmul f0, f10, f5
/* 802817C4  FC 01 00 2A */	fadd f0, f1, f0
/* 802817C8  FC 07 00 32 */	fmul f0, f7, f0
/* 802817CC  FC 03 00 2A */	fadd f0, f3, f0
/* 802817D0  FC 24 00 2A */	fadd f1, f4, f0
/* 802817D4  4E 80 00 20 */	blr 
