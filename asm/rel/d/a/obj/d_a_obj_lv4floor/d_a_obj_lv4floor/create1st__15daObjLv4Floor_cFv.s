lbl_80C67944:
/* 80C67944  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C67948  7C 08 02 A6 */	mflr r0
/* 80C6794C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C67950  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C67954  7C 7F 1B 78 */	mr r31, r3
/* 80C67958  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C6795C  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C67960  38 84 7D BC */	addi r4, r4, l_arcName@l
/* 80C67964  80 84 00 00 */	lwz r4, 0(r4)
/* 80C67968  4B 3C 55 54 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C6796C  2C 03 00 04 */	cmpwi r3, 4
/* 80C67970  41 82 00 08 */	beq lbl_80C67978
/* 80C67974  48 00 00 5C */	b lbl_80C679D0
lbl_80C67978:
/* 80C67978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6797C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C67980  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C67984  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C67988  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C6798C  7C 05 07 74 */	extsb r5, r0
/* 80C67990  4B 3C D9 D0 */	b isSwitch__10dSv_info_cCFii
/* 80C67994  2C 03 00 00 */	cmpwi r3, 0
/* 80C67998  41 82 00 0C */	beq lbl_80C679A4
/* 80C6799C  38 60 00 05 */	li r3, 5
/* 80C679A0  48 00 00 30 */	b lbl_80C679D0
lbl_80C679A4:
/* 80C679A4  7F E3 FB 78 */	mr r3, r31
/* 80C679A8  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C679AC  38 84 7D BC */	addi r4, r4, l_arcName@l
/* 80C679B0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C679B4  38 A0 00 07 */	li r5, 7
/* 80C679B8  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80C679BC  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80C679C0  38 E0 40 00 */	li r7, 0x4000
/* 80C679C4  39 00 00 00 */	li r8, 0
/* 80C679C8  4B 41 0D F4 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C679CC  2C 03 00 05 */	cmpwi r3, 5
lbl_80C679D0:
/* 80C679D0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C679D4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C679D8  7C 08 03 A6 */	mtlr r0
/* 80C679DC  38 21 00 10 */	addi r1, r1, 0x10
/* 80C679E0  4E 80 00 20 */	blr 
