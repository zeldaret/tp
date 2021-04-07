lbl_802EA2CC:
/* 802EA2CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802EA2D0  7C 08 02 A6 */	mflr r0
/* 802EA2D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802EA2D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802EA2DC  93 C1 00 08 */	stw r30, 8(r1)
/* 802EA2E0  7C 7E 1B 79 */	or. r30, r3, r3
/* 802EA2E4  7C 9F 23 78 */	mr r31, r4
/* 802EA2E8  41 82 00 88 */	beq lbl_802EA370
/* 802EA2EC  3C 60 80 3D */	lis r3, __vt__11J2DMaterial@ha /* 0x803CCA78@ha */
/* 802EA2F0  38 03 CA 78 */	addi r0, r3, __vt__11J2DMaterial@l /* 0x803CCA78@l */
/* 802EA2F4  90 1E 00 00 */	stw r0, 0(r30)
/* 802EA2F8  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 802EA2FC  28 03 00 00 */	cmplwi r3, 0
/* 802EA300  41 82 00 18 */	beq lbl_802EA318
/* 802EA304  38 80 00 01 */	li r4, 1
/* 802EA308  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA30C  81 8C 00 B8 */	lwz r12, 0xb8(r12)
/* 802EA310  7D 89 03 A6 */	mtctr r12
/* 802EA314  4E 80 04 21 */	bctrl 
lbl_802EA318:
/* 802EA318  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 802EA31C  28 03 00 00 */	cmplwi r3, 0
/* 802EA320  41 82 00 18 */	beq lbl_802EA338
/* 802EA324  38 80 00 01 */	li r4, 1
/* 802EA328  81 83 00 00 */	lwz r12, 0(r3)
/* 802EA32C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 802EA330  7D 89 03 A6 */	mtctr r12
/* 802EA334  4E 80 04 21 */	bctrl 
lbl_802EA338:
/* 802EA338  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802EA33C  4B FE 4A 01 */	bl __dl__FPv
/* 802EA340  38 7E 00 28 */	addi r3, r30, 0x28
/* 802EA344  38 80 FF FF */	li r4, -1
/* 802EA348  48 00 12 D9 */	bl __dt__14J2DTexGenBlockFv
/* 802EA34C  34 1E 00 10 */	addic. r0, r30, 0x10
/* 802EA350  41 82 00 10 */	beq lbl_802EA360
/* 802EA354  3C 60 80 3D */	lis r3, __vt__13J2DColorBlock@ha /* 0x803CCA84@ha */
/* 802EA358  38 03 CA 84 */	addi r0, r3, __vt__13J2DColorBlock@l /* 0x803CCA84@l */
/* 802EA35C  90 1E 00 24 */	stw r0, 0x24(r30)
lbl_802EA360:
/* 802EA360  7F E0 07 35 */	extsh. r0, r31
/* 802EA364  40 81 00 0C */	ble lbl_802EA370
/* 802EA368  7F C3 F3 78 */	mr r3, r30
/* 802EA36C  4B FE 49 D1 */	bl __dl__FPv
lbl_802EA370:
/* 802EA370  7F C3 F3 78 */	mr r3, r30
/* 802EA374  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802EA378  83 C1 00 08 */	lwz r30, 8(r1)
/* 802EA37C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802EA380  7C 08 03 A6 */	mtlr r0
/* 802EA384  38 21 00 10 */	addi r1, r1, 0x10
/* 802EA388  4E 80 00 20 */	blr 
