lbl_806EB0A4:
/* 806EB0A4  2C 04 00 00 */	cmpwi r4, 0
/* 806EB0A8  41 82 00 2C */	beq lbl_806EB0D4
/* 806EB0AC  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 806EB0B0  60 00 00 01 */	ori r0, r0, 1
/* 806EB0B4  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 806EB0B8  80 03 0F 94 */	lwz r0, 0xf94(r3)
/* 806EB0BC  60 00 00 01 */	ori r0, r0, 1
/* 806EB0C0  90 03 0F 94 */	stw r0, 0xf94(r3)
/* 806EB0C4  80 03 10 CC */	lwz r0, 0x10cc(r3)
/* 806EB0C8  60 00 00 01 */	ori r0, r0, 1
/* 806EB0CC  90 03 10 CC */	stw r0, 0x10cc(r3)
/* 806EB0D0  4E 80 00 20 */	blr 
lbl_806EB0D4:
/* 806EB0D4  80 03 0E 5C */	lwz r0, 0xe5c(r3)
/* 806EB0D8  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EB0DC  90 03 0E 5C */	stw r0, 0xe5c(r3)
/* 806EB0E0  80 03 0F 94 */	lwz r0, 0xf94(r3)
/* 806EB0E4  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EB0E8  90 03 0F 94 */	stw r0, 0xf94(r3)
/* 806EB0EC  80 03 10 CC */	lwz r0, 0x10cc(r3)
/* 806EB0F0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806EB0F4  90 03 10 CC */	stw r0, 0x10cc(r3)
/* 806EB0F8  4E 80 00 20 */	blr 
