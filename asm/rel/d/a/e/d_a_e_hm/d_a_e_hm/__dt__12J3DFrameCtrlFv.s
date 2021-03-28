lbl_806E0658:
/* 806E0658  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806E065C  7C 08 02 A6 */	mflr r0
/* 806E0660  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E0664  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806E0668  7C 7F 1B 79 */	or. r31, r3, r3
/* 806E066C  41 82 00 1C */	beq lbl_806E0688
/* 806E0670  3C A0 80 6E */	lis r5, __vt__12J3DFrameCtrl@ha
/* 806E0674  38 05 5B B8 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 806E0678  90 1F 00 00 */	stw r0, 0(r31)
/* 806E067C  7C 80 07 35 */	extsh. r0, r4
/* 806E0680  40 81 00 08 */	ble lbl_806E0688
/* 806E0684  4B BE E6 B8 */	b __dl__FPv
lbl_806E0688:
/* 806E0688  7F E3 FB 78 */	mr r3, r31
/* 806E068C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 806E0690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 806E0694  7C 08 03 A6 */	mtlr r0
/* 806E0698  38 21 00 10 */	addi r1, r1, 0x10
/* 806E069C  4E 80 00 20 */	blr 
