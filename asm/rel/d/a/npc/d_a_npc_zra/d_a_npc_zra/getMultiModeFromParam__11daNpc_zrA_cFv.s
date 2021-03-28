lbl_80B7C5E4:
/* 80B7C5E4  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80B7C5E8  54 04 67 3E */	rlwinm r4, r0, 0xc, 0x1c, 0x1f
/* 80B7C5EC  88 03 14 E8 */	lbz r0, 0x14e8(r3)
/* 80B7C5F0  28 00 00 00 */	cmplwi r0, 0
/* 80B7C5F4  41 82 00 0C */	beq lbl_80B7C600
/* 80B7C5F8  38 60 00 00 */	li r3, 0
/* 80B7C5FC  4E 80 00 20 */	blr 
lbl_80B7C600:
/* 80B7C600  28 04 00 0F */	cmplwi r4, 0xf
/* 80B7C604  40 82 00 08 */	bne lbl_80B7C60C
/* 80B7C608  38 80 00 00 */	li r4, 0
lbl_80B7C60C:
/* 80B7C60C  7C 83 23 78 */	mr r3, r4
/* 80B7C610  4E 80 00 20 */	blr 
