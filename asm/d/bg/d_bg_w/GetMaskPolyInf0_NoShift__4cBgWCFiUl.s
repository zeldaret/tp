lbl_8007B360:
/* 8007B360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8007B364  7C 08 02 A6 */	mflr r0
/* 8007B368  90 01 00 14 */	stw r0, 0x14(r1)
/* 8007B36C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8007B370  93 C1 00 08 */	stw r30, 8(r1)
/* 8007B374  7C 7E 1B 78 */	mr r30, r3
/* 8007B378  7C BF 2B 78 */	mr r31, r5
/* 8007B37C  4B FF FF 79 */	bl GetPolyInfId__4cBgWCFi
/* 8007B380  80 9E 00 A0 */	lwz r4, 0xa0(r30)
/* 8007B384  80 84 00 2C */	lwz r4, 0x2c(r4)
/* 8007B388  54 60 20 36 */	slwi r0, r3, 4
/* 8007B38C  7C 04 00 2E */	lwzx r0, r4, r0
/* 8007B390  7F E3 00 38 */	and r3, r31, r0
/* 8007B394  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8007B398  83 C1 00 08 */	lwz r30, 8(r1)
/* 8007B39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8007B3A0  7C 08 03 A6 */	mtlr r0
/* 8007B3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8007B3A8  4E 80 00 20 */	blr 
