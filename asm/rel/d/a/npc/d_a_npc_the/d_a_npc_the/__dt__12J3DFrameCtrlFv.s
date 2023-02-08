lbl_80AFBCA4:
/* 80AFBCA4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AFBCA8  7C 08 02 A6 */	mflr r0
/* 80AFBCAC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AFBCB0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AFBCB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80AFBCB8  41 82 00 1C */	beq lbl_80AFBCD4
/* 80AFBCBC  3C A0 80 B0 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x80AFC5D8@ha */
/* 80AFBCC0  38 05 C5 D8 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x80AFC5D8@l */
/* 80AFBCC4  90 1F 00 00 */	stw r0, 0(r31)
/* 80AFBCC8  7C 80 07 35 */	extsh. r0, r4
/* 80AFBCCC  40 81 00 08 */	ble lbl_80AFBCD4
/* 80AFBCD0  4B 7D 30 6D */	bl __dl__FPv
lbl_80AFBCD4:
/* 80AFBCD4  7F E3 FB 78 */	mr r3, r31
/* 80AFBCD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AFBCDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AFBCE0  7C 08 03 A6 */	mtlr r0
/* 80AFBCE4  38 21 00 10 */	addi r1, r1, 0x10
/* 80AFBCE8  4E 80 00 20 */	blr 
