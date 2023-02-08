lbl_80C7D2B0:
/* 80C7D2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7D2B4  7C 08 02 A6 */	mflr r0
/* 80C7D2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7D2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C7D2C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C7D2C4  41 82 00 1C */	beq lbl_80C7D2E0
/* 80C7D2C8  3C A0 80 C8 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C7E104@ha */
/* 80C7D2CC  38 05 E1 04 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C7E104@l */
/* 80C7D2D0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C7D2D4  7C 80 07 35 */	extsh. r0, r4
/* 80C7D2D8  40 81 00 08 */	ble lbl_80C7D2E0
/* 80C7D2DC  4B 65 1A 61 */	bl __dl__FPv
lbl_80C7D2E0:
/* 80C7D2E0  7F E3 FB 78 */	mr r3, r31
/* 80C7D2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C7D2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7D2EC  7C 08 03 A6 */	mtlr r0
/* 80C7D2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7D2F4  4E 80 00 20 */	blr 
