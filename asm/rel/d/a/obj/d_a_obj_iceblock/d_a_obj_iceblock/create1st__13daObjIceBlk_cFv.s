lbl_80C227F4:
/* 80C227F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C227F8  7C 08 02 A6 */	mflr r0
/* 80C227FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C22800  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C22804  93 C1 00 08 */	stw r30, 8(r1)
/* 80C22808  7C 7E 1B 78 */	mr r30, r3
/* 80C2280C  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80C22810  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C22814  38 84 44 F0 */	addi r4, r4, l_arcName@l
/* 80C22818  80 84 00 00 */	lwz r4, 0(r4)
/* 80C2281C  4B 40 A6 A0 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C22820  7C 60 1B 78 */	mr r0, r3
/* 80C22824  2C 00 00 04 */	cmpwi r0, 4
/* 80C22828  40 82 00 70 */	bne lbl_80C22898
/* 80C2282C  3B E0 0C 40 */	li r31, 0xc40
/* 80C22830  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C22834  54 04 46 3E */	srwi r4, r0, 0x18
/* 80C22838  28 04 00 FF */	cmplwi r4, 0xff
/* 80C2283C  41 82 00 24 */	beq lbl_80C22860
/* 80C22840  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C22844  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C22848  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C2284C  7C 05 07 74 */	extsb r5, r0
/* 80C22850  4B 41 2B 10 */	b isSwitch__10dSv_info_cCFii
/* 80C22854  2C 03 00 00 */	cmpwi r3, 0
/* 80C22858  40 82 00 08 */	bne lbl_80C22860
/* 80C2285C  3B E0 29 40 */	li r31, 0x2940
lbl_80C22860:
/* 80C22860  7F C3 F3 78 */	mr r3, r30
/* 80C22864  3C 80 80 C2 */	lis r4, l_arcName@ha
/* 80C22868  38 84 44 F0 */	addi r4, r4, l_arcName@l
/* 80C2286C  80 84 00 00 */	lwz r4, 0(r4)
/* 80C22870  38 A0 00 0C */	li r5, 0xc
/* 80C22874  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C22878  38 C6 5B 44 */	addi r6, r6, dBgS_MoveBGProc_Trans__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C2287C  7F E7 FB 78 */	mr r7, r31
/* 80C22880  39 00 00 00 */	li r8, 0
/* 80C22884  4B 45 5F 38 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C22888  7C 60 1B 78 */	mr r0, r3
/* 80C2288C  2C 00 00 05 */	cmpwi r0, 5
/* 80C22890  40 82 00 08 */	bne lbl_80C22898
/* 80C22894  48 00 00 08 */	b lbl_80C2289C
lbl_80C22898:
/* 80C22898  7C 03 03 78 */	mr r3, r0
lbl_80C2289C:
/* 80C2289C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C228A0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80C228A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C228A8  7C 08 03 A6 */	mtlr r0
/* 80C228AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C228B0  4E 80 00 20 */	blr 
