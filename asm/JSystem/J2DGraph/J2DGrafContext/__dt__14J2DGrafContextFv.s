lbl_802E95D4:
/* 802E95D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802E95D8  7C 08 02 A6 */	mflr r0
/* 802E95DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 802E95E0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802E95E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802E95E8  41 82 00 1C */	beq lbl_802E9604
/* 802E95EC  3C A0 80 3D */	lis r5, __vt__14J2DGrafContext@ha /* 0x803CC9B8@ha */
/* 802E95F0  38 05 C9 B8 */	addi r0, r5, __vt__14J2DGrafContext@l /* 0x803CC9B8@l */
/* 802E95F4  90 1F 00 00 */	stw r0, 0(r31)
/* 802E95F8  7C 80 07 35 */	extsh. r0, r4
/* 802E95FC  40 81 00 08 */	ble lbl_802E9604
/* 802E9600  4B FE 57 3D */	bl __dl__FPv
lbl_802E9604:
/* 802E9604  7F E3 FB 78 */	mr r3, r31
/* 802E9608  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802E960C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802E9610  7C 08 03 A6 */	mtlr r0
/* 802E9614  38 21 00 10 */	addi r1, r1, 0x10
/* 802E9618  4E 80 00 20 */	blr 
