lbl_80AEFEA0:
/* 80AEFEA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AEFEA4  7C 08 02 A6 */	mflr r0
/* 80AEFEA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AEFEAC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AEFEB0  7C 7F 1B 78 */	mr r31, r3
/* 80AEFEB4  3C 80 80 AF */	lis r4, lit_4463@ha
/* 80AEFEB8  38 A4 29 80 */	addi r5, r4, lit_4463@l
/* 80AEFEBC  80 85 00 00 */	lwz r4, 0(r5)
/* 80AEFEC0  80 05 00 04 */	lwz r0, 4(r5)
/* 80AEFEC4  90 81 00 08 */	stw r4, 8(r1)
/* 80AEFEC8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AEFECC  80 05 00 08 */	lwz r0, 8(r5)
/* 80AEFED0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AEFED4  38 81 00 08 */	addi r4, r1, 8
/* 80AEFED8  48 00 10 79 */	bl chkAction__16daNpc_SoldierA_cFM16daNpc_SoldierA_cFPCvPvPv_i
/* 80AEFEDC  7C 64 1B 78 */	mr r4, r3
/* 80AEFEE0  7F E3 FB 78 */	mr r3, r31
/* 80AEFEE4  38 A0 00 00 */	li r5, 0
/* 80AEFEE8  3C C0 80 AF */	lis r6, m__22daNpc_SoldierA_Param_c@ha
/* 80AEFEEC  38 C6 26 E8 */	addi r6, r6, m__22daNpc_SoldierA_Param_c@l
/* 80AEFEF0  C0 26 00 0C */	lfs f1, 0xc(r6)
/* 80AEFEF4  38 C0 00 00 */	li r6, 0
/* 80AEFEF8  38 E0 00 00 */	li r7, 0
/* 80AEFEFC  4B 66 23 B0 */	b draw__8daNpcF_cFiifP11_GXColorS10i
/* 80AEFF00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AEFF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AEFF08  7C 08 03 A6 */	mtlr r0
/* 80AEFF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 80AEFF10  4E 80 00 20 */	blr 
