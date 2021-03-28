lbl_80051ADC:
/* 80051ADC  D0 23 00 18 */	stfs f1, 0x18(r3)
/* 80051AE0  D0 43 00 1C */	stfs f2, 0x1c(r3)
/* 80051AE4  D0 63 00 20 */	stfs f3, 0x20(r3)
/* 80051AE8  D0 83 00 24 */	stfs f4, 0x24(r3)
/* 80051AEC  4E 80 00 20 */	blr 
