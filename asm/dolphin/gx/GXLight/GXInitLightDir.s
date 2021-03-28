lbl_8035D8BC:
/* 8035D8BC  FC 80 08 50 */	fneg f4, f1
/* 8035D8C0  FC 20 10 50 */	fneg f1, f2
/* 8035D8C4  FC 00 18 50 */	fneg f0, f3
/* 8035D8C8  D0 83 00 34 */	stfs f4, 0x34(r3)
/* 8035D8CC  D0 23 00 38 */	stfs f1, 0x38(r3)
/* 8035D8D0  D0 03 00 3C */	stfs f0, 0x3c(r3)
/* 8035D8D4  4E 80 00 20 */	blr 
