lbl_80BDCDD4:
/* 80BDCDD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDCDD8  7C 08 02 A6 */	mflr r0
/* 80BDCDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDCDE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BDCDE4  7C 7F 1B 78 */	mr r31, r3
/* 80BDCDE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80BDCDEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80BDCDF0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80BDCDF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80BDCDF8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80BDCDFC  7C 05 07 74 */	extsb r5, r0
/* 80BDCE00  4B 45 85 60 */	b isSwitch__10dSv_info_cCFii
/* 80BDCE04  2C 03 00 00 */	cmpwi r3, 0
/* 80BDCE08  41 82 00 0C */	beq lbl_80BDCE14
/* 80BDCE0C  38 60 00 05 */	li r3, 5
/* 80BDCE10  48 00 00 60 */	b lbl_80BDCE70
lbl_80BDCE14:
/* 80BDCE14  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80BDCE18  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BDCE1C  38 84 D7 08 */	addi r4, r4, l_arcName@l
/* 80BDCE20  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDCE24  4B 45 00 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80BDCE28  7C 60 1B 78 */	mr r0, r3
/* 80BDCE2C  2C 00 00 04 */	cmpwi r0, 4
/* 80BDCE30  40 82 00 3C */	bne lbl_80BDCE6C
/* 80BDCE34  7F E3 FB 78 */	mr r3, r31
/* 80BDCE38  3C 80 80 BE */	lis r4, l_arcName@ha
/* 80BDCE3C  38 84 D7 08 */	addi r4, r4, l_arcName@l
/* 80BDCE40  80 84 00 00 */	lwz r4, 0(r4)
/* 80BDCE44  38 A0 00 07 */	li r5, 7
/* 80BDCE48  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80BDCE4C  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80BDCE50  38 E0 10 00 */	li r7, 0x1000
/* 80BDCE54  39 00 00 00 */	li r8, 0
/* 80BDCE58  4B 49 B9 64 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80BDCE5C  7C 60 1B 78 */	mr r0, r3
/* 80BDCE60  2C 00 00 05 */	cmpwi r0, 5
/* 80BDCE64  40 82 00 08 */	bne lbl_80BDCE6C
/* 80BDCE68  48 00 00 08 */	b lbl_80BDCE70
lbl_80BDCE6C:
/* 80BDCE6C  7C 03 03 78 */	mr r3, r0
lbl_80BDCE70:
/* 80BDCE70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BDCE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDCE78  7C 08 03 A6 */	mtlr r0
/* 80BDCE7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDCE80  4E 80 00 20 */	blr 
