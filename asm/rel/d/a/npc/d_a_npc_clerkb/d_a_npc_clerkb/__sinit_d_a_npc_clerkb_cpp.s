lbl_80999618:
/* 80999618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099961C  7C 08 02 A6 */	mflr r0
/* 80999620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80999624  3C 60 80 9A */	lis r3, mCutList__14daNpc_clerkB_c@ha
/* 80999628  38 A3 9E 20 */	addi r5, r3, mCutList__14daNpc_clerkB_c@l
/* 8099962C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80999630  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80999634  80 64 00 00 */	lwz r3, 0(r4)
/* 80999638  80 04 00 04 */	lwz r0, 4(r4)
/* 8099963C  90 65 00 00 */	stw r3, 0(r5)
/* 80999640  90 05 00 04 */	stw r0, 4(r5)
/* 80999644  80 04 00 08 */	lwz r0, 8(r4)
/* 80999648  90 05 00 08 */	stw r0, 8(r5)
/* 8099964C  3C 60 80 9A */	lis r3, __vt__20daNpc_clerkB_Param_c@ha
/* 80999650  38 03 A0 30 */	addi r0, r3, __vt__20daNpc_clerkB_Param_c@l
/* 80999654  3C 60 80 9A */	lis r3, l_HIO@ha
/* 80999658  94 03 A0 54 */	stwu r0, l_HIO@l(r3)
/* 8099965C  3C 80 80 9A */	lis r4, __dt__20daNpc_clerkB_Param_cFv@ha
/* 80999660  38 84 97 EC */	addi r4, r4, __dt__20daNpc_clerkB_Param_cFv@l
/* 80999664  3C A0 80 9A */	lis r5, lit_3931@ha
/* 80999668  38 A5 A0 48 */	addi r5, r5, lit_3931@l
/* 8099966C  4B FF C8 4D */	bl __register_global_object
/* 80999670  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80999674  7C 08 03 A6 */	mtlr r0
/* 80999678  38 21 00 10 */	addi r1, r1, 0x10
/* 8099967C  4E 80 00 20 */	blr 
