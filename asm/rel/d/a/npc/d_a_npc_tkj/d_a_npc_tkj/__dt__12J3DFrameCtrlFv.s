lbl_80575ED8:
/* 80575ED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80575EDC  7C 08 02 A6 */	mflr r0
/* 80575EE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80575EE4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80575EE8  7C 7F 1B 79 */	or. r31, r3, r3
/* 80575EEC  41 82 00 1C */	beq lbl_80575F08
/* 80575EF0  3C A0 80 57 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8057685C@ha */
/* 80575EF4  38 05 68 5C */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8057685C@l */
/* 80575EF8  90 1F 00 00 */	stw r0, 0(r31)
/* 80575EFC  7C 80 07 35 */	extsh. r0, r4
/* 80575F00  40 81 00 08 */	ble lbl_80575F08
/* 80575F04  4B D5 8E 39 */	bl __dl__FPv
lbl_80575F08:
/* 80575F08  7F E3 FB 78 */	mr r3, r31
/* 80575F0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80575F10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575F14  7C 08 03 A6 */	mtlr r0
/* 80575F18  38 21 00 10 */	addi r1, r1, 0x10
/* 80575F1C  4E 80 00 20 */	blr 
