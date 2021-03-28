lbl_800CF2DC:
/* 800CF2DC  80 83 06 50 */	lwz r4, 0x650(r3)
/* 800CF2E0  80 84 00 84 */	lwz r4, 0x84(r4)
/* 800CF2E4  80 84 00 0C */	lwz r4, 0xc(r4)
/* 800CF2E8  A0 03 30 B8 */	lhz r0, 0x30b8(r3)
/* 800CF2EC  1C 00 00 30 */	mulli r0, r0, 0x30
/* 800CF2F0  7C 64 02 14 */	add r3, r4, r0
/* 800CF2F4  4E 80 00 20 */	blr 
