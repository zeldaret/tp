lbl_809CBE18:
/* 809CBE18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 809CBE1C  7C 08 02 A6 */	mflr r0
/* 809CBE20  90 01 00 24 */	stw r0, 0x24(r1)
/* 809CBE24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 809CBE28  7C 7F 1B 78 */	mr r31, r3
/* 809CBE2C  3C 80 80 9D */	lis r4, lit_4469@ha
/* 809CBE30  38 A4 F9 88 */	addi r5, r4, lit_4469@l
/* 809CBE34  80 85 00 00 */	lwz r4, 0(r5)
/* 809CBE38  80 05 00 04 */	lwz r0, 4(r5)
/* 809CBE3C  90 81 00 08 */	stw r4, 8(r1)
/* 809CBE40  90 01 00 0C */	stw r0, 0xc(r1)
/* 809CBE44  80 05 00 08 */	lwz r0, 8(r5)
/* 809CBE48  90 01 00 10 */	stw r0, 0x10(r1)
/* 809CBE4C  38 81 00 08 */	addi r4, r1, 8
/* 809CBE50  48 00 19 45 */	bl chkAction__11daNpc_grC_cFM11daNpc_grC_cFPCvPvPv_i
/* 809CBE54  7C 64 1B 78 */	mr r4, r3
/* 809CBE58  7F E3 FB 78 */	mr r3, r31
/* 809CBE5C  38 A0 00 00 */	li r5, 0
/* 809CBE60  3C C0 80 9D */	lis r6, m__17daNpc_grC_Param_c@ha
/* 809CBE64  38 C6 F5 1C */	addi r6, r6, m__17daNpc_grC_Param_c@l
/* 809CBE68  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 809CBE6C  38 C0 00 00 */	li r6, 0
/* 809CBE70  38 E0 00 00 */	li r7, 0
/* 809CBE74  4B 78 64 38 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 809CBE78  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 809CBE7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 809CBE80  7C 08 03 A6 */	mtlr r0
/* 809CBE84  38 21 00 20 */	addi r1, r1, 0x20
/* 809CBE88  4E 80 00 20 */	blr 
