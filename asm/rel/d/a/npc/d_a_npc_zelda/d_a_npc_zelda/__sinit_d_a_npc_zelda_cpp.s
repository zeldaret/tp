lbl_80B77D70:
/* 80B77D70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B77D74  7C 08 02 A6 */	mflr r0
/* 80B77D78  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B77D7C  3C 60 80 B8 */	lis r3, mCutList__13daNpc_Zelda_c@ha
/* 80B77D80  38 A3 82 04 */	addi r5, r3, mCutList__13daNpc_Zelda_c@l
/* 80B77D84  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80B77D88  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80B77D8C  80 64 00 00 */	lwz r3, 0(r4)
/* 80B77D90  80 04 00 04 */	lwz r0, 4(r4)
/* 80B77D94  90 65 00 00 */	stw r3, 0(r5)
/* 80B77D98  90 05 00 04 */	stw r0, 4(r5)
/* 80B77D9C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B77DA0  90 05 00 08 */	stw r0, 8(r5)
/* 80B77DA4  3C 60 80 B8 */	lis r3, __vt__19daNpc_Zelda_Param_c@ha
/* 80B77DA8  38 03 83 F0 */	addi r0, r3, __vt__19daNpc_Zelda_Param_c@l
/* 80B77DAC  3C 60 80 B8 */	lis r3, l_HIO@ha
/* 80B77DB0  94 03 84 14 */	stwu r0, l_HIO@l(r3)
/* 80B77DB4  3C 80 80 B7 */	lis r4, __dt__19daNpc_Zelda_Param_cFv@ha
/* 80B77DB8  38 84 7F 5C */	addi r4, r4, __dt__19daNpc_Zelda_Param_cFv@l
/* 80B77DBC  3C A0 80 B8 */	lis r5, lit_3811@ha
/* 80B77DC0  38 A5 84 08 */	addi r5, r5, lit_3811@l
/* 80B77DC4  4B FF D2 F5 */	bl __register_global_object
/* 80B77DC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B77DCC  7C 08 03 A6 */	mtlr r0
/* 80B77DD0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B77DD4  4E 80 00 20 */	blr 
