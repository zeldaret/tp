lbl_809EF188:
/* 809EF188  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809EF18C  7C 08 02 A6 */	mflr r0
/* 809EF190  90 01 00 14 */	stw r0, 0x14(r1)
/* 809EF194  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809EF198  7C 7F 1B 79 */	or. r31, r3, r3
/* 809EF19C  41 82 00 1C */	beq lbl_809EF1B8
/* 809EF1A0  3C A0 80 9F */	lis r5, __vt__17daNpc_Grz_Param_c@ha
/* 809EF1A4  38 05 FB F4 */	addi r0, r5, __vt__17daNpc_Grz_Param_c@l
/* 809EF1A8  90 1F 00 00 */	stw r0, 0(r31)
/* 809EF1AC  7C 80 07 35 */	extsh. r0, r4
/* 809EF1B0  40 81 00 08 */	ble lbl_809EF1B8
/* 809EF1B4  4B 8D FB 88 */	b __dl__FPv
lbl_809EF1B8:
/* 809EF1B8  7F E3 FB 78 */	mr r3, r31
/* 809EF1BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809EF1C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809EF1C4  7C 08 03 A6 */	mtlr r0
/* 809EF1C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809EF1CC  4E 80 00 20 */	blr 
