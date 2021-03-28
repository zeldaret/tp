lbl_80C62A9C:
/* 80C62A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C62AA0  7C 08 02 A6 */	mflr r0
/* 80C62AA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C62AA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C62AAC  7C 7F 1B 78 */	mr r31, r3
/* 80C62AB0  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C62AB4  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C62AB8  38 84 31 BC */	addi r4, r4, l_arcName@l
/* 80C62ABC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C62AC0  4B 3C A3 FC */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C62AC4  7C 60 1B 78 */	mr r0, r3
/* 80C62AC8  2C 00 00 04 */	cmpwi r0, 4
/* 80C62ACC  40 82 00 3C */	bne lbl_80C62B08
/* 80C62AD0  7F E3 FB 78 */	mr r3, r31
/* 80C62AD4  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C62AD8  38 84 31 BC */	addi r4, r4, l_arcName@l
/* 80C62ADC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C62AE0  38 A0 00 07 */	li r5, 7
/* 80C62AE4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C62AE8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C62AEC  38 E0 22 60 */	li r7, 0x2260
/* 80C62AF0  39 00 00 00 */	li r8, 0
/* 80C62AF4  4B 41 5C C8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C62AF8  7C 60 1B 78 */	mr r0, r3
/* 80C62AFC  2C 00 00 05 */	cmpwi r0, 5
/* 80C62B00  40 82 00 08 */	bne lbl_80C62B08
/* 80C62B04  48 00 00 08 */	b lbl_80C62B0C
lbl_80C62B08:
/* 80C62B08  7C 03 03 78 */	mr r3, r0
lbl_80C62B0C:
/* 80C62B0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C62B10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C62B14  7C 08 03 A6 */	mtlr r0
/* 80C62B18  38 21 00 10 */	addi r1, r1, 0x10
/* 80C62B1C  4E 80 00 20 */	blr 
