lbl_80C90544:
/* 80C90544  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C90548  7C 08 02 A6 */	mflr r0
/* 80C9054C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C90550  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C90554  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C90558  41 82 00 1C */	beq lbl_80C90574
/* 80C9055C  3C A0 80 C9 */	lis r5, __vt__12J3DFrameCtrl@ha
/* 80C90560  38 05 0A 2C */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 80C90564  90 1F 00 00 */	stw r0, 0(r31)
/* 80C90568  7C 80 07 35 */	extsh. r0, r4
/* 80C9056C  40 81 00 08 */	ble lbl_80C90574
/* 80C90570  4B 63 E7 CC */	b __dl__FPv
lbl_80C90574:
/* 80C90574  7F E3 FB 78 */	mr r3, r31
/* 80C90578  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C9057C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C90580  7C 08 03 A6 */	mtlr r0
/* 80C90584  38 21 00 10 */	addi r1, r1, 0x10
/* 80C90588  4E 80 00 20 */	blr 
