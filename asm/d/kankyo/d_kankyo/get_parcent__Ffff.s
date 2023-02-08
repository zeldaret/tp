lbl_8019D878:
/* 8019D878  EC 81 10 28 */	fsubs f4, f1, f2
/* 8019D87C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D880  FC 00 20 00 */	fcmpu cr0, f0, f4
/* 8019D884  41 82 00 20 */	beq lbl_8019D8A4
/* 8019D888  C0 42 A2 48 */	lfs f2, lit_4505(r2)
/* 8019D88C  EC 01 18 28 */	fsubs f0, f1, f3
/* 8019D890  EC 00 20 24 */	fdivs f0, f0, f4
/* 8019D894  EC 22 00 28 */	fsubs f1, f2, f0
/* 8019D898  FC 01 10 40 */	fcmpo cr0, f1, f2
/* 8019D89C  4C 41 13 82 */	cror 2, 1, 2
/* 8019D8A0  4C 82 00 20 */	bnelr 
lbl_8019D8A4:
/* 8019D8A4  C0 22 A2 48 */	lfs f1, lit_4505(r2)
/* 8019D8A8  4E 80 00 20 */	blr 
