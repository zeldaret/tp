lbl_805A73DC:
/* 805A73DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A73E0  7C 08 02 A6 */	mflr r0
/* 805A73E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A73E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A73EC  7C 7F 1B 79 */	or. r31, r3, r3
/* 805A73F0  41 82 00 1C */	beq lbl_805A740C
/* 805A73F4  3C A0 80 5B */	lis r5, __vt__12J3DFrameCtrl@ha
/* 805A73F8  38 05 83 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 805A73FC  90 1F 00 00 */	stw r0, 0(r31)
/* 805A7400  7C 80 07 35 */	extsh. r0, r4
/* 805A7404  40 81 00 08 */	ble lbl_805A740C
/* 805A7408  4B D2 79 34 */	b __dl__FPv
lbl_805A740C:
/* 805A740C  7F E3 FB 78 */	mr r3, r31
/* 805A7410  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7414  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7418  7C 08 03 A6 */	mtlr r0
/* 805A741C  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7420  4E 80 00 20 */	blr 
