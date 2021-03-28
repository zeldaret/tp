lbl_80C66C94:
/* 80C66C94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C66C98  7C 08 02 A6 */	mflr r0
/* 80C66C9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C66CA0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C66CA4  7C 7F 1B 78 */	mr r31, r3
/* 80C66CA8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C66CAC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C66CB0  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 80C66CB4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C66CB8  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80C66CBC  7C 05 07 74 */	extsb r5, r0
/* 80C66CC0  4B 3C E6 A0 */	b isSwitch__10dSv_info_cCFii
/* 80C66CC4  2C 03 00 00 */	cmpwi r3, 0
/* 80C66CC8  41 82 00 0C */	beq lbl_80C66CD4
/* 80C66CCC  38 60 00 05 */	li r3, 5
/* 80C66CD0  48 00 00 5C */	b lbl_80C66D2C
lbl_80C66CD4:
/* 80C66CD4  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80C66CD8  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C66CDC  38 84 76 0C */	addi r4, r4, l_arcName@l
/* 80C66CE0  80 84 00 00 */	lwz r4, 0(r4)
/* 80C66CE4  4B 3C 61 D8 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C66CE8  7C 60 1B 78 */	mr r0, r3
/* 80C66CEC  2C 00 00 04 */	cmpwi r0, 4
/* 80C66CF0  40 82 00 38 */	bne lbl_80C66D28
/* 80C66CF4  7F E3 FB 78 */	mr r3, r31
/* 80C66CF8  3C 80 80 C6 */	lis r4, l_arcName@ha
/* 80C66CFC  38 84 76 0C */	addi r4, r4, l_arcName@l
/* 80C66D00  80 84 00 00 */	lwz r4, 0(r4)
/* 80C66D04  38 A0 00 07 */	li r5, 7
/* 80C66D08  38 C0 00 00 */	li r6, 0
/* 80C66D0C  38 E0 11 00 */	li r7, 0x1100
/* 80C66D10  39 00 00 00 */	li r8, 0
/* 80C66D14  4B 41 1A A8 */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C66D18  7C 60 1B 78 */	mr r0, r3
/* 80C66D1C  2C 00 00 05 */	cmpwi r0, 5
/* 80C66D20  40 82 00 08 */	bne lbl_80C66D28
/* 80C66D24  48 00 00 08 */	b lbl_80C66D2C
lbl_80C66D28:
/* 80C66D28  7C 03 03 78 */	mr r3, r0
lbl_80C66D2C:
/* 80C66D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C66D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C66D34  7C 08 03 A6 */	mtlr r0
/* 80C66D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80C66D3C  4E 80 00 20 */	blr 
