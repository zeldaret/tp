lbl_80BE3BA8:
/* 80BE3BA8  80 03 00 B0 */	lwz r0, 0xb0(r3)
/* 80BE3BAC  54 00 C6 3F */	rlwinm. r0, r0, 0x18, 0x18, 0x1f
/* 80BE3BB0  40 82 00 0C */	bne lbl_80BE3BBC
/* 80BE3BB4  38 60 00 01 */	li r3, 1
/* 80BE3BB8  4E 80 00 20 */	blr 
lbl_80BE3BBC:
/* 80BE3BBC  28 00 00 FF */	cmplwi r0, 0xff
/* 80BE3BC0  38 60 00 96 */	li r3, 0x96
/* 80BE3BC4  4D 82 00 20 */	beqlr 
/* 80BE3BC8  1C 00 00 0F */	mulli r0, r0, 0xf
/* 80BE3BCC  7C 03 07 34 */	extsh r3, r0
/* 80BE3BD0  4E 80 00 20 */	blr 
