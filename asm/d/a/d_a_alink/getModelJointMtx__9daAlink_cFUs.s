lbl_800C1DAC:
/* 800C1DAC  54 84 04 3E */	clrlwi r4, r4, 0x10
/* 800C1DB0  A0 03 30 C6 */	lhz r0, 0x30c6(r3)
/* 800C1DB4  7C 04 00 40 */	cmplw r4, r0
/* 800C1DB8  41 80 00 10 */	blt lbl_800C1DC8
/* 800C1DBC  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800C1DC0  38 63 00 24 */	addi r3, r3, 0x24
/* 800C1DC4  4E 80 00 20 */	blr 
lbl_800C1DC8:
/* 800C1DC8  80 63 06 50 */	lwz r3, 0x650(r3)
/* 800C1DCC  80 63 00 84 */	lwz r3, 0x84(r3)
/* 800C1DD0  80 63 00 0C */	lwz r3, 0xc(r3)
/* 800C1DD4  1C 04 00 30 */	mulli r0, r4, 0x30
/* 800C1DD8  7C 63 02 14 */	add r3, r3, r0
/* 800C1DDC  4E 80 00 20 */	blr 
