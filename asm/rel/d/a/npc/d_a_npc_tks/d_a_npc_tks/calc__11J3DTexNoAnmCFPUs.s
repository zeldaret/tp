lbl_80B1C450:
/* 80B1C450  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B1C454  7C 08 02 A6 */	mflr r0
/* 80B1C458  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B1C45C  7C 66 1B 78 */	mr r6, r3
/* 80B1C460  7C 85 23 78 */	mr r5, r4
/* 80B1C464  80 63 00 08 */	lwz r3, 8(r3)
/* 80B1C468  A0 86 00 04 */	lhz r4, 4(r6)
/* 80B1C46C  4B 80 EA E4 */	b getTexNo__16J3DAnmTexPatternCFUsPUs
/* 80B1C470  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B1C474  7C 08 03 A6 */	mtlr r0
/* 80B1C478  38 21 00 10 */	addi r1, r1, 0x10
/* 80B1C47C  4E 80 00 20 */	blr 
