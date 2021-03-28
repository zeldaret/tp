lbl_80A810CC:
/* 80A810CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A810D0  7C 08 02 A6 */	mflr r0
/* 80A810D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A810D8  7C 66 1B 78 */	mr r6, r3
/* 80A810DC  7C 85 23 78 */	mr r5, r4
/* 80A810E0  80 63 00 08 */	lwz r3, 8(r3)
/* 80A810E4  A0 86 00 04 */	lhz r4, 4(r6)
/* 80A810E8  4B 8A 9E 68 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80A810EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A810F0  7C 08 03 A6 */	mtlr r0
/* 80A810F4  38 21 00 10 */	addi r1, r1, 0x10
/* 80A810F8  4E 80 00 20 */	blr 
