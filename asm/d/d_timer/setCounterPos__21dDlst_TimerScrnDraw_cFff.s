lbl_8025FA6C:
/* 8025FA6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8025FA70  7C 08 02 A6 */	mflr r0
/* 8025FA74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8025FA78  80 63 00 14 */	lwz r3, 0x14(r3)
/* 8025FA7C  28 03 00 00 */	cmplwi r3, 0
/* 8025FA80  41 82 00 08 */	beq lbl_8025FA88
/* 8025FA84  4B FF 4B 2D */	bl paneTrans__8CPaneMgrFff
lbl_8025FA88:
/* 8025FA88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8025FA8C  7C 08 03 A6 */	mtlr r0
/* 8025FA90  38 21 00 10 */	addi r1, r1, 0x10
/* 8025FA94  4E 80 00 20 */	blr 
