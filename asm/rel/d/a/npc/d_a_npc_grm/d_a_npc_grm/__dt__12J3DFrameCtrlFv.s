lbl_809D6870:
/* 809D6870  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809D6874  7C 08 02 A6 */	mflr r0
/* 809D6878  90 01 00 14 */	stw r0, 0x14(r1)
/* 809D687C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809D6880  7C 7F 1B 79 */	or. r31, r3, r3
/* 809D6884  41 82 00 1C */	beq lbl_809D68A0
/* 809D6888  3C A0 80 9D */	lis r5, __vt__12J3DFrameCtrl@ha
/* 809D688C  38 05 71 80 */	addi r0, r5, __vt__12J3DFrameCtrl@l
/* 809D6890  90 1F 00 00 */	stw r0, 0(r31)
/* 809D6894  7C 80 07 35 */	extsh. r0, r4
/* 809D6898  40 81 00 08 */	ble lbl_809D68A0
/* 809D689C  4B 8F 84 A0 */	b __dl__FPv
lbl_809D68A0:
/* 809D68A0  7F E3 FB 78 */	mr r3, r31
/* 809D68A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809D68A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809D68AC  7C 08 03 A6 */	mtlr r0
/* 809D68B0  38 21 00 10 */	addi r1, r1, 0x10
/* 809D68B4  4E 80 00 20 */	blr 
