lbl_80C1DF9C:
/* 80C1DF9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1DFA0  7C 08 02 A6 */	mflr r0
/* 80C1DFA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1DFA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1DFAC  7C 7F 1B 78 */	mr r31, r3
/* 80C1DFB0  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C1DFB4  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C1EEC4@ha */
/* 80C1DFB8  38 84 EE C4 */	addi r4, r4, l_arcName@l /* 0x80C1EEC4@l */
/* 80C1DFBC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1DFC0  4B 40 EE FD */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C1DFC4  7C 60 1B 78 */	mr r0, r3
/* 80C1DFC8  2C 00 00 04 */	cmpwi r0, 4
/* 80C1DFCC  40 82 00 3C */	bne lbl_80C1E008
/* 80C1DFD0  7F E3 FB 78 */	mr r3, r31
/* 80C1DFD4  3C 80 80 C2 */	lis r4, l_arcName@ha /* 0x80C1EEC4@ha */
/* 80C1DFD8  38 84 EE C4 */	addi r4, r4, l_arcName@l /* 0x80C1EEC4@l */
/* 80C1DFDC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C1DFE0  38 A0 00 07 */	li r5, 7
/* 80C1DFE4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C1DFE8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C1DFEC  38 E0 0B 00 */	li r7, 0xb00
/* 80C1DFF0  39 00 00 00 */	li r8, 0
/* 80C1DFF4  4B 45 A7 C9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C1DFF8  7C 60 1B 78 */	mr r0, r3
/* 80C1DFFC  2C 00 00 05 */	cmpwi r0, 5
/* 80C1E000  40 82 00 08 */	bne lbl_80C1E008
/* 80C1E004  48 00 00 08 */	b lbl_80C1E00C
lbl_80C1E008:
/* 80C1E008  7C 03 03 78 */	mr r3, r0
lbl_80C1E00C:
/* 80C1E00C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1E010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1E014  7C 08 03 A6 */	mtlr r0
/* 80C1E018  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1E01C  4E 80 00 20 */	blr 
