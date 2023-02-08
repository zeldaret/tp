lbl_80BB7458:
/* 80BB7458  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BB745C  7C 08 02 A6 */	mflr r0
/* 80BB7460  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BB7464  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB7468  4B 7A AD 71 */	bl _savegpr_28
/* 80BB746C  7C 7E 1B 78 */	mr r30, r3
/* 80BB7470  3C 60 80 BB */	lis r3, VIBMODE_POWER@ha /* 0x80BB7EB0@ha */
/* 80BB7474  3B E3 7E B0 */	addi r31, r3, VIBMODE_POWER@l /* 0x80BB7EB0@l */
/* 80BB7478  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80BB747C  2C 03 00 00 */	cmpwi r3, 0
/* 80BB7480  41 82 00 40 */	beq lbl_80BB74C0
/* 80BB7484  38 03 FF FF */	addi r0, r3, -1
/* 80BB7488  90 1E 05 74 */	stw r0, 0x574(r30)
/* 80BB748C  80 1E 05 74 */	lwz r0, 0x574(r30)
/* 80BB7490  2C 00 00 00 */	cmpwi r0, 0
/* 80BB7494  41 81 00 2C */	bgt lbl_80BB74C0
/* 80BB7498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB749C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB74A0  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80BB74A4  7F A3 EB 78 */	mr r3, r29
/* 80BB74A8  4B 4B 89 B5 */	bl CheckQuake__12dVibration_cFv
/* 80BB74AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB74B0  41 82 00 10 */	beq lbl_80BB74C0
/* 80BB74B4  7F A3 EB 78 */	mr r3, r29
/* 80BB74B8  38 80 00 1F */	li r4, 0x1f
/* 80BB74BC  4B 4B 88 D9 */	bl StopQuake__12dVibration_cFi
lbl_80BB74C0:
/* 80BB74C0  7F C3 F3 78 */	mr r3, r30
/* 80BB74C4  48 00 03 55 */	bl pieceMove__11daBkyRock_cFv
/* 80BB74C8  7F C3 F3 78 */	mr r3, r30
/* 80BB74CC  48 00 01 C5 */	bl chkHitBombArrow__11daBkyRock_cFv
/* 80BB74D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB74D4  40 82 00 0C */	bne lbl_80BB74E0
/* 80BB74D8  38 00 00 01 */	li r0, 1
/* 80BB74DC  98 1E 05 79 */	stb r0, 0x579(r30)
lbl_80BB74E0:
/* 80BB74E0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80BB74E4  41 82 00 A0 */	beq lbl_80BB7584
/* 80BB74E8  88 1E 05 79 */	lbz r0, 0x579(r30)
/* 80BB74EC  28 00 00 00 */	cmplwi r0, 0
/* 80BB74F0  41 82 00 94 */	beq lbl_80BB7584
/* 80BB74F4  7F C3 F3 78 */	mr r3, r30
/* 80BB74F8  48 00 02 75 */	bl initChangeModeBefore__11daBkyRock_cFv
/* 80BB74FC  7F C3 F3 78 */	mr r3, r30
/* 80BB7500  38 80 00 06 */	li r4, 6
/* 80BB7504  38 BF 00 24 */	addi r5, r31, 0x24
/* 80BB7508  48 00 07 11 */	bl callBombEmt__11daBkyRock_cFiPCUs
/* 80BB750C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80BB7510  7C 03 07 74 */	extsb r3, r0
/* 80BB7514  4B 47 5B 59 */	bl dComIfGp_getReverb__Fi
/* 80BB7518  7C 67 1B 78 */	mr r7, r3
/* 80BB751C  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080287@ha */
/* 80BB7520  38 03 02 87 */	addi r0, r3, 0x0287 /* 0x00080287@l */
/* 80BB7524  90 01 00 08 */	stw r0, 8(r1)
/* 80BB7528  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80BB752C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80BB7530  80 63 00 00 */	lwz r3, 0(r3)
/* 80BB7534  38 81 00 08 */	addi r4, r1, 8
/* 80BB7538  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 80BB753C  38 C0 00 00 */	li r6, 0
/* 80BB7540  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 80BB7544  FC 40 08 90 */	fmr f2, f1
/* 80BB7548  C0 7F 00 FC */	lfs f3, 0xfc(r31)
/* 80BB754C  FC 80 18 90 */	fmr f4, f3
/* 80BB7550  39 00 00 00 */	li r8, 0
/* 80BB7554  4B 6F 44 31 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80BB7558  38 00 00 02 */	li r0, 2
/* 80BB755C  98 1E 05 78 */	stb r0, 0x578(r30)
/* 80BB7560  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80BB7564  54 04 E6 3E */	rlwinm r4, r0, 0x1c, 0x18, 0x1f
/* 80BB7568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB756C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB7570  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80BB7574  7C 05 07 74 */	extsb r5, r0
/* 80BB7578  4B 47 DC 89 */	bl onSwitch__10dSv_info_cFii
/* 80BB757C  7F C3 F3 78 */	mr r3, r30
/* 80BB7580  48 00 02 7D */	bl initChangeModeAfter__11daBkyRock_cFv
lbl_80BB7584:
/* 80BB7584  7F C3 F3 78 */	mr r3, r30
/* 80BB7588  4B FF F9 DD */	bl setModelMtx__11daBkyRock_cFv
/* 80BB758C  3B 80 00 00 */	li r28, 0
/* 80BB7590  3B E0 00 00 */	li r31, 0
/* 80BB7594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BB7598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BB759C  3B A3 23 3C */	addi r29, r3, 0x233c
lbl_80BB75A0:
/* 80BB75A0  7F A3 EB 78 */	mr r3, r29
/* 80BB75A4  38 9F 05 EC */	addi r4, r31, 0x5ec
/* 80BB75A8  7C 9E 22 14 */	add r4, r30, r4
/* 80BB75AC  4B 6A D5 FD */	bl Set__4cCcSFP8cCcD_Obj
/* 80BB75B0  3B 9C 00 01 */	addi r28, r28, 1
/* 80BB75B4  2C 1C 00 02 */	cmpwi r28, 2
/* 80BB75B8  3B FF 01 3C */	addi r31, r31, 0x13c
/* 80BB75BC  41 80 FF E4 */	blt lbl_80BB75A0
/* 80BB75C0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BB75C4  4B 7A AC 61 */	bl _restgpr_28
/* 80BB75C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BB75CC  7C 08 03 A6 */	mtlr r0
/* 80BB75D0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BB75D4  4E 80 00 20 */	blr 
