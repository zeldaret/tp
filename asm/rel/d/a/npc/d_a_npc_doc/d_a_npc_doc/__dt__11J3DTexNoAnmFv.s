lbl_809A73B4:
/* 809A73B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809A73B8  7C 08 02 A6 */	mflr r0
/* 809A73BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 809A73C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809A73C4  7C 7F 1B 79 */	or. r31, r3, r3
/* 809A73C8  41 82 00 1C */	beq lbl_809A73E4
/* 809A73CC  3C A0 80 9B */	lis r5, __vt__11J3DTexNoAnm@ha
/* 809A73D0  38 05 A9 4C */	addi r0, r5, __vt__11J3DTexNoAnm@l
/* 809A73D4  90 1F 00 00 */	stw r0, 0(r31)
/* 809A73D8  7C 80 07 35 */	extsh. r0, r4
/* 809A73DC  40 81 00 08 */	ble lbl_809A73E4
/* 809A73E0  4B 92 79 5C */	b __dl__FPv
lbl_809A73E4:
/* 809A73E4  7F E3 FB 78 */	mr r3, r31
/* 809A73E8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809A73EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809A73F0  7C 08 03 A6 */	mtlr r0
/* 809A73F4  38 21 00 10 */	addi r1, r1, 0x10
/* 809A73F8  4E 80 00 20 */	blr 
