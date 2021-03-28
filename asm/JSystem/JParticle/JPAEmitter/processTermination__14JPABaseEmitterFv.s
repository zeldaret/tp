lbl_8027EE14:
/* 8027EE14  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027EE18  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 8027EE1C  41 82 00 0C */	beq lbl_8027EE28
/* 8027EE20  38 60 00 01 */	li r3, 1
/* 8027EE24  4E 80 00 20 */	blr 
lbl_8027EE28:
/* 8027EE28  80 83 00 24 */	lwz r4, 0x24(r3)
/* 8027EE2C  2C 04 00 00 */	cmpwi r4, 0
/* 8027EE30  40 82 00 0C */	bne lbl_8027EE3C
/* 8027EE34  38 60 00 00 */	li r3, 0
/* 8027EE38  4E 80 00 20 */	blr 
lbl_8027EE3C:
/* 8027EE3C  40 80 00 28 */	bge lbl_8027EE64
/* 8027EE40  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027EE44  60 00 00 08 */	ori r0, r0, 8
/* 8027EE48  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8027EE4C  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8027EE50  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8027EE54  7C 04 02 14 */	add r0, r4, r0
/* 8027EE58  7C 00 00 34 */	cntlzw r0, r0
/* 8027EE5C  54 03 D9 7E */	srwi r3, r0, 5
/* 8027EE60  4E 80 00 20 */	blr 
lbl_8027EE64:
/* 8027EE64  80 03 01 00 */	lwz r0, 0x100(r3)
/* 8027EE68  7C 00 20 40 */	cmplw r0, r4
/* 8027EE6C  41 80 00 3C */	blt lbl_8027EEA8
/* 8027EE70  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027EE74  60 00 00 08 */	ori r0, r0, 8
/* 8027EE78  90 03 00 F4 */	stw r0, 0xf4(r3)
/* 8027EE7C  80 03 00 F4 */	lwz r0, 0xf4(r3)
/* 8027EE80  54 00 06 73 */	rlwinm. r0, r0, 0, 0x19, 0x19
/* 8027EE84  41 82 00 0C */	beq lbl_8027EE90
/* 8027EE88  38 60 00 00 */	li r3, 0
/* 8027EE8C  4E 80 00 20 */	blr 
lbl_8027EE90:
/* 8027EE90  80 83 00 D0 */	lwz r4, 0xd0(r3)
/* 8027EE94  80 03 00 DC */	lwz r0, 0xdc(r3)
/* 8027EE98  7C 04 02 14 */	add r0, r4, r0
/* 8027EE9C  7C 00 00 34 */	cntlzw r0, r0
/* 8027EEA0  54 03 D9 7E */	srwi r3, r0, 5
/* 8027EEA4  4E 80 00 20 */	blr 
lbl_8027EEA8:
/* 8027EEA8  38 60 00 00 */	li r3, 0
/* 8027EEAC  4E 80 00 20 */	blr 
