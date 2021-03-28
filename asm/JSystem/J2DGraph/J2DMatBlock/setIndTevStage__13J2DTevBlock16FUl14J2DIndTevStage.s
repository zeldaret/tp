lbl_802F1EFC:
/* 802F1EFC  80 A5 00 00 */	lwz r5, 0(r5)
/* 802F1F00  54 80 10 3A */	slwi r0, r4, 2
/* 802F1F04  7C 63 02 14 */	add r3, r3, r0
/* 802F1F08  90 A3 01 2C */	stw r5, 0x12c(r3)
/* 802F1F0C  4E 80 00 20 */	blr 
