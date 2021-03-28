lbl_800CF2F8:
/* 800CF2F8  80 83 06 50 */	lwz r4, 0x650(r3)
/* 800CF2FC  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800CF300  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800CF304  A0 03 30 BA */	lhz r0, 0x30ba(r3)
/* 800CF308  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800CF30C  7C 64 02 14 */	add r3, r4, r0
/* 800CF310  4E 80 00 20 */	blr 
