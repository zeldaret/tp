lbl_809E4CAC:
/* 809E4CAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809E4CB0  7C 08 02 A6 */	mflr r0
/* 809E4CB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 809E4CB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809E4CBC  7C 7F 1B 78 */	mr r31, r3
/* 809E4CC0  80 83 05 68 */	lwz r4, 0x568(r3)
/* 809E4CC4  80 84 00 04 */	lwz r4, 4(r4)
/* 809E4CC8  80 84 00 04 */	lwz r4, 4(r4)
/* 809E4CCC  80 84 00 60 */	lwz r4, 0x60(r4)
/* 809E4CD0  80 84 00 08 */	lwz r4, 8(r4)
/* 809E4CD4  80 03 0B D8 */	lwz r0, 0xbd8(r3)
/* 809E4CD8  90 04 00 3C */	stw r0, 0x3c(r4)
/* 809E4CDC  3C 80 80 9F */	lis r4, lit_4522@ha
/* 809E4CE0  38 A4 80 C0 */	addi r5, r4, lit_4522@l
/* 809E4CE4  80 85 00 00 */	lwz r4, 0(r5)
/* 809E4CE8  80 05 00 04 */	lwz r0, 4(r5)
/* 809E4CEC  90 81 00 08 */	stw r4, 8(r1)
/* 809E4CF0  90 01 00 0C */	stw r0, 0xc(r1)
/* 809E4CF4  80 05 00 08 */	lwz r0, 8(r5)
/* 809E4CF8  90 01 00 10 */	stw r0, 0x10(r1)
/* 809E4CFC  38 81 00 08 */	addi r4, r1, 8
/* 809E4D00  48 00 15 F1 */	bl chkAction__11daNpc_grS_cFM11daNpc_grS_cFPCvPvPv_i
/* 809E4D04  7C 64 1B 78 */	mr r4, r3
/* 809E4D08  7F E3 FB 78 */	mr r3, r31
/* 809E4D0C  38 A0 00 00 */	li r5, 0
/* 809E4D10  3C C0 80 9E */	lis r6, m__17daNpc_grS_Param_c@ha
/* 809E4D14  38 C6 7D CC */	addi r6, r6, m__17daNpc_grS_Param_c@l
/* 809E4D18  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809E4D1C  38 C0 00 00 */	li r6, 0
/* 809E4D20  38 E0 00 00 */	li r7, 0
/* 809E4D24  4B 76 D5 88 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 809E4D28  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809E4D2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809E4D30  7C 08 03 A6 */	mtlr r0
/* 809E4D34  38 21 00 20 */	addi r1, r1, 0x20
/* 809E4D38  4E 80 00 20 */	blr 
