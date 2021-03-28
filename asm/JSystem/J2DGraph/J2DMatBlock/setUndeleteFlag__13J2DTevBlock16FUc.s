lbl_802F1F9C:
/* 802F1F9C  88 03 01 B0 */	lbz r0, 0x1b0(r3)
/* 802F1FA0  7C 00 20 38 */	and r0, r0, r4
/* 802F1FA4  98 03 01 B0 */	stb r0, 0x1b0(r3)
/* 802F1FA8  4E 80 00 20 */	blr 
