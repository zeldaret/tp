lbl_80D63D7C:
/* 80D63D7C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D63D80  7C 08 02 A6 */	mflr r0
/* 80D63D84  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D63D88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80D63D8C  7C 7F 1B 78 */	mr r31, r3
/* 80D63D90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63D94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63D98  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80D63D9C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80D63DA0  88 1F 04 BA */	lbz r0, 0x4ba(r31)
/* 80D63DA4  7C 05 07 74 */	extsb r5, r0
/* 80D63DA8  4B 2D 15 B9 */	bl isSwitch__10dSv_info_cCFii
/* 80D63DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80D63DB0  41 82 00 14 */	beq lbl_80D63DC4
/* 80D63DB4  7F E3 FB 78 */	mr r3, r31
/* 80D63DB8  4B 2B 5E C5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 80D63DBC  38 60 00 01 */	li r3, 1
/* 80D63DC0  48 00 00 78 */	b lbl_80D63E38
lbl_80D63DC4:
/* 80D63DC4  7F E3 FB 78 */	mr r3, r31
/* 80D63DC8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D63DCC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D63DD0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80D63DD4  4B 2B 6C C1 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D63DD8  C0 1F 05 68 */	lfs f0, 0x568(r31)
/* 80D63DDC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D63DE0  40 80 00 54 */	bge lbl_80D63E34
/* 80D63DE4  38 00 00 57 */	li r0, 0x57
/* 80D63DE8  B0 01 00 08 */	sth r0, 8(r1)
/* 80D63DEC  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha /* 0x80023578@ha */
/* 80D63DF0  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l /* 0x80023578@l */
/* 80D63DF4  38 81 00 08 */	addi r4, r1, 8
/* 80D63DF8  4B 2B DE 69 */	bl fpcLyIt_AllJudge__FPFPvPv_PvPv
/* 80D63DFC  28 03 00 00 */	cmplwi r3, 0
/* 80D63E00  41 82 00 34 */	beq lbl_80D63E34
/* 80D63E04  80 BF 00 B0 */	lwz r5, 0xb0(r31)
/* 80D63E08  54 A0 46 3E */	srwi r0, r5, 0x18
/* 80D63E0C  7C 06 07 74 */	extsb r6, r0
/* 80D63E10  2C 06 00 FF */	cmpwi r6, 0xff
/* 80D63E14  40 82 00 0C */	bne lbl_80D63E20
/* 80D63E18  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D63E1C  7C 06 07 74 */	extsb r6, r0
lbl_80D63E20:
/* 80D63E20  A8 1F 04 E8 */	lha r0, 0x4e8(r31)
/* 80D63E24  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 80D63E28  54 A5 04 3E */	clrlwi r5, r5, 0x10
/* 80D63E2C  7C C6 07 74 */	extsb r6, r6
/* 80D63E30  4B D9 98 A9 */	bl setHintEvent__11daNpcTheB_cFlUsi
lbl_80D63E34:
/* 80D63E34  38 60 00 01 */	li r3, 1
lbl_80D63E38:
/* 80D63E38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80D63E3C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D63E40  7C 08 03 A6 */	mtlr r0
/* 80D63E44  38 21 00 20 */	addi r1, r1, 0x20
/* 80D63E48  4E 80 00 20 */	blr 
