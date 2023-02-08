lbl_8019D44C:
/* 8019D44C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D450  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019D454  40 80 00 08 */	bge lbl_8019D45C
/* 8019D458  38 80 00 00 */	li r4, 0
lbl_8019D45C:
/* 8019D45C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D460  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019D464  4C 40 13 82 */	cror 2, 0, 2
/* 8019D468  41 82 00 14 */	beq lbl_8019D47C
/* 8019D46C  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 8019D470  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8019D474  4C 41 13 82 */	cror 2, 1, 2
/* 8019D478  40 82 00 08 */	bne lbl_8019D480
lbl_8019D47C:
/* 8019D47C  38 80 00 00 */	li r4, 0
lbl_8019D480:
/* 8019D480  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8019D484  2C 00 00 02 */	cmpwi r0, 2
/* 8019D488  41 82 00 3C */	beq lbl_8019D4C4
/* 8019D48C  40 80 00 14 */	bge lbl_8019D4A0
/* 8019D490  2C 00 00 00 */	cmpwi r0, 0
/* 8019D494  41 82 00 70 */	beq lbl_8019D504
/* 8019D498  40 80 00 14 */	bge lbl_8019D4AC
/* 8019D49C  48 00 00 68 */	b lbl_8019D504
lbl_8019D4A0:
/* 8019D4A0  2C 00 00 04 */	cmpwi r0, 4
/* 8019D4A4  40 80 00 60 */	bge lbl_8019D504
/* 8019D4A8  48 00 00 40 */	b lbl_8019D4E8
lbl_8019D4AC:
/* 8019D4AC  C0 82 A2 48 */	lfs f4, lit_4505(r2)
/* 8019D4B0  EC 64 10 28 */	fsubs f3, f4, f2
/* 8019D4B4  EC 02 00 72 */	fmuls f0, f2, f1
/* 8019D4B8  EC A3 00 24 */	fdivs f5, f3, f0
/* 8019D4BC  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019D4C0  48 00 00 50 */	b lbl_8019D510
lbl_8019D4C4:
/* 8019D4C4  C0 82 A2 48 */	lfs f4, lit_4505(r2)
/* 8019D4C8  C0 62 A2 60 */	lfs f3, lit_4529(r2)
/* 8019D4CC  EC 04 10 28 */	fsubs f0, f4, f2
/* 8019D4D0  EC 63 00 32 */	fmuls f3, f3, f0
/* 8019D4D4  EC 02 00 72 */	fmuls f0, f2, f1
/* 8019D4D8  EC A3 00 24 */	fdivs f5, f3, f0
/* 8019D4DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019D4E0  EC 03 00 24 */	fdivs f0, f3, f0
/* 8019D4E4  48 00 00 2C */	b lbl_8019D510
lbl_8019D4E8:
/* 8019D4E8  C0 82 A2 48 */	lfs f4, lit_4505(r2)
/* 8019D4EC  C0 A2 A2 0C */	lfs f5, lit_4409(r2)
/* 8019D4F0  EC 64 10 28 */	fsubs f3, f4, f2
/* 8019D4F4  EC 02 00 72 */	fmuls f0, f2, f1
/* 8019D4F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 8019D4FC  EC 03 00 24 */	fdivs f0, f3, f0
/* 8019D500  48 00 00 10 */	b lbl_8019D510
lbl_8019D504:
/* 8019D504  C0 82 A2 48 */	lfs f4, lit_4505(r2)
/* 8019D508  C0 A2 A2 0C */	lfs f5, lit_4409(r2)
/* 8019D50C  FC 00 28 90 */	fmr f0, f5
lbl_8019D510:
/* 8019D510  D0 83 00 28 */	stfs f4, 0x28(r3)
/* 8019D514  D0 A3 00 2C */	stfs f5, 0x2c(r3)
/* 8019D518  D0 03 00 30 */	stfs f0, 0x30(r3)
/* 8019D51C  4E 80 00 20 */	blr 
