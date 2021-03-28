lbl_809BDC98:
/* 809BDC98  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809BDC9C  7C 08 02 A6 */	mflr r0
/* 809BDCA0  90 01 00 14 */	stw r0, 0x14(r1)
/* 809BDCA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809BDCA8  7C 7F 1B 79 */	or. r31, r3, r3
/* 809BDCAC  41 82 00 1C */	beq lbl_809BDCC8
/* 809BDCB0  3C A0 80 9C */	lis r5, __vt__22daNpcT_MotionSeqMngr_c@ha
/* 809BDCB4  38 05 E7 34 */	addi r0, r5, __vt__22daNpcT_MotionSeqMngr_c@l
/* 809BDCB8  90 1F 00 20 */	stw r0, 0x20(r31)
/* 809BDCBC  7C 80 07 35 */	extsh. r0, r4
/* 809BDCC0  40 81 00 08 */	ble lbl_809BDCC8
/* 809BDCC4  4B 91 10 78 */	b __dl__FPv
lbl_809BDCC8:
/* 809BDCC8  7F E3 FB 78 */	mr r3, r31
/* 809BDCCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809BDCD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809BDCD4  7C 08 03 A6 */	mtlr r0
/* 809BDCD8  38 21 00 10 */	addi r1, r1, 0x10
/* 809BDCDC  4E 80 00 20 */	blr 
