lbl_8008FA58:
/* 8008FA58  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008FA5C  7C 08 02 A6 */	mflr r0
/* 8008FA60  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008FA64  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008FA68  7C 7F 1B 78 */	mr r31, r3
/* 8008FA6C  38 61 00 08 */	addi r3, r1, 8
/* 8008FA70  A8 84 00 00 */	lha r4, 0(r4)
/* 8008FA74  48 1E 15 25 */	bl __ct__7cSAngleFs
/* 8008FA78  A8 01 00 08 */	lha r0, 8(r1)
/* 8008FA7C  B0 1F 00 04 */	sth r0, 4(r31)
/* 8008FA80  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008FA84  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008FA88  7C 08 03 A6 */	mtlr r0
/* 8008FA8C  38 21 00 20 */	addi r1, r1, 0x20
/* 8008FA90  4E 80 00 20 */	blr 
