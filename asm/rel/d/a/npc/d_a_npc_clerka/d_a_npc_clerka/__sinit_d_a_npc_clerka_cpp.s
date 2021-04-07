lbl_80995560:
/* 80995560  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80995564  7C 08 02 A6 */	mflr r0
/* 80995568  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099556C  3C 60 80 99 */	lis r3, mCutList__14daNpc_clerkA_c@ha /* 0x80995BFC@ha */
/* 80995570  38 A3 5B FC */	addi r5, r3, mCutList__14daNpc_clerkA_c@l /* 0x80995BFC@l */
/* 80995574  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80995578  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 8099557C  80 64 00 00 */	lwz r3, 0(r4)
/* 80995580  80 04 00 04 */	lwz r0, 4(r4)
/* 80995584  90 65 00 00 */	stw r3, 0(r5)
/* 80995588  90 05 00 04 */	stw r0, 4(r5)
/* 8099558C  80 04 00 08 */	lwz r0, 8(r4)
/* 80995590  90 05 00 08 */	stw r0, 8(r5)
/* 80995594  3C 60 80 99 */	lis r3, __vt__20daNpc_clerkA_Param_c@ha /* 0x80995E0C@ha */
/* 80995598  38 03 5E 0C */	addi r0, r3, __vt__20daNpc_clerkA_Param_c@l /* 0x80995E0C@l */
/* 8099559C  3C 60 80 99 */	lis r3, l_HIO@ha /* 0x80995E2C@ha */
/* 809955A0  94 03 5E 2C */	stwu r0, l_HIO@l(r3)  /* 0x80995E2C@l */
/* 809955A4  3C 80 80 99 */	lis r4, __dt__20daNpc_clerkA_Param_cFv@ha /* 0x809956D4@ha */
/* 809955A8  38 84 56 D4 */	addi r4, r4, __dt__20daNpc_clerkA_Param_cFv@l /* 0x809956D4@l */
/* 809955AC  3C A0 80 99 */	lis r5, lit_3931@ha /* 0x80995E20@ha */
/* 809955B0  38 A5 5E 20 */	addi r5, r5, lit_3931@l /* 0x80995E20@l */
/* 809955B4  4B FF CF 05 */	bl __register_global_object
/* 809955B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809955BC  7C 08 03 A6 */	mtlr r0
/* 809955C0  38 21 00 10 */	addi r1, r1, 0x10
/* 809955C4  4E 80 00 20 */	blr 
