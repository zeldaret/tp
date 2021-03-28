lbl_8008E894:
/* 8008E894  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8008E898  7C 08 02 A6 */	mflr r0
/* 8008E89C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8008E8A0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8008E8A4  7C 7F 1B 78 */	mr r31, r3
/* 8008E8A8  38 61 00 08 */	addi r3, r1, 8
/* 8008E8AC  A8 84 00 00 */	lha r4, 0(r4)
/* 8008E8B0  48 1E 26 E9 */	bl __ct__7cSAngleFs
/* 8008E8B4  A8 01 00 08 */	lha r0, 8(r1)
/* 8008E8B8  B0 1F 00 06 */	sth r0, 6(r31)
/* 8008E8BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8008E8C0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8008E8C4  7C 08 03 A6 */	mtlr r0
/* 8008E8C8  38 21 00 20 */	addi r1, r1, 0x20
/* 8008E8CC  4E 80 00 20 */	blr 
