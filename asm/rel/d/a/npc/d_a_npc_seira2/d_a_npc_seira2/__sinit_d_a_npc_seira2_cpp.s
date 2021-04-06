lbl_80AD4750:
/* 80AD4750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AD4754  7C 08 02 A6 */	mflr r0
/* 80AD4758  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AD475C  3C 60 80 AD */	lis r3, mCutList__14daNpc_Seira2_c@ha /* 0x80AD52B8@ha */
/* 80AD4760  38 A3 52 B8 */	addi r5, r3, mCutList__14daNpc_Seira2_c@l /* 0x80AD52B8@l */
/* 80AD4764  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AD4768  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AD476C  80 64 00 00 */	lwz r3, 0(r4)
/* 80AD4770  80 04 00 04 */	lwz r0, 4(r4)
/* 80AD4774  90 65 00 00 */	stw r3, 0(r5)
/* 80AD4778  90 05 00 04 */	stw r0, 4(r5)
/* 80AD477C  80 04 00 08 */	lwz r0, 8(r4)
/* 80AD4780  90 05 00 08 */	stw r0, 8(r5)
/* 80AD4784  3C 60 80 AD */	lis r3, __vt__20daNpc_Seira2_Param_c@ha /* 0x80AD5600@ha */
/* 80AD4788  38 03 56 00 */	addi r0, r3, __vt__20daNpc_Seira2_Param_c@l /* 0x80AD5600@l */
/* 80AD478C  3C 60 80 AD */	lis r3, l_HIO@ha /* 0x80AD5624@ha */
/* 80AD4790  94 03 56 24 */	stwu r0, l_HIO@l(r3)  /* 0x80AD5624@l */
/* 80AD4794  3C 80 80 AD */	lis r4, __dt__20daNpc_Seira2_Param_cFv@ha /* 0x80AD48C4@ha */
/* 80AD4798  38 84 48 C4 */	addi r4, r4, __dt__20daNpc_Seira2_Param_cFv@l /* 0x80AD48C4@l */
/* 80AD479C  3C A0 80 AD */	lis r5, lit_3870@ha /* 0x80AD5618@ha */
/* 80AD47A0  38 A5 56 18 */	addi r5, r5, lit_3870@l /* 0x80AD5618@l */
/* 80AD47A4  4B FF C3 F5 */	bl __register_global_object
/* 80AD47A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AD47AC  7C 08 03 A6 */	mtlr r0
/* 80AD47B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80AD47B4  4E 80 00 20 */	blr 
