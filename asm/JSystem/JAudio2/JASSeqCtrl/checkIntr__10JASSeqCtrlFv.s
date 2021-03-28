lbl_80293B78:
/* 80293B78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80293B7C  7C 08 02 A6 */	mflr r0
/* 80293B80  90 01 00 14 */	stw r0, 0x14(r1)
/* 80293B84  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80293B88  7C 7F 1B 78 */	mr r31, r3
/* 80293B8C  80 03 00 44 */	lwz r0, 0x44(r3)
/* 80293B90  28 00 00 00 */	cmplwi r0, 0
/* 80293B94  40 82 00 40 */	bne lbl_80293BD4
/* 80293B98  4B FF FF 91 */	bl findIntr__10JASSeqCtrlFv
/* 80293B9C  2C 03 00 00 */	cmpwi r3, 0
/* 80293BA0  41 80 00 34 */	blt lbl_80293BD4
/* 80293BA4  80 9F 00 48 */	lwz r4, 0x48(r31)
/* 80293BA8  1C 03 00 03 */	mulli r0, r3, 3
/* 80293BAC  7C 84 02 14 */	add r4, r4, r0
/* 80293BB0  80 7F 00 00 */	lwz r3, 0(r31)
/* 80293BB4  38 04 FF FF */	addi r0, r4, -1
/* 80293BB8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80293BBC  54 03 02 3E */	clrlwi r3, r0, 8
/* 80293BC0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80293BC4  90 1F 00 44 */	stw r0, 0x44(r31)
/* 80293BC8  80 1F 00 00 */	lwz r0, 0(r31)
/* 80293BCC  7C 00 1A 14 */	add r0, r0, r3
/* 80293BD0  90 1F 00 04 */	stw r0, 4(r31)
lbl_80293BD4:
/* 80293BD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80293BD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80293BDC  7C 08 03 A6 */	mtlr r0
/* 80293BE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80293BE4  4E 80 00 20 */	blr 
