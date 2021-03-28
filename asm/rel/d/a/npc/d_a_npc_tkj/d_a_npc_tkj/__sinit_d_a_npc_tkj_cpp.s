lbl_80576328:
/* 80576328  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057632C  7C 08 02 A6 */	mflr r0
/* 80576330  90 01 00 14 */	stw r0, 0x14(r1)
/* 80576334  3C 60 80 57 */	lis r3, mCutList__10daNpcTkj_c@ha
/* 80576338  38 A3 67 C4 */	addi r5, r3, mCutList__10daNpcTkj_c@l
/* 8057633C  3C 60 80 3A */	lis r3, __ptmf_null@ha
/* 80576340  38 83 21 80 */	addi r4, r3, __ptmf_null@l
/* 80576344  80 64 00 00 */	lwz r3, 0(r4)
/* 80576348  80 04 00 04 */	lwz r0, 4(r4)
/* 8057634C  90 65 00 00 */	stw r3, 0(r5)
/* 80576350  90 05 00 04 */	stw r0, 4(r5)
/* 80576354  80 04 00 08 */	lwz r0, 8(r4)
/* 80576358  90 05 00 08 */	stw r0, 8(r5)
/* 8057635C  3C 60 80 57 */	lis r3, lit_3917@ha
/* 80576360  38 83 67 B8 */	addi r4, r3, lit_3917@l
/* 80576364  80 64 00 00 */	lwz r3, 0(r4)
/* 80576368  80 04 00 04 */	lwz r0, 4(r4)
/* 8057636C  90 65 00 0C */	stw r3, 0xc(r5)
/* 80576370  90 05 00 10 */	stw r0, 0x10(r5)
/* 80576374  80 04 00 08 */	lwz r0, 8(r4)
/* 80576378  90 05 00 14 */	stw r0, 0x14(r5)
/* 8057637C  3C 60 80 57 */	lis r3, __vt__17daNpc_Tkj_Param_c@ha
/* 80576380  38 03 69 B0 */	addi r0, r3, __vt__17daNpc_Tkj_Param_c@l
/* 80576384  3C 60 80 57 */	lis r3, l_HIO@ha
/* 80576388  94 03 69 D4 */	stwu r0, l_HIO@l(r3)
/* 8057638C  3C 80 80 57 */	lis r4, __dt__17daNpc_Tkj_Param_cFv@ha
/* 80576390  38 84 65 2C */	addi r4, r4, __dt__17daNpc_Tkj_Param_cFv@l
/* 80576394  3C A0 80 57 */	lis r5, lit_3918@ha
/* 80576398  38 A5 69 C8 */	addi r5, r5, lit_3918@l
/* 8057639C  4B FF D3 1D */	bl __register_global_object
/* 805763A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805763A4  7C 08 03 A6 */	mtlr r0
/* 805763A8  38 21 00 10 */	addi r1, r1, 0x10
/* 805763AC  4E 80 00 20 */	blr 
