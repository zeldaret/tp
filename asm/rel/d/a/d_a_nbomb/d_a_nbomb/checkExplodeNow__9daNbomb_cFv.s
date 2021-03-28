lbl_804CC2C0:
/* 804CC2C0  88 63 0B 51 */	lbz r3, 0xb51(r3)
/* 804CC2C4  30 03 FF FF */	addic r0, r3, -1
/* 804CC2C8  7C 00 19 10 */	subfe r0, r0, r3
/* 804CC2CC  54 03 06 3E */	clrlwi r3, r0, 0x18
/* 804CC2D0  4E 80 00 20 */	blr 
