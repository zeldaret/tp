lbl_80AEEED8:
/* 80AEEED8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEEEDC  7C 08 02 A6 */	mflr r0
/* 80AEEEE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEEEE4  3C 60 80 AF */	lis r3, mCutList__12daNpc_solA_c@ha /* 0x80AEF298@ha */
/* 80AEEEE8  38 A3 F2 98 */	addi r5, r3, mCutList__12daNpc_solA_c@l /* 0x80AEF298@l */
/* 80AEEEEC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80AEEEF0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80AEEEF4  80 64 00 00 */	lwz r3, 0(r4)
/* 80AEEEF8  80 04 00 04 */	lwz r0, 4(r4)
/* 80AEEEFC  90 65 00 00 */	stw r3, 0(r5)
/* 80AEEF00  90 05 00 04 */	stw r0, 4(r5)
/* 80AEEF04  80 04 00 08 */	lwz r0, 8(r4)
/* 80AEEF08  90 05 00 08 */	stw r0, 8(r5)
/* 80AEEF0C  3C 60 80 AF */	lis r3, __vt__18daNpc_solA_Param_c@ha /* 0x80AEF46C@ha */
/* 80AEEF10  38 03 F4 6C */	addi r0, r3, __vt__18daNpc_solA_Param_c@l /* 0x80AEF46C@l */
/* 80AEEF14  3C 60 80 AF */	lis r3, l_HIO@ha /* 0x80AEF48C@ha */
/* 80AEEF18  94 03 F4 8C */	stwu r0, l_HIO@l(r3)  /* 0x80AEF48C@l */
/* 80AEEF1C  3C 80 80 AF */	lis r4, __dt__18daNpc_solA_Param_cFv@ha /* 0x80AEF094@ha */
/* 80AEEF20  38 84 F0 94 */	addi r4, r4, __dt__18daNpc_solA_Param_cFv@l /* 0x80AEF094@l */
/* 80AEEF24  3C A0 80 AF */	lis r5, lit_3936@ha /* 0x80AEF480@ha */
/* 80AEEF28  38 A5 F4 80 */	addi r5, r5, lit_3936@l /* 0x80AEF480@l */
/* 80AEEF2C  4B FF DC 0D */	bl __register_global_object
/* 80AEEF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEEF34  7C 08 03 A6 */	mtlr r0
/* 80AEEF38  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEEF3C  4E 80 00 20 */	blr 
