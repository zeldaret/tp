lbl_809863A0:
/* 809863A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809863A4  7C 08 02 A6 */	mflr r0
/* 809863A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 809863AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809863B0  7C 7F 1B 79 */	or. r31, r3, r3
/* 809863B4  41 82 00 1C */	beq lbl_809863D0
/* 809863B8  3C A0 80 99 */	lis r5, __vt__12J3DFrameCtrl@ha /* 0x8098B9E4@ha */
/* 809863BC  38 05 B9 E4 */	addi r0, r5, __vt__12J3DFrameCtrl@l /* 0x8098B9E4@l */
/* 809863C0  90 1F 00 00 */	stw r0, 0(r31)
/* 809863C4  7C 80 07 35 */	extsh. r0, r4
/* 809863C8  40 81 00 08 */	ble lbl_809863D0
/* 809863CC  4B 94 89 71 */	bl __dl__FPv
lbl_809863D0:
/* 809863D0  7F E3 FB 78 */	mr r3, r31
/* 809863D4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809863D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809863DC  7C 08 03 A6 */	mtlr r0
/* 809863E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809863E4  4E 80 00 20 */	blr 
