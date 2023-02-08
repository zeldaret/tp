lbl_80ACFAC0:
/* 80ACFAC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ACFAC4  7C 08 02 A6 */	mflr r0
/* 80ACFAC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ACFACC  3C 60 80 AD */	lis r3, mCutList__13daNpc_Seira_c@ha /* 0x80AD070C@ha */
/* 80ACFAD0  38 A3 07 0C */	addi r5, r3, mCutList__13daNpc_Seira_c@l /* 0x80AD070C@l */
/* 80ACFAD4  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80ACFAD8  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80ACFADC  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACFAE0  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACFAE4  90 65 00 00 */	stw r3, 0(r5)
/* 80ACFAE8  90 05 00 04 */	stw r0, 4(r5)
/* 80ACFAEC  80 04 00 08 */	lwz r0, 8(r4)
/* 80ACFAF0  90 05 00 08 */	stw r0, 8(r5)
/* 80ACFAF4  3C 60 80 AD */	lis r3, lit_3871@ha /* 0x80AD0700@ha */
/* 80ACFAF8  38 83 07 00 */	addi r4, r3, lit_3871@l /* 0x80AD0700@l */
/* 80ACFAFC  80 64 00 00 */	lwz r3, 0(r4)
/* 80ACFB00  80 04 00 04 */	lwz r0, 4(r4)
/* 80ACFB04  90 65 00 0C */	stw r3, 0xc(r5)
/* 80ACFB08  90 05 00 10 */	stw r0, 0x10(r5)
/* 80ACFB0C  80 04 00 08 */	lwz r0, 8(r4)
/* 80ACFB10  90 05 00 14 */	stw r0, 0x14(r5)
/* 80ACFB14  3C 60 80 AD */	lis r3, __vt__19daNpc_Seira_Param_c@ha /* 0x80AD0AE4@ha */
/* 80ACFB18  38 03 0A E4 */	addi r0, r3, __vt__19daNpc_Seira_Param_c@l /* 0x80AD0AE4@l */
/* 80ACFB1C  3C 60 80 AD */	lis r3, l_HIO@ha /* 0x80AD0B04@ha */
/* 80ACFB20  94 03 0B 04 */	stwu r0, l_HIO@l(r3)  /* 0x80AD0B04@l */
/* 80ACFB24  3C 80 80 AD */	lis r4, __dt__19daNpc_Seira_Param_cFv@ha /* 0x80ACFC54@ha */
/* 80ACFB28  38 84 FC 54 */	addi r4, r4, __dt__19daNpc_Seira_Param_cFv@l /* 0x80ACFC54@l */
/* 80ACFB2C  3C A0 80 AD */	lis r5, lit_3872@ha /* 0x80AD0AF8@ha */
/* 80ACFB30  38 A5 0A F8 */	addi r5, r5, lit_3872@l /* 0x80AD0AF8@l */
/* 80ACFB34  4B FF BC 25 */	bl __register_global_object
/* 80ACFB38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ACFB3C  7C 08 03 A6 */	mtlr r0
/* 80ACFB40  38 21 00 10 */	addi r1, r1, 0x10
/* 80ACFB44  4E 80 00 20 */	blr 
