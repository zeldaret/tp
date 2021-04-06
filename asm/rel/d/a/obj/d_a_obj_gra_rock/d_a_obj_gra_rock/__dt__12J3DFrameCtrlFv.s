lbl_80C11FA8:
/* 80C11FA8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C11FAC  7C 08 02 A6 */	mflr r0
/* 80C11FB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C11FB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C11FB8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C11FBC  41 82 00 1C */	beq lbl_80C11FD8
/* 80C11FC0  3C A0 80 C1 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80C1253C@ha */
/* 80C11FC4  38 05 25 3C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80C1253C@l */
/* 80C11FC8  90 1F 00 00 */	stw r0, 0(r31)
/* 80C11FCC  7C 80 07 35 */	extsh. r0, r4
/* 80C11FD0  40 81 00 08 */	ble lbl_80C11FD8
/* 80C11FD4  4B 6B CD 69 */	bl __dl__FPv
lbl_80C11FD8:
/* 80C11FD8  7F E3 FB 78 */	mr r3, r31
/* 80C11FDC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C11FE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C11FE4  7C 08 03 A6 */	mtlr r0
/* 80C11FE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80C11FEC  4E 80 00 20 */	blr 
