lbl_80B7C500:
/* 80B7C500  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B7C504  54 00 67 3E */	rlwinm r0, r0, 0xc, 0x1c, 0x1f
/* 80B7C508  2C 00 00 01 */	cmpwi r0, 1
/* 80B7C50C  41 82 00 08 */	beq lbl_80B7C514
/* 80B7C510  48 00 00 0C */	b lbl_80B7C51C
lbl_80B7C514:
/* 80B7C514  38 60 00 03 */	li r3, 3
/* 80B7C518  4E 80 00 20 */	blr 
lbl_80B7C51C:
/* 80B7C51C  38 60 00 00 */	li r3, 0
/* 80B7C520  4E 80 00 20 */	blr 
