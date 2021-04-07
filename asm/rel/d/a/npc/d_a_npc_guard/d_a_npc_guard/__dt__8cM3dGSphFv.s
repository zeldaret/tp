lbl_809F1EF8:
/* 809F1EF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F1EFC  7C 08 02 A6 */	mflr r0
/* 809F1F00  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F1F04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F1F08  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F1F0C  41 82 00 1C */	beq lbl_809F1F28
/* 809F1F10  3C A0 80 9F */	lis r5, __vt__8cM3dGSph@ha /* 0x809F2F40@ha */
/* 809F1F14  38 05 2F 40 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x809F2F40@l */
/* 809F1F18  90 1F 00 10 */	stw r0, 0x10(r31)
/* 809F1F1C  7C 80 07 35 */	extsh. r0, r4
/* 809F1F20  40 81 00 08 */	ble lbl_809F1F28
/* 809F1F24  4B 8D CE 19 */	bl __dl__FPv
lbl_809F1F28:
/* 809F1F28  7F E3 FB 78 */	mr r3, r31
/* 809F1F2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F1F30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F1F34  7C 08 03 A6 */	mtlr r0
/* 809F1F38  38 21 00 10 */	addi r1, r1, 0x10
/* 809F1F3C  4E 80 00 20 */	blr 
