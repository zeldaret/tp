lbl_806735B0:
/* 806735B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806735B4  7C 08 02 A6 */	mflr r0
/* 806735B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 806735BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806735C0  7C 7F 1B 79 */	or. r31, r3, r3
/* 806735C4  41 82 00 1C */	beq lbl_806735E0
/* 806735C8  3C A0 80 67 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 806735CC  38 05 7D 28 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 806735D0  90 1F 00 00 */	stw r0, 0(r31)
/* 806735D4  7C 80 07 35 */	extsh. r0, r4
/* 806735D8  40 81 00 08 */	ble lbl_806735E0
/* 806735DC  4B C5 B7 60 */	b __dl__FPv
lbl_806735E0:
/* 806735E0  7F E3 FB 78 */	mr r3, r31
/* 806735E4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806735E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806735EC  7C 08 03 A6 */	mtlr r0
/* 806735F0  38 21 00 10 */	addi r1, r1, 0x10
/* 806735F4  4E 80 00 20 */	blr 
