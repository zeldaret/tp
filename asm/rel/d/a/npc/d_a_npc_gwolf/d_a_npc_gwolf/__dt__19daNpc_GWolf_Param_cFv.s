lbl_809F8488:
/* 809F8488  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809F848C  7C 08 02 A6 */	mflr r0
/* 809F8490  90 01 00 14 */	stw r0, 0x14(r1)
/* 809F8494  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809F8498  7C 7F 1B 79 */	or. r31, r3, r3
/* 809F849C  41 82 00 1C */	beq lbl_809F84B8
/* 809F84A0  3C A0 80 A0 */	lis r5, __vt__19daNpc_GWolf_Param_c@ha
/* 809F84A4  38 05 8E B0 */	addi r0, r5, __vt__19daNpc_GWolf_Param_c@l
/* 809F84A8  90 1F 00 00 */	stw r0, 0(r31)
/* 809F84AC  7C 80 07 35 */	extsh. r0, r4
/* 809F84B0  40 81 00 08 */	ble lbl_809F84B8
/* 809F84B4  4B 8D 68 88 */	b __dl__FPv
lbl_809F84B8:
/* 809F84B8  7F E3 FB 78 */	mr r3, r31
/* 809F84BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809F84C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809F84C4  7C 08 03 A6 */	mtlr r0
/* 809F84C8  38 21 00 10 */	addi r1, r1, 0x10
/* 809F84CC  4E 80 00 20 */	blr 
