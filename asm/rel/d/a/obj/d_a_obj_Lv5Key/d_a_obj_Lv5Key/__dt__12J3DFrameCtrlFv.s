lbl_80B9C898:
/* 80B9C898  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B9C89C  7C 08 02 A6 */	mflr r0
/* 80B9C8A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B9C8A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80B9C8A8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80B9C8AC  41 82 00 1C */	beq lbl_80B9C8C8
/* 80B9C8B0  3C A0 80 BA */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80B9CA8C@ha */
/* 80B9C8B4  38 05 CA 8C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80B9CA8C@l */
/* 80B9C8B8  90 1F 00 00 */	stw r0, 0(r31)
/* 80B9C8BC  7C 80 07 35 */	extsh. r0, r4
/* 80B9C8C0  40 81 00 08 */	ble lbl_80B9C8C8
/* 80B9C8C4  4B 73 24 79 */	bl __dl__FPv
lbl_80B9C8C8:
/* 80B9C8C8  7F E3 FB 78 */	mr r3, r31
/* 80B9C8CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80B9C8D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B9C8D4  7C 08 03 A6 */	mtlr r0
/* 80B9C8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B9C8DC  4E 80 00 20 */	blr 
