lbl_809DFA98:
/* 809DFA98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809DFA9C  7C 08 02 A6 */	mflr r0
/* 809DFAA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809DFAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809DFAA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809DFAAC  41 82 00 1C */	beq lbl_809DFAC8
/* 809DFAB0  3C A0 80 9E */	lis r5, __vt__8cM3dGAab@ha /* 0x809E3EC8@ha */
/* 809DFAB4  38 05 3E C8 */	addi r0, r5, __vt__8cM3dGAab@l /* 0x809E3EC8@l */
/* 809DFAB8  90 1F 00 18 */	stw r0, 0x18(r31)
/* 809DFABC  7C 80 07 35 */	extsh. r0, r4
/* 809DFAC0  40 81 00 08 */	ble lbl_809DFAC8
/* 809DFAC4  4B 8E F2 79 */	bl __dl__FPv
lbl_809DFAC8:
/* 809DFAC8  7F E3 FB 78 */	mr r3, r31
/* 809DFACC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809DFAD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809DFAD4  7C 08 03 A6 */	mtlr r0
/* 809DFAD8  38 21 00 10 */	addi r1, r1, 0x10
/* 809DFADC  4E 80 00 20 */	blr 
