lbl_807D1EF8:
/* 807D1EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D1EFC  7C 08 02 A6 */	mflr r0
/* 807D1F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D1F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807D1F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 807D1F0C  41 82 00 1C */	beq lbl_807D1F28
/* 807D1F10  3C A0 80 7D */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x807D2368@ha */
/* 807D1F14  38 05 23 68 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x807D2368@l */
/* 807D1F18  90 1F 00 00 */	stw r0, 0(r31)
/* 807D1F1C  7C 80 07 35 */	extsh. r0, r4
/* 807D1F20  40 81 00 08 */	ble lbl_807D1F28
/* 807D1F24  4B AF CE 19 */	bl __dl__FPv
lbl_807D1F28:
/* 807D1F28  7F E3 FB 78 */	mr r3, r31
/* 807D1F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807D1F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D1F34  7C 08 03 A6 */	mtlr r0
/* 807D1F38  38 21 00 10 */	addi r1, r1, 0x10
/* 807D1F3C  4E 80 00 20 */	blr 
