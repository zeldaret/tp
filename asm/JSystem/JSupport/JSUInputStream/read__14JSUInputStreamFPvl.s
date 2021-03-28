lbl_802DC298:
/* 802DC298  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DC29C  7C 08 02 A6 */	mflr r0
/* 802DC2A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DC2A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DC2A8  93 C1 00 08 */	stw r30, 8(r1)
/* 802DC2AC  7C 7E 1B 78 */	mr r30, r3
/* 802DC2B0  7C BF 2B 78 */	mr r31, r5
/* 802DC2B4  81 83 00 00 */	lwz r12, 0(r3)
/* 802DC2B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 802DC2BC  7D 89 03 A6 */	mtctr r12
/* 802DC2C0  4E 80 04 21 */	bctrl 
/* 802DC2C4  7C 03 F8 00 */	cmpw r3, r31
/* 802DC2C8  41 82 00 10 */	beq lbl_802DC2D8
/* 802DC2CC  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DC2D0  60 00 00 01 */	ori r0, r0, 1
/* 802DC2D4  98 1E 00 04 */	stb r0, 4(r30)
lbl_802DC2D8:
/* 802DC2D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DC2DC  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DC2E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DC2E4  7C 08 03 A6 */	mtlr r0
/* 802DC2E8  38 21 00 10 */	addi r1, r1, 0x10
/* 802DC2EC  4E 80 00 20 */	blr 
