lbl_80A453F8:
/* 80A453F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A453FC  7C 08 02 A6 */	mflr r0
/* 80A45400  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A45404  3C 60 80 A4 */	lis r3, mCutList__11daNpc_Knj_c@ha
/* 80A45408  38 A3 56 88 */	addi r5, r3, mCutList__11daNpc_Knj_c@l
/* 80A4540C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80A45410  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80A45414  80 64 00 00 */	lwz r3, 0(r4)
/* 80A45418  80 04 00 04 */	lwz r0, 4(r4)
/* 80A4541C  90 65 00 00 */	stw r3, 0(r5)
/* 80A45420  90 05 00 04 */	stw r0, 4(r5)
/* 80A45424  80 04 00 08 */	lwz r0, 8(r4)
/* 80A45428  90 05 00 08 */	stw r0, 8(r5)
/* 80A4542C  3C 60 80 A4 */	lis r3, __vt__17daNpc_Knj_Param_c@ha
/* 80A45430  38 03 58 7C */	addi r0, r3, __vt__17daNpc_Knj_Param_c@l
/* 80A45434  3C 60 80 A4 */	lis r3, l_HIO@ha
/* 80A45438  94 03 58 9C */	stwu r0, l_HIO@l(r3)
/* 80A4543C  3C 80 80 A4 */	lis r4, __dt__17daNpc_Knj_Param_cFv@ha
/* 80A45440  38 84 54 A4 */	addi r4, r4, __dt__17daNpc_Knj_Param_cFv@l
/* 80A45444  3C A0 80 A4 */	lis r5, lit_3814@ha
/* 80A45448  38 A5 58 90 */	addi r5, r5, lit_3814@l
/* 80A4544C  4B FF E0 AD */	bl __register_global_object
/* 80A45450  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A45454  7C 08 03 A6 */	mtlr r0
/* 80A45458  38 21 00 10 */	addi r1, r1, 0x10
/* 80A4545C  4E 80 00 20 */	blr 
