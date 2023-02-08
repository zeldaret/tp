lbl_80260AA8:
/* 80260AA8  88 03 00 8C */	lbz r0, 0x8c(r3)
/* 80260AAC  28 00 00 01 */	cmplwi r0, 1
/* 80260AB0  40 82 00 1C */	bne lbl_80260ACC
/* 80260AB4  C0 22 B5 40 */	lfs f1, lit_3919(r2)
/* 80260AB8  C0 03 00 84 */	lfs f0, 0x84(r3)
/* 80260ABC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80260AC0  40 82 00 0C */	bne lbl_80260ACC
/* 80260AC4  38 60 00 01 */	li r3, 1
/* 80260AC8  4E 80 00 20 */	blr 
lbl_80260ACC:
/* 80260ACC  38 60 00 00 */	li r3, 0
/* 80260AD0  4E 80 00 20 */	blr 
