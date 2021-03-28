lbl_80AC9104:
/* 80AC9104  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AC9108  7C 08 02 A6 */	mflr r0
/* 80AC910C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AC9110  3C 60 80 AD */	lis r3, mCutList__12daNpc_seiC_c@ha
/* 80AC9114  38 A3 93 A0 */	addi r5, r3, mCutList__12daNpc_seiC_c@l
/* 80AC9118  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80AC911C  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80AC9120  80 64 00 00 */	lwz r3, 0(r4)
/* 80AC9124  80 04 00 04 */	lwz r0, 4(r4)
/* 80AC9128  90 65 00 00 */	stw r3, 0(r5)
/* 80AC912C  90 05 00 04 */	stw r0, 4(r5)
/* 80AC9130  80 04 00 08 */	lwz r0, 8(r4)
/* 80AC9134  90 05 00 08 */	stw r0, 8(r5)
/* 80AC9138  3C 60 80 AD */	lis r3, __vt__18daNpc_seiC_Param_c@ha
/* 80AC913C  38 03 95 6C */	addi r0, r3, __vt__18daNpc_seiC_Param_c@l
/* 80AC9140  3C 60 80 AD */	lis r3, l_HIO@ha
/* 80AC9144  94 03 95 8C */	stwu r0, l_HIO@l(r3)
/* 80AC9148  3C 80 80 AD */	lis r4, __dt__18daNpc_seiC_Param_cFv@ha
/* 80AC914C  38 84 91 B0 */	addi r4, r4, __dt__18daNpc_seiC_Param_cFv@l
/* 80AC9150  3C A0 80 AD */	lis r5, lit_3814@ha
/* 80AC9154  38 A5 95 80 */	addi r5, r5, lit_3814@l
/* 80AC9158  4B FF E3 81 */	bl __register_global_object
/* 80AC915C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AC9160  7C 08 03 A6 */	mtlr r0
/* 80AC9164  38 21 00 10 */	addi r1, r1, 0x10
/* 80AC9168  4E 80 00 20 */	blr 
