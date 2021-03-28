lbl_809B9160:
/* 809B9160  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B9164  7C 08 02 A6 */	mflr r0
/* 809B9168  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B916C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B9170  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B9174  41 82 00 1C */	beq lbl_809B9190
/* 809B9178  3C A0 80 9C */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809B917C  38 05 A3 34 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809B9180  90 1F 00 00 */	stw r0, 0(r31)
/* 809B9184  7C 80 07 35 */	extsh. r0, r4
/* 809B9188  40 81 00 08 */	ble lbl_809B9190
/* 809B918C  4B 91 5B B0 */	b __dl__FPv
lbl_809B9190:
/* 809B9190  7F E3 FB 78 */	mr r3, r31
/* 809B9194  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B9198  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B919C  7C 08 03 A6 */	mtlr r0
/* 809B91A0  38 21 00 10 */	addi r1, r1, 0x10
/* 809B91A4  4E 80 00 20 */	blr 
