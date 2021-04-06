lbl_80B6E798:
/* 80B6E798  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B6E79C  7C 08 02 A6 */	mflr r0
/* 80B6E7A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B6E7A4  3C 60 80 B7 */	lis r3, mCutList__12daNpc_Zant_c@ha /* 0x80B6EB3C@ha */
/* 80B6E7A8  38 A3 EB 3C */	addi r5, r3, mCutList__12daNpc_Zant_c@l /* 0x80B6EB3C@l */
/* 80B6E7AC  3C 60 80 3A */	lis r3, __ptmf_null@ha /* 0x803A2180@ha */
/* 80B6E7B0  38 83 21 80 */	addi r4, r3, __ptmf_null@l /* 0x803A2180@l */
/* 80B6E7B4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B6E7B8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B6E7BC  90 65 00 00 */	stw r3, 0(r5)
/* 80B6E7C0  90 05 00 04 */	stw r0, 4(r5)
/* 80B6E7C4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B6E7C8  90 05 00 08 */	stw r0, 8(r5)
/* 80B6E7CC  3C 60 80 B7 */	lis r3, __vt__18daNpc_Zant_Param_c@ha /* 0x80B6ED10@ha */
/* 80B6E7D0  38 03 ED 10 */	addi r0, r3, __vt__18daNpc_Zant_Param_c@l /* 0x80B6ED10@l */
/* 80B6E7D4  3C 60 80 B7 */	lis r3, l_HIO@ha /* 0x80B6ED34@ha */
/* 80B6E7D8  94 03 ED 34 */	stwu r0, l_HIO@l(r3)  /* 0x80B6ED34@l */
/* 80B6E7DC  3C 80 80 B7 */	lis r4, __dt__18daNpc_Zant_Param_cFv@ha /* 0x80B6E93C@ha */
/* 80B6E7E0  38 84 E9 3C */	addi r4, r4, __dt__18daNpc_Zant_Param_cFv@l /* 0x80B6E93C@l */
/* 80B6E7E4  3C A0 80 B7 */	lis r5, lit_3811@ha /* 0x80B6ED28@ha */
/* 80B6E7E8  38 A5 ED 28 */	addi r5, r5, lit_3811@l /* 0x80B6ED28@l */
/* 80B6E7EC  4B FF D9 4D */	bl __register_global_object
/* 80B6E7F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B6E7F4  7C 08 03 A6 */	mtlr r0
/* 80B6E7F8  38 21 00 10 */	addi r1, r1, 0x10
/* 80B6E7FC  4E 80 00 20 */	blr 
