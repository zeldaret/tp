lbl_8025B2EC:
/* 8025B2EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8025B2F0  7C 08 02 A6 */	mflr r0
/* 8025B2F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8025B2F8  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B2FC  48 10 6E E1 */	bl _savegpr_29
/* 8025B300  7C 7D 1B 78 */	mr r29, r3
/* 8025B304  83 C3 00 B0 */	lwz r30, 0xb0(r3)
/* 8025B308  3C 60 80 3F */	lis r3, mStatus__20dStage_roomControl_c@ha /* 0x803F6094@ha */
/* 8025B30C  38 63 60 94 */	addi r3, r3, mStatus__20dStage_roomControl_c@l /* 0x803F6094@l */
/* 8025B310  1C 1E 04 04 */	mulli r0, r30, 0x404
/* 8025B314  7F E3 02 14 */	add r31, r3, r0
/* 8025B318  8C 1F 03 F4 */	lbzu r0, 0x3f4(r31)
/* 8025B31C  54 04 07 38 */	rlwinm r4, r0, 0, 0x1c, 0x1c
/* 8025B320  54 03 06 B4 */	rlwinm r3, r0, 0, 0x1a, 0x1a
/* 8025B324  88 BD 01 D4 */	lbz r5, 0x1d4(r29)
/* 8025B328  7C A0 07 75 */	extsb. r0, r5
/* 8025B32C  41 82 00 14 */	beq lbl_8025B340
/* 8025B330  7C A0 07 75 */	extsb. r0, r5
/* 8025B334  40 81 01 28 */	ble lbl_8025B45C
/* 8025B338  2C 04 00 00 */	cmpwi r4, 0
/* 8025B33C  40 82 01 20 */	bne lbl_8025B45C
lbl_8025B340:
/* 8025B340  2C 04 00 00 */	cmpwi r4, 0
/* 8025B344  40 82 02 04 */	bne lbl_8025B548
/* 8025B348  7C A0 07 74 */	extsb r0, r5
/* 8025B34C  2C 00 00 01 */	cmpwi r0, 1
/* 8025B350  41 82 00 38 */	beq lbl_8025B388
/* 8025B354  40 80 00 60 */	bge lbl_8025B3B4
/* 8025B358  2C 00 00 00 */	cmpwi r0, 0
/* 8025B35C  40 80 00 08 */	bge lbl_8025B364
/* 8025B360  48 00 00 54 */	b lbl_8025B3B4
lbl_8025B364:
/* 8025B364  7F C3 F3 78 */	mr r3, r30
/* 8025B368  4B FF FB BD */	bl resetArchiveBank__Fi
/* 8025B36C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B370  40 82 00 0C */	bne lbl_8025B37C
/* 8025B374  38 60 00 00 */	li r3, 0
/* 8025B378  48 00 01 D4 */	b lbl_8025B54C
lbl_8025B37C:
/* 8025B37C  88 7D 01 D4 */	lbz r3, 0x1d4(r29)
/* 8025B380  38 03 00 01 */	addi r0, r3, 1
/* 8025B384  98 1D 01 D4 */	stb r0, 0x1d4(r29)
lbl_8025B388:
/* 8025B388  7F C3 F3 78 */	mr r3, r30
/* 8025B38C  4B FF FB C1 */	bl setArchiveBank__Fi
/* 8025B390  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B394  40 82 00 0C */	bne lbl_8025B3A0
/* 8025B398  38 60 00 00 */	li r3, 0
/* 8025B39C  48 00 01 B0 */	b lbl_8025B54C
lbl_8025B3A0:
/* 8025B3A0  80 1D 01 CC */	lwz r0, 0x1cc(r29)
/* 8025B3A4  28 00 00 00 */	cmplwi r0, 0
/* 8025B3A8  41 82 00 0C */	beq lbl_8025B3B4
/* 8025B3AC  7F C3 F3 78 */	mr r3, r30
/* 8025B3B0  4B FF FE 21 */	bl loadDemoArchive__Fi
lbl_8025B3B4:
/* 8025B3B4  3C 60 80 40 */	lis r3, mDemoArcName__20dStage_roomControl_c@ha /* 0x80406194@ha */
/* 8025B3B8  8C 03 61 94 */	lbzu r0, mDemoArcName__20dStage_roomControl_c@l(r3)  /* 0x80406194@l */
/* 8025B3BC  7C 00 07 75 */	extsb. r0, r0
/* 8025B3C0  41 82 00 30 */	beq lbl_8025B3F0
/* 8025B3C4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B3C8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B3CC  3C 84 00 02 */	addis r4, r4, 2
/* 8025B3D0  38 A0 00 80 */	li r5, 0x80
/* 8025B3D4  38 84 C2 F8 */	addi r4, r4, -15624
/* 8025B3D8  4B DE 0D 89 */	bl syncRes__14dRes_control_cFPCcP11dRes_info_ci
/* 8025B3DC  2C 03 00 00 */	cmpwi r3, 0
/* 8025B3E0  41 80 00 10 */	blt lbl_8025B3F0
/* 8025B3E4  40 81 00 0C */	ble lbl_8025B3F0
/* 8025B3E8  38 60 00 00 */	li r3, 0
/* 8025B3EC  48 00 01 60 */	b lbl_8025B54C
lbl_8025B3F0:
/* 8025B3F0  38 60 02 DC */	li r3, 0x2dc
/* 8025B3F4  7F C4 F3 78 */	mr r4, r30
/* 8025B3F8  38 A0 00 00 */	li r5, 0
/* 8025B3FC  38 C0 FF FF */	li r6, -1
/* 8025B400  38 E0 00 00 */	li r7, 0
/* 8025B404  39 00 00 00 */	li r8, 0
/* 8025B408  39 20 FF FF */	li r9, -1
/* 8025B40C  4B DB E9 8D */	bl fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
/* 8025B410  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B414  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B418  3B E3 4F F8 */	addi r31, r3, 0x4ff8
/* 8025B41C  7F E3 FB 78 */	mr r3, r31
/* 8025B420  4B DE B4 69 */	bl demoInit__16dEvent_manager_cFv
/* 8025B424  7F E3 FB 78 */	mr r3, r31
/* 8025B428  7F C4 F3 78 */	mr r4, r30
/* 8025B42C  4B DE B4 D9 */	bl roomInit__16dEvent_manager_cFi
/* 8025B430  80 7D 01 CC */	lwz r3, 0x1cc(r29)
/* 8025B434  80 9D 01 D0 */	lwz r4, 0x1d0(r29)
/* 8025B438  7F C5 F3 78 */	mr r5, r30
/* 8025B43C  4B DC B7 F9 */	bl dStage_dt_c_roomReLoader__FPvP11dStage_dt_ci
/* 8025B440  7F C3 07 74 */	extsb r3, r30
/* 8025B444  4B DD 40 BD */	bl dComIfGp_ret_wp_set__FSc
/* 8025B448  38 00 FF FF */	li r0, -1
/* 8025B44C  98 1D 01 D4 */	stb r0, 0x1d4(r29)
/* 8025B450  38 00 00 01 */	li r0, 1
/* 8025B454  98 1D 01 D5 */	stb r0, 0x1d5(r29)
/* 8025B458  48 00 00 F0 */	b lbl_8025B548
lbl_8025B45C:
/* 8025B45C  2C 04 00 00 */	cmpwi r4, 0
/* 8025B460  41 82 00 B8 */	beq lbl_8025B518
/* 8025B464  80 6D 87 C0 */	lwz r3, g_fpcNd_type(r13)
/* 8025B468  80 9D 00 B4 */	lwz r4, 0xb4(r29)
/* 8025B46C  4B DC 51 E1 */	bl fpcBs_Is_JustOfType__Fii
/* 8025B470  2C 03 00 00 */	cmpwi r3, 0
/* 8025B474  41 82 00 0C */	beq lbl_8025B480
/* 8025B478  80 7D 00 C8 */	lwz r3, 0xc8(r29)
/* 8025B47C  48 00 00 08 */	b lbl_8025B484
lbl_8025B480:
/* 8025B480  38 60 FF FF */	li r3, -1
lbl_8025B484:
/* 8025B484  4B FF FD 11 */	bl isCreating__FUi
/* 8025B488  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8025B48C  41 82 00 0C */	beq lbl_8025B498
/* 8025B490  38 60 00 00 */	li r3, 0
/* 8025B494  48 00 00 B8 */	b lbl_8025B54C
lbl_8025B498:
/* 8025B498  38 7D 00 BC */	addi r3, r29, 0xbc
/* 8025B49C  3C 80 80 26 */	lis r4, deleteJugge__FPvPv@ha /* 0x8025B150@ha */
/* 8025B4A0  38 84 B1 50 */	addi r4, r4, deleteJugge__FPvPv@l /* 0x8025B150@l */
/* 8025B4A4  38 A0 00 00 */	li r5, 0
/* 8025B4A8  4B DC 67 81 */	bl fpcLyIt_Judge__FP11layer_classPFPvPv_PvPv
/* 8025B4AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B4B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B4B4  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8025B4B8  38 63 02 10 */	addi r3, r3, 0x210
/* 8025B4BC  4B DF 04 2D */	bl allForceOnEventMove__Q213dPa_control_c7level_cFv
/* 8025B4C0  7F C3 F3 78 */	mr r3, r30
/* 8025B4C4  4B DD 24 ED */	bl getZoneNo__20dStage_roomControl_cFi
/* 8025B4C8  54 64 28 34 */	slwi r4, r3, 5
/* 8025B4CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B4D0  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B4D4  7C 60 22 14 */	add r3, r0, r4
/* 8025B4D8  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8025B4DC  4B DD 98 11 */	bl clearRoomSwitch__13dSv_zoneBit_cFv
/* 8025B4E0  7F C3 F3 78 */	mr r3, r30
/* 8025B4E4  4B DD 24 CD */	bl getZoneNo__20dStage_roomControl_cFi
/* 8025B4E8  54 64 28 34 */	slwi r4, r3, 5
/* 8025B4EC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B4F0  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B4F4  7C 60 22 14 */	add r3, r0, r4
/* 8025B4F8  38 63 09 B6 */	addi r3, r3, 0x9b6
/* 8025B4FC  4B DD 97 FD */	bl clearRoomItem__13dSv_zoneBit_cFv
/* 8025B500  88 1F 00 00 */	lbz r0, 0(r31)
/* 8025B504  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 8025B508  98 1F 00 00 */	stb r0, 0(r31)
/* 8025B50C  38 00 00 00 */	li r0, 0
/* 8025B510  98 1D 01 D4 */	stb r0, 0x1d4(r29)
/* 8025B514  48 00 00 34 */	b lbl_8025B548
lbl_8025B518:
/* 8025B518  2C 03 00 00 */	cmpwi r3, 0
/* 8025B51C  41 82 00 2C */	beq lbl_8025B548
/* 8025B520  38 7D 00 BC */	addi r3, r29, 0xbc
/* 8025B524  3C 80 80 26 */	lis r4, objectDeleteJugge__FPvPv@ha /* 0x8025B0F0@ha */
/* 8025B528  38 84 B0 F0 */	addi r4, r4, objectDeleteJugge__FPvPv@l /* 0x8025B0F0@l */
/* 8025B52C  38 A0 00 00 */	li r5, 0
/* 8025B530  4B DC 66 F9 */	bl fpcLyIt_Judge__FP11layer_classPFPvPv_PvPv
/* 8025B534  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8025B538  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8025B53C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8025B540  38 63 02 10 */	addi r3, r3, 0x210
/* 8025B544  4B DF 03 A5 */	bl allForceOnEventMove__Q213dPa_control_c7level_cFv
lbl_8025B548:
/* 8025B548  38 60 00 01 */	li r3, 1
lbl_8025B54C:
/* 8025B54C  39 61 00 20 */	addi r11, r1, 0x20
/* 8025B550  48 10 6C D9 */	bl _restgpr_29
/* 8025B554  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8025B558  7C 08 03 A6 */	mtlr r0
/* 8025B55C  38 21 00 20 */	addi r1, r1, 0x20
/* 8025B560  4E 80 00 20 */	blr 
