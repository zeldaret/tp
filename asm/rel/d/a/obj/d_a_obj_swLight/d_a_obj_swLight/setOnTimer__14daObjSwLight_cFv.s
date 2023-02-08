lbl_80CF7A6C:
/* 80CF7A6C  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80CF7A70  54 00 86 3F */	rlwinm. r0, r0, 0x10, 0x18, 0x1f
/* 80CF7A74  41 82 00 0C */	beq lbl_80CF7A80
/* 80CF7A78  28 00 00 FF */	cmplwi r0, 0xff
/* 80CF7A7C  40 82 00 10 */	bne lbl_80CF7A8C
lbl_80CF7A80:
/* 80CF7A80  38 00 00 4B */	li r0, 0x4b
/* 80CF7A84  B0 03 0A E4 */	sth r0, 0xae4(r3)
/* 80CF7A88  4E 80 00 20 */	blr 
lbl_80CF7A8C:
/* 80CF7A8C  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80CF7A90  B0 03 0A E4 */	sth r0, 0xae4(r3)
/* 80CF7A94  4E 80 00 20 */	blr 
