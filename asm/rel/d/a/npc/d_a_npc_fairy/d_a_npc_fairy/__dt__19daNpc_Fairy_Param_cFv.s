lbl_809B9278:
/* 809B9278  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809B927C  7C 08 02 A6 */	mflr r0
/* 809B9280  90 01 00 14 */	stw r0, 0x14(r1)
/* 809B9284  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809B9288  7C 7F 1B 79 */	or. r31, r3, r3
/* 809B928C  41 82 00 1C */	beq lbl_809B92A8
/* 809B9290  3C A0 80 9C */	lis r5, __vt__19daNpc_Fairy_Param_c@ha
/* 809B9294  38 05 A4 04 */	addi r0, r5, __vt__19daNpc_Fairy_Param_c@l
/* 809B9298  90 1F 00 00 */	stw r0, 0(r31)
/* 809B929C  7C 80 07 35 */	extsh. r0, r4
/* 809B92A0  40 81 00 08 */	ble lbl_809B92A8
/* 809B92A4  4B 91 5A 98 */	b __dl__FPv
lbl_809B92A8:
/* 809B92A8  7F E3 FB 78 */	mr r3, r31
/* 809B92AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809B92B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809B92B4  7C 08 03 A6 */	mtlr r0
/* 809B92B8  38 21 00 10 */	addi r1, r1, 0x10
/* 809B92BC  4E 80 00 20 */	blr 
