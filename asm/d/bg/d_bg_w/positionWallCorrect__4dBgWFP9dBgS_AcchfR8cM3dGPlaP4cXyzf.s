lbl_8007B9EC:
/* 8007B9EC  80 04 00 2C */	lwz r0, 0x2c(r4)
/* 8007B9F0  60 00 00 10 */	ori r0, r0, 0x10
/* 8007B9F4  90 04 00 2C */	stw r0, 0x2c(r4)
/* 8007B9F8  C0 02 8D 04 */	lfs f0, lit_3937(r2)
/* 8007B9FC  EC 42 00 28 */	fsubs f2, f2, f0
/* 8007BA00  C0 02 8C F8 */	lfs f0, lit_3717(r2)
/* 8007BA04  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8007BA08  40 80 00 08 */	bge lbl_8007BA10
/* 8007BA0C  FC 40 00 90 */	fmr f2, f0
lbl_8007BA10:
/* 8007BA10  EC 42 00 72 */	fmuls f2, f2, f1
/* 8007BA14  C0 26 00 00 */	lfs f1, 0(r6)
/* 8007BA18  C0 05 00 00 */	lfs f0, 0(r5)
/* 8007BA1C  EC 02 00 32 */	fmuls f0, f2, f0
/* 8007BA20  EC 01 00 2A */	fadds f0, f1, f0
/* 8007BA24  D0 06 00 00 */	stfs f0, 0(r6)
/* 8007BA28  C0 26 00 08 */	lfs f1, 8(r6)
/* 8007BA2C  C0 05 00 08 */	lfs f0, 8(r5)
/* 8007BA30  EC 02 00 32 */	fmuls f0, f2, f0
/* 8007BA34  EC 01 00 2A */	fadds f0, f1, f0
/* 8007BA38  D0 06 00 08 */	stfs f0, 8(r6)
/* 8007BA3C  4E 80 00 20 */	blr 
