lbl_80AB42F4:
/* 80AB42F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AB42F8  7C 08 02 A6 */	mflr r0
/* 80AB42FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AB4300  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB4304  4B 8A DE D9 */	bl _savegpr_29
/* 80AB4308  7C 7D 1B 78 */	mr r29, r3
/* 80AB430C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80AB4310  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80AB4314  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AB4318  3C A0 80 AB */	lis r5, m__17daNpcPray_Param_c@ha /* 0x80AB5808@ha */
/* 80AB431C  38 A5 58 08 */	addi r5, r5, m__17daNpcPray_Param_c@l /* 0x80AB5808@l */
/* 80AB4320  C0 25 00 50 */	lfs f1, 0x50(r5)
/* 80AB4324  4B 69 F6 CD */	bl chkActorInSight__8daNpcF_cFP10fopAc_ac_cf
/* 80AB4328  2C 03 00 00 */	cmpwi r3, 0
/* 80AB432C  40 82 00 14 */	bne lbl_80AB4340
/* 80AB4330  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80AB4334  4B 69 C3 AD */	bl remove__18daNpcF_ActorMngr_cFv
/* 80AB4338  38 60 00 00 */	li r3, 0
/* 80AB433C  48 00 00 84 */	b lbl_80AB43C0
lbl_80AB4340:
/* 80AB4340  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80AB4344  4B 69 C3 A9 */	bl getActorP__18daNpcF_ActorMngr_cFv
/* 80AB4348  28 03 00 00 */	cmplwi r3, 0
/* 80AB434C  40 82 00 2C */	bne lbl_80AB4378
/* 80AB4350  7F A3 EB 78 */	mr r3, r29
/* 80AB4354  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AB4358  7F A5 EB 78 */	mr r5, r29
/* 80AB435C  88 DD 05 47 */	lbz r6, 0x547(r29)
/* 80AB4360  4B 69 F8 7D */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80AB4364  30 03 FF FF */	addic r0, r3, -1
/* 80AB4368  7C 00 19 10 */	subfe r0, r0, r3
/* 80AB436C  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AB4370  7C 1E 03 78 */	mr r30, r0
/* 80AB4374  48 00 00 28 */	b lbl_80AB439C
lbl_80AB4378:
/* 80AB4378  7F A3 EB 78 */	mr r3, r29
/* 80AB437C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AB4380  7F A5 EB 78 */	mr r5, r29
/* 80AB4384  88 DD 05 45 */	lbz r6, 0x545(r29)
/* 80AB4388  4B 69 F8 55 */	bl chkActorInAttnArea__8daNpcF_cFP10fopAc_ac_cP10fopAc_ac_ci
/* 80AB438C  30 03 FF FF */	addic r0, r3, -1
/* 80AB4390  7C 00 19 10 */	subfe r0, r0, r3
/* 80AB4394  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 80AB4398  7C 1E 03 78 */	mr r30, r0
lbl_80AB439C:
/* 80AB439C  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 80AB43A0  41 82 00 14 */	beq lbl_80AB43B4
/* 80AB43A4  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80AB43A8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80AB43AC  4B 69 C3 11 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80AB43B0  48 00 00 0C */	b lbl_80AB43BC
lbl_80AB43B4:
/* 80AB43B4  38 7D 0C 8C */	addi r3, r29, 0xc8c
/* 80AB43B8  4B 69 C3 29 */	bl remove__18daNpcF_ActorMngr_cFv
lbl_80AB43BC:
/* 80AB43BC  7F C3 F3 78 */	mr r3, r30
lbl_80AB43C0:
/* 80AB43C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80AB43C4  4B 8A DE 65 */	bl _restgpr_29
/* 80AB43C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AB43CC  7C 08 03 A6 */	mtlr r0
/* 80AB43D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80AB43D4  4E 80 00 20 */	blr 
