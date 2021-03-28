lbl_809AD81C:
/* 809AD81C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809AD820  7C 08 02 A6 */	mflr r0
/* 809AD824  90 01 00 14 */	stw r0, 0x14(r1)
/* 809AD828  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809AD82C  7C 7F 1B 79 */	or. r31, r3, r3
/* 809AD830  41 82 00 1C */	beq lbl_809AD84C
/* 809AD834  3C A0 80 9B */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809AD838  38 05 DC BC */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809AD83C  90 1F 00 00 */	stw r0, 0(r31)
/* 809AD840  7C 80 07 35 */	extsh. r0, r4
/* 809AD844  40 81 00 08 */	ble lbl_809AD84C
/* 809AD848  4B 92 14 F4 */	b __dl__FPv
lbl_809AD84C:
/* 809AD84C  7F E3 FB 78 */	mr r3, r31
/* 809AD850  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809AD854  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809AD858  7C 08 03 A6 */	mtlr r0
/* 809AD85C  38 21 00 10 */	addi r1, r1, 0x10
/* 809AD860  4E 80 00 20 */	blr 
