lbl_8046E2B0:
/* 8046E2B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8046E2B4  7C 08 02 A6 */	mflr r0
/* 8046E2B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8046E2BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8046E2C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 8046E2C4  41 82 00 1C */	beq lbl_8046E2E0
/* 8046E2C8  3C A0 80 47 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8046E604@ha */
/* 8046E2CC  38 05 E6 04 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8046E604@l */
/* 8046E2D0  90 1F 00 00 */	stw r0, 0(r31)
/* 8046E2D4  7C 80 07 35 */	extsh. r0, r4
/* 8046E2D8  40 81 00 08 */	ble lbl_8046E2E0
/* 8046E2DC  4B E6 0A 61 */	bl __dl__FPv
lbl_8046E2E0:
/* 8046E2E0  7F E3 FB 78 */	mr r3, r31
/* 8046E2E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8046E2E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8046E2EC  7C 08 03 A6 */	mtlr r0
/* 8046E2F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8046E2F4  4E 80 00 20 */	blr 
