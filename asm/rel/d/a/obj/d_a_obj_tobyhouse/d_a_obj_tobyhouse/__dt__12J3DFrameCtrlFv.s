lbl_80D163A8:
/* 80D163A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D163AC  7C 08 02 A6 */	mflr r0
/* 80D163B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D163B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80D163B8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80D163BC  41 82 00 1C */	beq lbl_80D163D8
/* 80D163C0  3C A0 80 D1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80D17980@ha */
/* 80D163C4  38 05 79 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80D17980@l */
/* 80D163C8  90 1F 00 00 */	stw r0, 0(r31)
/* 80D163CC  7C 80 07 35 */	extsh. r0, r4
/* 80D163D0  40 81 00 08 */	ble lbl_80D163D8
/* 80D163D4  4B 5B 89 69 */	bl __dl__FPv
lbl_80D163D8:
/* 80D163D8  7F E3 FB 78 */	mr r3, r31
/* 80D163DC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80D163E0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D163E4  7C 08 03 A6 */	mtlr r0
/* 80D163E8  38 21 00 10 */	addi r1, r1, 0x10
/* 80D163EC  4E 80 00 20 */	blr 
