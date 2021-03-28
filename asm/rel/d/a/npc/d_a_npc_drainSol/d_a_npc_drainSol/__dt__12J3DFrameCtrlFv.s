lbl_809AF844:
/* 809AF844  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AF848  7C 08 02 A6 */	mflr r0
/* 809AF84C  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AF850  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AF854  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AF858  41 82 00 1C */	beq lbl_809AF874
/* 809AF85C  3C A0 80 9B */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809AF860  38 05 FB B0 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809AF864  90 1F 00 00 */	stw r0, 0(r31)
/* 809AF868  7C 80 07 35 */	extsh. r0, r4
/* 809AF86C  40 81 00 08 */	ble lbl_809AF874
/* 809AF870  4B 91 F4 CC */	b __dl__FPv
lbl_809AF874:
/* 809AF874  7F E3 FB 78 */	mr r3, r31
/* 809AF878  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AF87C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AF880  7C 08 03 A6 */	mtlr r0
/* 809AF884  38 21 00 10 */	addi r1, r1, 0x10
/* 809AF888  4E 80 00 20 */	blr 
