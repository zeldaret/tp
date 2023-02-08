lbl_80A79EE4:
/* 80A79EE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A79EE8  7C 08 02 A6 */	mflr r0
/* 80A79EEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A79EF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A79EF4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80A79EF8  41 82 00 1C */	beq lbl_80A79F14
/* 80A79EFC  3C A0 80 A8 */	lis r5, __vt__13daNpcT_Path_c@ha /* 0x80A7BEC4@ha */
/* 80A79F00  38 05 BE C4 */	addi r0, r5, __vt__13daNpcT_Path_c@l /* 0x80A7BEC4@l */
/* 80A79F04  90 1F 00 24 */	stw r0, 0x24(r31)
/* 80A79F08  7C 80 07 35 */	extsh. r0, r4
/* 80A79F0C  40 81 00 08 */	ble lbl_80A79F14
/* 80A79F10  4B 85 4E 2D */	bl __dl__FPv
lbl_80A79F14:
/* 80A79F14  7F E3 FB 78 */	mr r3, r31
/* 80A79F18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A79F1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A79F20  7C 08 03 A6 */	mtlr r0
/* 80A79F24  38 21 00 10 */	addi r1, r1, 0x10
/* 80A79F28  4E 80 00 20 */	blr 
