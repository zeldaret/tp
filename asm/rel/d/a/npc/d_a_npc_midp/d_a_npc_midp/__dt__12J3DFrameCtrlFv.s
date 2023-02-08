lbl_80A73328:
/* 80A73328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A7332C  7C 08 02 A6 */	mflr r0
/* 80A73330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A73334  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A73338  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A7333C  41 82 00 1C */	beq lbl_80A73358
/* 80A73340  3C A0 80 A7 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80A73BE8@ha */
/* 80A73344  38 05 3B E8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80A73BE8@l */
/* 80A73348  90 1F 00 00 */	stw r0, 0(r31)
/* 80A7334C  7C 80 07 35 */	extsh. r0, r4
/* 80A73350  40 81 00 08 */	ble lbl_80A73358
/* 80A73354  4B 85 B9 E9 */	bl __dl__FPv
lbl_80A73358:
/* 80A73358  7F E3 FB 78 */	mr r3, r31
/* 80A7335C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A73360  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A73364  7C 08 03 A6 */	mtlr r0
/* 80A73368  38 21 00 10 */	addi r1, r1, 0x10
/* 80A7336C  4E 80 00 20 */	blr 
