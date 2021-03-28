lbl_800CFFE0:
/* 800CFFE0  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800CFFE4  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800CFFE8  1C 04 00 30 */	mulli r0, r4, 0x30
/* 800CFFEC  7C 63 02 14 */	add r3, r3, r0
/* 800CFFF0  4E 80 00 20 */	blr 
