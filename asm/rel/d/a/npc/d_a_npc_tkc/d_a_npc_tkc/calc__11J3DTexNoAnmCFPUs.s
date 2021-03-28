lbl_80B0FA2C:
/* 80B0FA2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B0FA30  7C 08 02 A6 */	mflr r0
/* 80B0FA34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B0FA38  7C 66 1B 78 */	mr r6, r3
/* 80B0FA3C  7C 85 23 78 */	mr r5, r4
/* 80B0FA40  80 63 00 08 */	lwz r3, 8(r3)
/* 80B0FA44  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B0FA48  4B 81 B5 08 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B0FA4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B0FA50  7C 08 03 A6 */	mtlr r0
/* 80B0FA54  38 21 00 10 */	addi r1, r1, 0x10
/* 80B0FA58  4E 80 00 20 */	blr 
