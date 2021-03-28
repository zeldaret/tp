lbl_8024B2C0:
/* 8024B2C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024B2C4  7C 08 02 A6 */	mflr r0
/* 8024B2C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8024B2CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8024B2D0  7C 7F 1B 78 */	mr r31, r3
/* 8024B2D4  80 63 00 20 */	lwz r3, 0x20(r3)
/* 8024B2D8  4B DD 47 4D */	bl fopMsgM_SearchByID__FUi
/* 8024B2DC  88 63 00 FA */	lbz r3, 0xfa(r3)
/* 8024B2E0  B0 7F 00 3A */	sth r3, 0x3a(r31)
/* 8024B2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8024B2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024B2EC  7C 08 03 A6 */	mtlr r0
/* 8024B2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8024B2F4  4E 80 00 20 */	blr 
