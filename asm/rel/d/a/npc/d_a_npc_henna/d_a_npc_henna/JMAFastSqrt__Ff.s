lbl_8054A80C:
/* 8054A80C  3C 60 80 55 */	lis r3, lit_3921@ha /* 0x8054A970@ha */
/* 8054A810  C0 03 A9 70 */	lfs f0, lit_3921@l(r3)  /* 0x8054A970@l */
/* 8054A814  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054A818  4C 81 00 20 */	blelr 
/* 8054A81C  FC 00 08 34 */	frsqrte f0, f1
/* 8054A820  EC 20 00 72 */	fmuls f1, f0, f1
/* 8054A824  4E 80 00 20 */	blr 
