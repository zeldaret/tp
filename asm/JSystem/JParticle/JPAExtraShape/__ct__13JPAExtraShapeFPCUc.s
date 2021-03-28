lbl_8027AD88:
/* 8027AD88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8027AD8C  7C 08 02 A6 */	mflr r0
/* 8027AD90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8027AD94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8027AD98  7C 7F 1B 78 */	mr r31, r3
/* 8027AD9C  90 83 00 00 */	stw r4, 0(r3)
/* 8027ADA0  48 00 00 1D */	bl init__13JPAExtraShapeFv
/* 8027ADA4  7F E3 FB 78 */	mr r3, r31
/* 8027ADA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8027ADAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8027ADB0  7C 08 03 A6 */	mtlr r0
/* 8027ADB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8027ADB8  4E 80 00 20 */	blr 
