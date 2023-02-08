lbl_8063FFAC:
/* 8063FFAC  2C 04 00 00 */	cmpwi r4, 0
/* 8063FFB0  41 82 00 20 */	beq lbl_8063FFD0
/* 8063FFB4  80 03 0A 0C */	lwz r0, 0xa0c(r3)
/* 8063FFB8  60 00 00 01 */	ori r0, r0, 1
/* 8063FFBC  90 03 0A 0C */	stw r0, 0xa0c(r3)
/* 8063FFC0  80 03 0B 44 */	lwz r0, 0xb44(r3)
/* 8063FFC4  60 00 00 01 */	ori r0, r0, 1
/* 8063FFC8  90 03 0B 44 */	stw r0, 0xb44(r3)
/* 8063FFCC  4E 80 00 20 */	blr 
lbl_8063FFD0:
/* 8063FFD0  80 03 0A 0C */	lwz r0, 0xa0c(r3)
/* 8063FFD4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063FFD8  90 03 0A 0C */	stw r0, 0xa0c(r3)
/* 8063FFDC  80 03 0B 44 */	lwz r0, 0xb44(r3)
/* 8063FFE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8063FFE4  90 03 0B 44 */	stw r0, 0xb44(r3)
/* 8063FFE8  4E 80 00 20 */	blr 
