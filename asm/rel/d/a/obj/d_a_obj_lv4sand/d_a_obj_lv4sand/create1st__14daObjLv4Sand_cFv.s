lbl_80C69D8C:
/* 80C69D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C69D90  7C 08 02 A6 */	mflr r0
/* 80C69D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C69D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C69D9C  7C 7F 1B 78 */	mr r31, r3
/* 80C69DA0  38 7F 05 B0 */	addi r3, r31, 0x5b0
/* 80C69DA4  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C6A400@ha */
/* 80C69DA8  38 84 A4 00 */	addi r4, r4, l_arcName@l /* 0x80C6A400@l */
/* 80C69DAC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C69DB0  4B 3C 31 0D */	bl dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C69DB4  7C 60 1B 78 */	mr r0, r3
/* 80C69DB8  2C 00 00 04 */	cmpwi r0, 4
/* 80C69DBC  40 82 00 3C */	bne lbl_80C69DF8
/* 80C69DC0  7F E3 FB 78 */	mr r3, r31
/* 80C69DC4  3C 80 80 C7 */	lis r4, l_arcName@ha /* 0x80C6A400@ha */
/* 80C69DC8  38 84 A4 00 */	addi r4, r4, l_arcName@l /* 0x80C6A400@l */
/* 80C69DCC  80 84 00 00 */	lwz r4, 0(r4)
/* 80C69DD0  38 A0 00 0B */	li r5, 0xb
/* 80C69DD4  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha /* 0x80075AD8@ha */
/* 80C69DD8  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l /* 0x80075AD8@l */
/* 80C69DDC  38 E0 40 00 */	li r7, 0x4000
/* 80C69DE0  39 00 00 00 */	li r8, 0
/* 80C69DE4  4B 40 E9 D9 */	bl MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C69DE8  7C 60 1B 78 */	mr r0, r3
/* 80C69DEC  2C 00 00 05 */	cmpwi r0, 5
/* 80C69DF0  40 82 00 08 */	bne lbl_80C69DF8
/* 80C69DF4  48 00 00 08 */	b lbl_80C69DFC
lbl_80C69DF8:
/* 80C69DF8  7C 03 03 78 */	mr r3, r0
lbl_80C69DFC:
/* 80C69DFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C69E00  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C69E04  7C 08 03 A6 */	mtlr r0
/* 80C69E08  38 21 00 10 */	addi r1, r1, 0x10
/* 80C69E0C  4E 80 00 20 */	blr 
