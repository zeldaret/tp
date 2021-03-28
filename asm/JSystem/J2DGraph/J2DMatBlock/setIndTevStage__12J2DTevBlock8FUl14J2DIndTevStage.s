lbl_802F219C:
/* 802F219C  80 A5 00 00 */	lwz r5, 0(r5)
/* 802F21A0  54 80 10 3A */	slwi r0, r4, 2
/* 802F21A4  7C 63 02 14 */	add r3, r3, r0
/* 802F21A8  90 A3 00 BC */	stw r5, 0xbc(r3)
/* 802F21AC  4E 80 00 20 */	blr 
