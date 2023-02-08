lbl_8063FF6C:
/* 8063FF6C  2C 04 00 00 */	cmpwi r4, 0
/* 8063FF70  41 82 00 20 */	beq lbl_8063FF90
/* 8063FF74  80 03 09 F8 */	lwz r0, 0x9f8(r3)
/* 8063FF78  60 00 00 01 */	ori r0, r0, 1
/* 8063FF7C  90 03 09 F8 */	stw r0, 0x9f8(r3)
/* 8063FF80  80 03 0B 30 */	lwz r0, 0xb30(r3)
/* 8063FF84  60 00 00 01 */	ori r0, r0, 1
/* 8063FF88  90 03 0B 30 */	stw r0, 0xb30(r3)
/* 8063FF8C  4E 80 00 20 */	blr 
lbl_8063FF90:
/* 8063FF90  80 03 09 F8 */	lwz r0, 0x9f8(r3)
/* 8063FF94  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063FF98  90 03 09 F8 */	stw r0, 0x9f8(r3)
/* 8063FF9C  80 03 0B 30 */	lwz r0, 0xb30(r3)
/* 8063FFA0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063FFA4  90 03 0B 30 */	stw r0, 0xb30(r3)
/* 8063FFA8  4E 80 00 20 */	blr 
