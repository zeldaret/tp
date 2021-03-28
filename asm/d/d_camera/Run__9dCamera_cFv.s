lbl_801622B4:
/* 801622B4  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 801622B8  7C 08 02 A6 */	mflr r0
/* 801622BC  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 801622C0  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 801622C4  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 801622C8  39 61 00 90 */	addi r11, r1, 0x90
/* 801622CC  48 1F FF 01 */	bl _savegpr_25
/* 801622D0  7C 7F 1B 78 */	mr r31, r3
/* 801622D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801622D8  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 801622DC  83 84 5D B4 */	lwz r28, 0x5db4(r4)
/* 801622E0  80 AD 8A 98 */	lwz r5, m_midnaActor__9daPy_py_c(r13)
/* 801622E4  38 60 00 00 */	li r3, 0
/* 801622E8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 801622EC  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 801622F0  41 82 00 14 */	beq lbl_80162304
/* 801622F4  80 05 08 90 */	lwz r0, 0x890(r5)
/* 801622F8  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 801622FC  40 82 00 08 */	bne lbl_80162304
/* 80162300  38 60 00 01 */	li r3, 1
lbl_80162304:
/* 80162304  98 7F 01 94 */	stb r3, 0x194(r31)
/* 80162308  3B 60 00 00 */	li r27, 0
/* 8016230C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80162310  3B A3 61 C0 */	addi r29, r3, g_dComIfG_gameInfo@l
/* 80162314  80 7D 5D 7C */	lwz r3, 0x5d7c(r29)
/* 80162318  38 00 F7 FB */	li r0, -2053
/* 8016231C  7C 60 00 38 */	and r0, r3, r0
/* 80162320  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
/* 80162324  83 5F 01 90 */	lwz r26, 0x190(r31)
/* 80162328  80 64 5D B4 */	lwz r3, 0x5db4(r4)
/* 8016232C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80162330  54 00 3F FE */	rlwinm r0, r0, 7, 0x1f, 0x1f
/* 80162334  90 1F 01 90 */	stw r0, 0x190(r31)
/* 80162338  38 7F 02 28 */	addi r3, r31, 0x228
/* 8016233C  48 02 02 A9 */	bl Off__14dCamForcusLineFv
/* 80162340  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 80162344  3C 60 EF E9 */	lis r3, 0xEFE9 /* 0xEFE973DE@ha */
/* 80162348  38 03 73 DE */	addi r0, r3, 0x73DE /* 0xEFE973DE@l */
/* 8016234C  7C 80 00 38 */	and r0, r4, r0
/* 80162350  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80162354  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162358  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 8016235C  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80162360  38 00 00 00 */	li r0, 0
/* 80162364  90 1F 01 8C */	stw r0, 0x18c(r31)
/* 80162368  90 1F 01 88 */	stw r0, 0x188(r31)
/* 8016236C  88 8D 87 E4 */	lbz r4, struct_80450D64+0x0(r13)
/* 80162370  7C 84 07 74 */	extsb r4, r4
/* 80162374  80 1F 00 04 */	lwz r0, 4(r31)
/* 80162378  7C 04 00 00 */	cmpw r4, r0
/* 8016237C  41 82 00 0C */	beq lbl_80162388
/* 80162380  7F E3 FB 78 */	mr r3, r31
/* 80162384  48 00 24 2D */	bl onRoomChange__9dCamera_cFl
lbl_80162388:
/* 80162388  7F E3 FB 78 */	mr r3, r31
/* 8016238C  48 00 5C 61 */	bl checkGroundInfo__9dCamera_cFv
/* 80162390  7F E3 FB 78 */	mr r3, r31
/* 80162394  48 00 0F AD */	bl setMapToolData__9dCamera_cFv
/* 80162398  7F 83 E3 78 */	mr r3, r28
/* 8016239C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 801623A0  81 8C 00 94 */	lwz r12, 0x94(r12)
/* 801623A4  7D 89 03 A6 */	mtctr r12
/* 801623A8  4E 80 04 21 */	bctrl 
/* 801623AC  2C 03 00 00 */	cmpwi r3, 0
/* 801623B0  40 82 00 20 */	bne lbl_801623D0
/* 801623B4  7F 83 E3 78 */	mr r3, r28
/* 801623B8  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 801623BC  81 8C 00 98 */	lwz r12, 0x98(r12)
/* 801623C0  7D 89 03 A6 */	mtctr r12
/* 801623C4  4E 80 04 21 */	bctrl 
/* 801623C8  2C 03 00 00 */	cmpwi r3, 0
/* 801623CC  41 82 00 20 */	beq lbl_801623EC
lbl_801623D0:
/* 801623D0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801623D4  64 00 00 01 */	oris r0, r0, 1
/* 801623D8  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801623DC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801623E0  64 00 00 10 */	oris r0, r0, 0x10
/* 801623E4  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801623E8  48 00 00 1C */	b lbl_80162404
lbl_801623EC:
/* 801623EC  88 1F 03 D0 */	lbz r0, 0x3d0(r31)
/* 801623F0  28 00 00 00 */	cmplwi r0, 0
/* 801623F4  41 82 00 10 */	beq lbl_80162404
/* 801623F8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801623FC  54 00 04 1C */	rlwinm r0, r0, 0, 0x10, 0xe
/* 80162400  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_80162404:
/* 80162404  80 1C 05 80 */	lwz r0, 0x580(r28)
/* 80162408  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8016240C  40 82 00 14 */	bne lbl_80162420
/* 80162410  7F 83 E3 78 */	mr r3, r28
/* 80162414  4B FB 00 61 */	bl checkIronBallThrowMode__9daAlink_cCFv
/* 80162418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016241C  41 82 00 10 */	beq lbl_8016242C
lbl_80162420:
/* 80162420  80 1F 0A 04 */	lwz r0, 0xa04(r31)
/* 80162424  90 1F 09 48 */	stw r0, 0x948(r31)
/* 80162428  48 00 00 18 */	b lbl_80162440
lbl_8016242C:
/* 8016242C  80 7F 09 48 */	lwz r3, 0x948(r31)
/* 80162430  2C 03 00 00 */	cmpwi r3, 0
/* 80162434  41 82 00 0C */	beq lbl_80162440
/* 80162438  38 03 FF FF */	addi r0, r3, -1
/* 8016243C  90 1F 09 48 */	stw r0, 0x948(r31)
lbl_80162440:
/* 80162440  7F E3 FB 78 */	mr r3, r31
/* 80162444  4B FF F9 F1 */	bl updateMonitor__9dCamera_cFv
/* 80162448  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8016244C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 80162450  3B 3E 56 B8 */	addi r25, r30, 0x56b8
/* 80162454  7F 23 CB 78 */	mr r3, r25
/* 80162458  4B F1 13 8D */	bl LockonTruth__12dAttention_cFv
/* 8016245C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80162460  41 82 00 14 */	beq lbl_80162474
/* 80162464  7F 23 CB 78 */	mr r3, r25
/* 80162468  38 80 00 00 */	li r4, 0
/* 8016246C  4B F1 10 D1 */	bl LockonTarget__12dAttention_cFl
/* 80162470  48 00 00 08 */	b lbl_80162478
lbl_80162474:
/* 80162474  38 60 00 00 */	li r3, 0
lbl_80162478:
/* 80162478  90 7F 01 84 */	stw r3, 0x184(r31)
/* 8016247C  80 19 03 34 */	lwz r0, 0x334(r25)
/* 80162480  54 00 02 90 */	rlwinm r0, r0, 0, 0xa, 8
/* 80162484  90 19 03 34 */	stw r0, 0x334(r25)
/* 80162488  80 9D 5D 7C */	lwz r4, 0x5d7c(r29)
/* 8016248C  3C 60 FF FF */	lis r3, 0xFFFF /* 0xFFFF0BFF@ha */
/* 80162490  38 03 0B FF */	addi r0, r3, 0x0BFF /* 0xFFFF0BFF@l */
/* 80162494  7C 80 00 38 */	and r0, r4, r0
/* 80162498  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
/* 8016249C  80 1E 51 84 */	lwz r0, 0x5184(r30)
/* 801624A0  2C 00 00 00 */	cmpwi r0, 0
/* 801624A4  40 82 00 24 */	bne lbl_801624C8
/* 801624A8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801624AC  54 00 00 85 */	rlwinm. r0, r0, 0, 2, 2
/* 801624B0  40 82 00 18 */	bne lbl_801624C8
/* 801624B4  7F E3 FB 78 */	mr r3, r31
/* 801624B8  4B FF F2 F9 */	bl updatePad__9dCamera_cFv
/* 801624BC  38 7F 0A 70 */	addi r3, r31, 0xa70
/* 801624C0  80 9F 01 7C */	lwz r4, 0x17c(r31)
/* 801624C4  4B F2 5F 99 */	bl Shift__9dCstick_cFUl
lbl_801624C8:
/* 801624C8  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 801624CC  28 00 00 00 */	cmplwi r0, 0
/* 801624D0  41 82 00 20 */	beq lbl_801624F0
/* 801624D4  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 801624D8  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 801624DC  D0 1F 01 C0 */	stfs f0, 0x1c0(r31)
/* 801624E0  D0 1F 01 BC */	stfs f0, 0x1bc(r31)
/* 801624E4  D0 1F 01 E0 */	stfs f0, 0x1e0(r31)
/* 801624E8  D0 1F 01 DC */	stfs f0, 0x1dc(r31)
/* 801624EC  D0 1F 01 D8 */	stfs f0, 0x1d8(r31)
lbl_801624F0:
/* 801624F0  7F E3 FB 78 */	mr r3, r31
/* 801624F4  4B FF FB 95 */	bl checkForceLockTarget__9dCamera_cFv
/* 801624F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801624FC  40 82 00 10 */	bne lbl_8016250C
/* 80162500  38 00 FF FF */	li r0, -1
/* 80162504  90 1F 01 98 */	stw r0, 0x198(r31)
/* 80162508  48 00 00 10 */	b lbl_80162518
lbl_8016250C:
/* 8016250C  80 7F 01 A0 */	lwz r3, 0x1a0(r31)
/* 80162510  38 03 00 01 */	addi r0, r3, 1
/* 80162514  90 1F 01 A0 */	stw r0, 0x1a0(r31)
lbl_80162518:
/* 80162518  7F E3 FB 78 */	mr r3, r31
/* 8016251C  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80162520  48 00 18 3D */	bl nextType__9dCamera_cFl
/* 80162524  90 7F 06 90 */	stw r3, 0x690(r31)
/* 80162528  80 BF 06 90 */	lwz r5, 0x690(r31)
/* 8016252C  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80162530  7C 05 20 00 */	cmpw r5, r4
/* 80162534  41 82 00 1C */	beq lbl_80162550
/* 80162538  7F E3 FB 78 */	mr r3, r31
/* 8016253C  48 00 1F 11 */	bl onTypeChange__9dCamera_cFll
/* 80162540  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80162544  41 82 00 0C */	beq lbl_80162550
/* 80162548  80 1F 06 90 */	lwz r0, 0x690(r31)
/* 8016254C  90 1F 06 8C */	stw r0, 0x68c(r31)
lbl_80162550:
/* 80162550  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162554  54 05 03 98 */	rlwinm r5, r0, 0, 0xe, 0xc
/* 80162558  90 BD 5D 7C */	stw r5, 0x5d7c(r29)
/* 8016255C  80 9F 06 8C */	lwz r4, 0x68c(r31)
/* 80162560  3C 60 80 43 */	lis r3, data_8042C8F8@ha
/* 80162564  38 63 C8 F8 */	addi r3, r3, data_8042C8F8@l
/* 80162568  80 03 00 A4 */	lwz r0, 0xa4(r3)
/* 8016256C  7C 04 00 00 */	cmpw r4, r0
/* 80162570  40 82 00 0C */	bne lbl_8016257C
/* 80162574  64 A0 00 04 */	oris r0, r5, 4
/* 80162578  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
lbl_8016257C:
/* 8016257C  7F E3 FB 78 */	mr r3, r31
/* 80162580  80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 80162584  48 00 10 61 */	bl nextMode__9dCamera_cFl
/* 80162588  90 7F 01 A8 */	stw r3, 0x1a8(r31)
/* 8016258C  80 9F 01 90 */	lwz r4, 0x190(r31)
/* 80162590  7C 1A 20 00 */	cmpw r26, r4
/* 80162594  40 82 00 14 */	bne lbl_801625A8
/* 80162598  80 7F 01 A8 */	lwz r3, 0x1a8(r31)
/* 8016259C  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 801625A0  7C 03 00 00 */	cmpw r3, r0
/* 801625A4  41 82 00 58 */	beq lbl_801625FC
lbl_801625A8:
/* 801625A8  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 801625AC  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 801625B0  1C 00 00 44 */	mulli r0, r0, 0x44
/* 801625B4  7C 63 02 14 */	add r3, r3, r0
/* 801625B8  1C 04 00 16 */	mulli r0, r4, 0x16
/* 801625BC  7C 63 02 14 */	add r3, r3, r0
/* 801625C0  80 BF 01 A8 */	lwz r5, 0x1a8(r31)
/* 801625C4  54 A0 08 3C */	slwi r0, r5, 1
/* 801625C8  7C 63 02 14 */	add r3, r3, r0
/* 801625CC  A8 03 00 18 */	lha r0, 0x18(r3)
/* 801625D0  2C 00 00 00 */	cmpwi r0, 0
/* 801625D4  41 80 00 28 */	blt lbl_801625FC
/* 801625D8  7F E3 FB 78 */	mr r3, r31
/* 801625DC  80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 801625E0  48 00 16 59 */	bl onModeChange__9dCamera_cFll
/* 801625E4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801625E8  41 82 00 14 */	beq lbl_801625FC
/* 801625EC  80 1F 01 A8 */	lwz r0, 0x1a8(r31)
/* 801625F0  90 1F 01 A4 */	stw r0, 0x1a4(r31)
/* 801625F4  38 00 00 00 */	li r0, 0
/* 801625F8  90 1F 01 74 */	stw r0, 0x174(r31)
lbl_801625FC:
/* 801625FC  7F E3 FB 78 */	mr r3, r31
/* 80162600  80 9F 01 A4 */	lwz r4, 0x1a4(r31)
/* 80162604  4B FF EE F1 */	bl ChangeModeOK__9dCamera_cFl
/* 80162608  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8016260C  40 82 00 0C */	bne lbl_80162618
/* 80162610  38 00 00 00 */	li r0, 0
/* 80162614  90 1F 01 A4 */	stw r0, 0x1a4(r31)
lbl_80162618:
/* 80162618  80 7F 06 84 */	lwz r3, 0x684(r31)
/* 8016261C  80 1F 06 8C */	lwz r0, 0x68c(r31)
/* 80162620  1C 00 00 44 */	mulli r0, r0, 0x44
/* 80162624  7C 63 02 14 */	add r3, r3, r0
/* 80162628  80 1F 01 90 */	lwz r0, 0x190(r31)
/* 8016262C  1C 00 00 16 */	mulli r0, r0, 0x16
/* 80162630  7C 63 02 14 */	add r3, r3, r0
/* 80162634  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 80162638  54 00 08 3C */	slwi r0, r0, 1
/* 8016263C  7C 63 02 14 */	add r3, r3, r0
/* 80162640  AB 23 00 18 */	lha r25, 0x18(r3)
/* 80162644  2C 19 00 00 */	cmpwi r25, 0
/* 80162648  41 80 00 40 */	blt lbl_80162688
/* 8016264C  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 80162650  7C 04 C8 00 */	cmpw r4, r25
/* 80162654  41 82 00 34 */	beq lbl_80162688
/* 80162658  7F E3 FB 78 */	mr r3, r31
/* 8016265C  7F 25 CB 78 */	mr r5, r25
/* 80162660  48 00 20 3D */	bl onStyleChange__9dCamera_cFll
/* 80162664  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80162668  41 82 00 20 */	beq lbl_80162688
/* 8016266C  93 3F 06 7C */	stw r25, 0x67c(r31)
/* 80162670  38 7F 0A EC */	addi r3, r31, 0xaec
/* 80162674  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 80162678  4B F2 5F 5D */	bl Change__11dCamParam_cFl
/* 8016267C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162680  60 00 02 00 */	ori r0, r0, 0x200
/* 80162684  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_80162688:
/* 80162688  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8016268C  54 00 00 3E */	slwi r0, r0, 0
/* 80162690  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80162694  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162698  54 03 06 6E */	rlwinm r3, r0, 0, 0x19, 0x17
/* 8016269C  90 7D 5D 7C */	stw r3, 0x5d7c(r29)
/* 801626A0  80 1F 09 40 */	lwz r0, 0x940(r31)
/* 801626A4  2C 00 FF FF */	cmpwi r0, -1
/* 801626A8  40 82 00 0C */	bne lbl_801626B4
/* 801626AC  60 60 00 80 */	ori r0, r3, 0x80
/* 801626B0  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
lbl_801626B4:
/* 801626B4  80 7D 5D 7C */	lwz r3, 0x5d7c(r29)
/* 801626B8  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 801626BC  41 82 00 0C */	beq lbl_801626C8
/* 801626C0  60 60 00 80 */	ori r0, r3, 0x80
/* 801626C4  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
lbl_801626C8:
/* 801626C8  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 801626CC  A0 03 00 06 */	lhz r0, 6(r3)
/* 801626D0  54 00 04 63 */	rlwinm. r0, r0, 0, 0x11, 0x11
/* 801626D4  41 82 00 B4 */	beq lbl_80162788
/* 801626D8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801626DC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801626E0  80 1F 01 7C */	lwz r0, 0x17c(r31)
/* 801626E4  54 00 20 36 */	slwi r0, r0, 4
/* 801626E8  7C 63 02 14 */	add r3, r3, r0
/* 801626EC  80 03 5F 18 */	lwz r0, 0x5f18(r3)
/* 801626F0  54 00 01 4B */	rlwinm. r0, r0, 0, 5, 5
/* 801626F4  40 82 00 94 */	bne lbl_80162788
/* 801626F8  80 1C 05 70 */	lwz r0, 0x570(r28)
/* 801626FC  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 80162700  40 82 00 88 */	bne lbl_80162788
/* 80162704  3B 40 00 00 */	li r26, 0
/* 80162708  7F 83 E3 78 */	mr r3, r28
/* 8016270C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 80162710  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80162714  7D 89 03 A6 */	mtctr r12
/* 80162718  4E 80 04 21 */	bctrl 
/* 8016271C  28 03 00 00 */	cmplwi r3, 0
/* 80162720  41 82 00 24 */	beq lbl_80162744
/* 80162724  7F 83 E3 78 */	mr r3, r28
/* 80162728  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 8016272C  81 8C 02 80 */	lwz r12, 0x280(r12)
/* 80162730  7D 89 03 A6 */	mtctr r12
/* 80162734  4E 80 04 21 */	bctrl 
/* 80162738  2C 03 00 00 */	cmpwi r3, 0
/* 8016273C  40 82 00 08 */	bne lbl_80162744
/* 80162740  3B 40 00 01 */	li r26, 1
lbl_80162744:
/* 80162744  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80162748  40 82 00 40 */	bne lbl_80162788
/* 8016274C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80162750  7F E4 FB 78 */	mr r4, r31
/* 80162754  48 00 39 39 */	bl forwardCheckAngle__9dCamera_cFv
/* 80162758  38 61 00 38 */	addi r3, r1, 0x38
/* 8016275C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80162760  38 BF 01 B0 */	addi r5, r31, 0x1b0
/* 80162764  48 10 EA 41 */	bl __mi__7cSAngleCFRC7cSAngle
/* 80162768  38 61 00 34 */	addi r3, r1, 0x34
/* 8016276C  38 81 00 38 */	addi r4, r1, 0x38
/* 80162770  C0 3F 0A AC */	lfs f1, 0xaac(r31)
/* 80162774  48 10 EA F1 */	bl __ml__7cSAngleCFf
/* 80162778  38 7F 01 B0 */	addi r3, r31, 0x1b0
/* 8016277C  38 81 00 34 */	addi r4, r1, 0x34
/* 80162780  48 10 EA 55 */	bl __apl__7cSAngleFRC7cSAngle
/* 80162784  48 00 00 0C */	b lbl_80162790
lbl_80162788:
/* 80162788  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 8016278C  B0 1F 01 B0 */	sth r0, 0x1b0(r31)
lbl_80162790:
/* 80162790  38 00 40 01 */	li r0, 0x4001
/* 80162794  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80162798  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8016279C  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 801627A0  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801627A4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801627A8  54 00 02 95 */	rlwinm. r0, r0, 0, 0xa, 0xa
/* 801627AC  41 82 00 58 */	beq lbl_80162804
/* 801627B0  80 7F 0A F4 */	lwz r3, 0xaf4(r31)
/* 801627B4  80 1F 06 7C */	lwz r0, 0x67c(r31)
/* 801627B8  1C 00 00 78 */	mulli r0, r0, 0x78
/* 801627BC  7C 63 02 14 */	add r3, r3, r0
/* 801627C0  A0 03 00 04 */	lhz r0, 4(r3)
/* 801627C4  2C 00 00 0A */	cmpwi r0, 0xa
/* 801627C8  41 82 00 3C */	beq lbl_80162804
/* 801627CC  88 1F 02 24 */	lbz r0, 0x224(r31)
/* 801627D0  28 00 00 00 */	cmplwi r0, 0
/* 801627D4  40 82 00 20 */	bne lbl_801627F4
/* 801627D8  C0 3F 02 AC */	lfs f1, 0x2ac(r31)
/* 801627DC  C0 02 9C E4 */	lfs f0, lit_6629(r2)
/* 801627E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801627E4  41 81 00 10 */	bgt lbl_801627F4
/* 801627E8  88 1F 03 D0 */	lbz r0, 0x3d0(r31)
/* 801627EC  28 00 00 00 */	cmplwi r0, 0
/* 801627F0  40 82 00 6C */	bne lbl_8016285C
lbl_801627F4:
/* 801627F4  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 801627F8  54 00 02 D2 */	rlwinm r0, r0, 0, 0xb, 9
/* 801627FC  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80162800  48 00 00 5C */	b lbl_8016285C
lbl_80162804:
/* 80162804  80 7F 0A F4 */	lwz r3, 0xaf4(r31)
/* 80162808  80 9F 06 7C */	lwz r4, 0x67c(r31)
/* 8016280C  1C 04 00 78 */	mulli r0, r4, 0x78
/* 80162810  7C 63 02 14 */	add r3, r3, r0
/* 80162814  A0 03 00 04 */	lhz r0, 4(r3)
/* 80162818  7F E3 FB 78 */	mr r3, r31
/* 8016281C  1C C0 00 0C */	mulli r6, r0, 0xc
/* 80162820  3C A0 80 3C */	lis r5, engine_tbl__9dCamera_c@ha
/* 80162824  38 05 A2 5C */	addi r0, r5, engine_tbl__9dCamera_c@l
/* 80162828  7D 80 32 14 */	add r12, r0, r6
/* 8016282C  48 1F F8 59 */	bl __ptmf_scall
/* 80162830  60 00 00 00 */	nop 
/* 80162834  7C 7B 1B 78 */	mr r27, r3
/* 80162838  80 7F 01 70 */	lwz r3, 0x170(r31)
/* 8016283C  38 03 00 01 */	addi r0, r3, 1
/* 80162840  90 1F 01 70 */	stw r0, 0x170(r31)
/* 80162844  80 7F 01 60 */	lwz r3, 0x160(r31)
/* 80162848  38 03 00 01 */	addi r0, r3, 1
/* 8016284C  90 1F 01 60 */	stw r0, 0x160(r31)
/* 80162850  80 7F 01 74 */	lwz r3, 0x174(r31)
/* 80162854  38 03 00 01 */	addi r0, r3, 1
/* 80162858  90 1F 01 74 */	stw r0, 0x174(r31)
lbl_8016285C:
/* 8016285C  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 80162860  38 03 00 01 */	addi r0, r3, 1
/* 80162864  90 1F 00 A8 */	stw r0, 0xa8(r31)
/* 80162868  80 7F 00 AC */	lwz r3, 0xac(r31)
/* 8016286C  38 03 00 01 */	addi r0, r3, 1
/* 80162870  90 1F 00 AC */	stw r0, 0xac(r31)
/* 80162874  57 60 06 3F */	clrlwi. r0, r27, 0x18
/* 80162878  40 82 00 0C */	bne lbl_80162884
/* 8016287C  38 00 00 00 */	li r0, 0
/* 80162880  90 1F 06 80 */	stw r0, 0x680(r31)
lbl_80162884:
/* 80162884  7F E3 FB 78 */	mr r3, r31
/* 80162888  48 00 36 6D */	bl defaultTriming__9dCamera_cFv
/* 8016288C  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162890  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80162894  40 82 00 20 */	bne lbl_801628B4
/* 80162898  38 61 00 30 */	addi r3, r1, 0x30
/* 8016289C  38 9F 00 7C */	addi r4, r31, 0x7c
/* 801628A0  C0 22 9C E8 */	lfs f1, lit_6630(r2)
/* 801628A4  48 10 E9 C1 */	bl __ml__7cSAngleCFf
/* 801628A8  38 7F 00 7C */	addi r3, r31, 0x7c
/* 801628AC  38 81 00 30 */	addi r4, r1, 0x30
/* 801628B0  48 10 E9 39 */	bl __ami__7cSAngleFRC7cSAngle
lbl_801628B4:
/* 801628B4  7F E3 FB 78 */	mr r3, r31
/* 801628B8  48 01 E4 6D */	bl shakeCamera__9dCamera_cFv
/* 801628BC  7F E3 FB 78 */	mr r3, r31
/* 801628C0  48 01 E9 C1 */	bl blureCamera__9dCamera_cFv
/* 801628C4  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 801628C8  A0 03 00 04 */	lhz r0, 4(r3)
/* 801628CC  2C 00 00 0A */	cmpwi r0, 0xa
/* 801628D0  41 82 00 D8 */	beq lbl_801629A8
/* 801628D4  80 9F 06 0C */	lwz r4, 0x60c(r31)
/* 801628D8  3C 60 FF F8 */	lis r3, 0xFFF8 /* 0xFFF7FF7F@ha */
/* 801628DC  38 03 FF 7F */	addi r0, r3, 0xFF7F /* 0xFFF7FF7F@l */
/* 801628E0  7C 80 00 38 */	and r0, r4, r0
/* 801628E4  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 801628E8  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 801628EC  A0 63 00 06 */	lhz r3, 6(r3)
/* 801628F0  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 801628F4  41 82 00 48 */	beq lbl_8016293C
/* 801628F8  80 1F 01 A4 */	lwz r0, 0x1a4(r31)
/* 801628FC  2C 00 00 01 */	cmpwi r0, 1
/* 80162900  40 82 00 18 */	bne lbl_80162918
/* 80162904  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80162908  41 82 00 10 */	beq lbl_80162918
/* 8016290C  38 00 40 07 */	li r0, 0x4007
/* 80162910  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80162914  48 00 00 38 */	b lbl_8016294C
lbl_80162918:
/* 80162918  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 8016291C  54 00 03 9D */	rlwinm. r0, r0, 0, 0xe, 0xe
/* 80162920  41 82 00 10 */	beq lbl_80162930
/* 80162924  38 00 40 37 */	li r0, 0x4037
/* 80162928  90 1F 00 88 */	stw r0, 0x88(r31)
/* 8016292C  48 00 00 20 */	b lbl_8016294C
lbl_80162930:
/* 80162930  38 00 40 17 */	li r0, 0x4017
/* 80162934  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80162938  48 00 00 14 */	b lbl_8016294C
lbl_8016293C:
/* 8016293C  54 60 07 BD */	rlwinm. r0, r3, 0, 0x1e, 0x1e
/* 80162940  41 82 00 0C */	beq lbl_8016294C
/* 80162944  38 00 40 07 */	li r0, 0x4007
/* 80162948  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_8016294C:
/* 8016294C  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 80162950  A0 03 00 06 */	lhz r0, 6(r3)
/* 80162954  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80162958  41 82 00 10 */	beq lbl_80162968
/* 8016295C  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80162960  60 00 00 80 */	ori r0, r0, 0x80
/* 80162964  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_80162968:
/* 80162968  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 8016296C  A0 03 00 06 */	lhz r0, 6(r3)
/* 80162970  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162974  41 82 00 10 */	beq lbl_80162984
/* 80162978  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 8016297C  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 80162980  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_80162984:
/* 80162984  80 1F 00 88 */	lwz r0, 0x88(r31)
/* 80162988  54 00 07 76 */	rlwinm r0, r0, 0, 0x1d, 0x1b
/* 8016298C  90 1F 00 88 */	stw r0, 0x88(r31)
/* 80162990  80 7F 0A FC */	lwz r3, 0xafc(r31)
/* 80162994  A0 03 00 06 */	lhz r0, 6(r3)
/* 80162998  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 8016299C  41 82 00 0C */	beq lbl_801629A8
/* 801629A0  38 00 00 00 */	li r0, 0
/* 801629A4  90 1F 00 88 */	stw r0, 0x88(r31)
lbl_801629A8:
/* 801629A8  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 801629AC  D0 1F 00 58 */	stfs f0, 0x58(r31)
/* 801629B0  A8 1F 00 7C */	lha r0, 0x7c(r31)
/* 801629B4  B0 1F 00 54 */	sth r0, 0x54(r31)
/* 801629B8  7F E3 FB 78 */	mr r3, r31
/* 801629BC  80 9F 00 88 */	lwz r4, 0x88(r31)
/* 801629C0  48 00 3D A5 */	bl bumpCheck__9dCamera_cFUl
/* 801629C4  38 61 00 2C */	addi r3, r1, 0x2c
/* 801629C8  38 9F 01 D4 */	addi r4, r31, 0x1d4
/* 801629CC  38 BF 02 9C */	addi r5, r31, 0x29c
/* 801629D0  48 10 E7 D5 */	bl __mi__7cSAngleCFRC7cSAngle
/* 801629D4  38 61 00 40 */	addi r3, r1, 0x40
/* 801629D8  38 81 00 2C */	addi r4, r1, 0x2c
/* 801629DC  48 10 E5 8D */	bl __ct__7cSAngleFRC7cSAngle
/* 801629E0  C0 3F 01 C4 */	lfs f1, 0x1c4(r31)
/* 801629E4  C0 1F 0A 14 */	lfs f0, 0xa14(r31)
/* 801629E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801629EC  41 80 00 60 */	blt lbl_80162A4C
/* 801629F0  38 61 00 28 */	addi r3, r1, 0x28
/* 801629F4  C0 3F 0A 18 */	lfs f1, 0xa18(r31)
/* 801629F8  48 10 E5 D1 */	bl __ct__7cSAngleFf
/* 801629FC  A8 81 00 40 */	lha r4, 0x40(r1)
/* 80162A00  A8 01 00 28 */	lha r0, 0x28(r1)
/* 80162A04  7C 80 02 78 */	xor r0, r4, r0
/* 80162A08  7C 03 0E 70 */	srawi r3, r0, 1
/* 80162A0C  7C 00 20 38 */	and r0, r0, r4
/* 80162A10  7C 00 18 50 */	subf r0, r0, r3
/* 80162A14  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80162A18  40 82 00 34 */	bne lbl_80162A4C
/* 80162A1C  38 61 00 24 */	addi r3, r1, 0x24
/* 80162A20  C0 1F 0A 18 */	lfs f0, 0xa18(r31)
/* 80162A24  FC 20 00 50 */	fneg f1, f0
/* 80162A28  48 10 E5 A1 */	bl __ct__7cSAngleFf
/* 80162A2C  A8 01 00 40 */	lha r0, 0x40(r1)
/* 80162A30  A8 81 00 24 */	lha r4, 0x24(r1)
/* 80162A34  7C 80 02 78 */	xor r0, r4, r0
/* 80162A38  7C 03 0E 70 */	srawi r3, r0, 1
/* 80162A3C  7C 00 20 38 */	and r0, r0, r4
/* 80162A40  7C 00 18 50 */	subf r0, r0, r3
/* 80162A44  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80162A48  41 82 00 0C */	beq lbl_80162A54
lbl_80162A4C:
/* 80162A4C  38 00 00 00 */	li r0, 0
/* 80162A50  98 1F 02 98 */	stb r0, 0x298(r31)
lbl_80162A54:
/* 80162A54  88 1F 02 98 */	lbz r0, 0x298(r31)
/* 80162A58  28 00 00 00 */	cmplwi r0, 0
/* 80162A5C  41 82 00 2C */	beq lbl_80162A88
/* 80162A60  38 61 00 20 */	addi r3, r1, 0x20
/* 80162A64  38 9F 01 D4 */	addi r4, r31, 0x1d4
/* 80162A68  48 10 E5 01 */	bl __ct__7cSAngleFRC7cSAngle
/* 80162A6C  38 61 00 1C */	addi r3, r1, 0x1c
/* 80162A70  7F E4 FB 78 */	mr r4, r31
/* 80162A74  38 A1 00 20 */	addi r5, r1, 0x20
/* 80162A78  48 00 26 E1 */	bl getUSOAngle__9dCamera_cF7cSAngle
/* 80162A7C  A8 01 00 1C */	lha r0, 0x1c(r1)
/* 80162A80  B0 1F 00 8C */	sth r0, 0x8c(r31)
/* 80162A84  48 00 00 20 */	b lbl_80162AA4
lbl_80162A88:
/* 80162A88  38 7F 00 2E */	addi r3, r31, 0x2e
/* 80162A8C  48 10 E6 5D */	bl Inv__7cSAngleCFv
/* 80162A90  7C 64 1B 78 */	mr r4, r3
/* 80162A94  38 61 00 18 */	addi r3, r1, 0x18
/* 80162A98  48 10 E5 01 */	bl __ct__7cSAngleFs
/* 80162A9C  A8 01 00 18 */	lha r0, 0x18(r1)
/* 80162AA0  B0 1F 00 8C */	sth r0, 0x8c(r31)
lbl_80162AA4:
/* 80162AA4  A0 1F 09 78 */	lhz r0, 0x978(r31)
/* 80162AA8  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 80162AAC  41 82 00 0C */	beq lbl_80162AB8
/* 80162AB0  7F E3 FB 78 */	mr r3, r31
/* 80162AB4  4B FF F7 FD */	bl infoReport__9dCamera_cFv
lbl_80162AB8:
/* 80162AB8  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162ABC  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162AC0  41 82 00 2C */	beq lbl_80162AEC
/* 80162AC4  38 61 00 58 */	addi r3, r1, 0x58
/* 80162AC8  38 9F 07 58 */	addi r4, r31, 0x758
/* 80162ACC  48 10 42 19 */	bl norm__4cXyzCFv
/* 80162AD0  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80162AD4  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80162AD8  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80162ADC  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80162AE0  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80162AE4  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80162AE8  48 00 00 E4 */	b lbl_80162BCC
lbl_80162AEC:
/* 80162AEC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80162AF0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80162AF4  A8 03 4E 76 */	lha r0, 0x4e76(r3)
/* 80162AF8  7C 00 07 35 */	extsh. r0, r0
/* 80162AFC  41 82 00 80 */	beq lbl_80162B7C
/* 80162B00  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80162B04  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80162B08  38 61 00 14 */	addi r3, r1, 0x14
/* 80162B0C  7C 00 00 D0 */	neg r0, r0
/* 80162B10  7C 04 07 34 */	extsh r4, r0
/* 80162B14  48 10 E4 85 */	bl __ct__7cSAngleFs
/* 80162B18  38 61 00 0C */	addi r3, r1, 0xc
/* 80162B1C  A8 81 00 14 */	lha r4, 0x14(r1)
/* 80162B20  48 10 E4 79 */	bl __ct__7cSAngleFs
/* 80162B24  A8 01 00 0C */	lha r0, 0xc(r1)
/* 80162B28  B0 01 00 48 */	sth r0, 0x48(r1)
/* 80162B2C  38 61 00 10 */	addi r3, r1, 0x10
/* 80162B30  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80162B34  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80162B38  A8 84 4E 78 */	lha r4, 0x4e78(r4)
/* 80162B3C  48 10 E4 5D */	bl __ct__7cSAngleFs
/* 80162B40  38 61 00 08 */	addi r3, r1, 8
/* 80162B44  A8 81 00 10 */	lha r4, 0x10(r1)
/* 80162B48  48 10 E4 51 */	bl __ct__7cSAngleFs
/* 80162B4C  A8 01 00 08 */	lha r0, 8(r1)
/* 80162B50  B0 01 00 4A */	sth r0, 0x4a(r1)
/* 80162B54  38 61 00 4C */	addi r3, r1, 0x4c
/* 80162B58  38 81 00 44 */	addi r4, r1, 0x44
/* 80162B5C  48 10 EB 91 */	bl Xyz__7cSPolarCFv
/* 80162B60  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80162B64  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80162B68  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80162B6C  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80162B70  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80162B74  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80162B78  48 00 00 54 */	b lbl_80162BCC
lbl_80162B7C:
/* 80162B7C  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80162B80  C0 1F 00 3C */	lfs f0, 0x3c(r31)
/* 80162B84  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80162B88  40 82 00 30 */	bne lbl_80162BB8
/* 80162B8C  C0 3F 00 38 */	lfs f1, 0x38(r31)
/* 80162B90  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 80162B94  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80162B98  40 82 00 20 */	bne lbl_80162BB8
/* 80162B9C  C0 02 9C E0 */	lfs f0, lit_6180(r2)
/* 80162BA0  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 80162BA4  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80162BA8  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80162BAC  C0 02 9C A0 */	lfs f0, lit_5656(r2)
/* 80162BB0  D0 1F 00 50 */	stfs f0, 0x50(r31)
/* 80162BB4  48 00 00 18 */	b lbl_80162BCC
lbl_80162BB8:
/* 80162BB8  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80162BBC  D0 3F 00 48 */	stfs f1, 0x48(r31)
/* 80162BC0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80162BC4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 80162BC8  D0 3F 00 50 */	stfs f1, 0x50(r31)
lbl_80162BCC:
/* 80162BCC  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162BD0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80162BD4  40 82 00 18 */	bne lbl_80162BEC
/* 80162BD8  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80162BDC  D0 3F 07 58 */	stfs f1, 0x758(r31)
/* 80162BE0  C0 02 9C A8 */	lfs f0, lit_5658(r2)
/* 80162BE4  D0 1F 07 5C */	stfs f0, 0x75c(r31)
/* 80162BE8  D0 3F 07 60 */	stfs f1, 0x760(r31)
lbl_80162BEC:
/* 80162BEC  A8 7F 09 4C */	lha r3, 0x94c(r31)
/* 80162BF0  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80162BF4  7C 03 00 00 */	cmpw r3, r0
/* 80162BF8  41 82 00 08 */	beq lbl_80162C00
/* 80162BFC  B0 7F 00 54 */	sth r3, 0x54(r31)
lbl_80162C00:
/* 80162C00  A8 0D 8C 08 */	lha r0, _0__7cSAngle(r13)
/* 80162C04  B0 1F 09 4C */	sth r0, 0x94c(r31)
/* 80162C08  7F E3 FB 78 */	mr r3, r31
/* 80162C0C  38 9F 00 3C */	addi r4, r31, 0x3c
/* 80162C10  48 00 52 E5 */	bl getWaterSurfaceHeight__9dCamera_cFP4cXyz
/* 80162C14  FF E0 08 90 */	fmr f31, f1
/* 80162C18  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80162C1C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80162C20  40 81 00 24 */	ble lbl_80162C44
/* 80162C24  38 60 00 01 */	li r3, 1
/* 80162C28  48 04 86 49 */	bl dKy_camera_water_in_status_set__FUc
/* 80162C2C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80162C30  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80162C34  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80162C38  EC 3F 00 28 */	fsubs f1, f31, f0
/* 80162C3C  48 15 3B 4D */	bl setCameraInWaterDepth__11Z2StatusMgrFf
/* 80162C40  48 00 00 1C */	b lbl_80162C5C
lbl_80162C44:
/* 80162C44  38 60 00 00 */	li r3, 0
/* 80162C48  48 04 86 29 */	bl dKy_camera_water_in_status_set__FUc
/* 80162C4C  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 80162C50  38 63 04 C4 */	addi r3, r3, 0x4c4
/* 80162C54  C0 22 9C A0 */	lfs f1, lit_5656(r2)
/* 80162C58  48 15 3B 31 */	bl setCameraInWaterDepth__11Z2StatusMgrFf
lbl_80162C5C:
/* 80162C5C  88 1F 01 58 */	lbz r0, 0x158(r31)
/* 80162C60  28 00 00 00 */	cmplwi r0, 0
/* 80162C64  41 82 00 14 */	beq lbl_80162C78
/* 80162C68  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162C6C  60 00 00 10 */	ori r0, r0, 0x10
/* 80162C70  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
/* 80162C74  48 00 00 10 */	b lbl_80162C84
lbl_80162C78:
/* 80162C78  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162C7C  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80162C80  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
lbl_80162C84:
/* 80162C84  38 7F 09 70 */	addi r3, r31, 0x970
/* 80162C88  4B F2 5D 01 */	bl PlayerHideDist__11dCamSetup_cFv
/* 80162C8C  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80162C90  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80162C94  40 80 00 34 */	bge lbl_80162CC8
/* 80162C98  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 80162C9C  54 60 AF FF */	rlwinm. r0, r3, 0x15, 0x1f, 0x1f
/* 80162CA0  41 82 00 14 */	beq lbl_80162CB4
/* 80162CA4  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162CA8  60 00 00 02 */	ori r0, r0, 2
/* 80162CAC  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
/* 80162CB0  48 00 00 18 */	b lbl_80162CC8
lbl_80162CB4:
/* 80162CB4  54 60 00 C7 */	rlwinm. r0, r3, 0, 3, 3
/* 80162CB8  41 82 00 10 */	beq lbl_80162CC8
/* 80162CBC  80 1D 5D 7C */	lwz r0, 0x5d7c(r29)
/* 80162CC0  60 00 00 20 */	ori r0, r0, 0x20
/* 80162CC4  90 1D 5D 7C */	stw r0, 0x5d7c(r29)
lbl_80162CC8:
/* 80162CC8  7F E3 FB 78 */	mr r3, r31
/* 80162CCC  48 01 DA 6D */	bl runEventRecoveryTrans__9dCamera_cFv
/* 80162CD0  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80162CD4  54 00 05 24 */	rlwinm r0, r0, 0, 0x14, 0x12
/* 80162CD8  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80162CDC  38 60 00 FF */	li r3, 0xff
/* 80162CE0  90 7F 08 8C */	stw r3, 0x88c(r31)
/* 80162CE4  90 7F 08 90 */	stw r3, 0x890(r31)
/* 80162CE8  38 00 00 00 */	li r0, 0
/* 80162CEC  98 1F 08 9A */	stb r0, 0x89a(r31)
/* 80162CF0  90 1F 08 94 */	stw r0, 0x894(r31)
/* 80162CF4  98 7F 08 9B */	stb r3, 0x89b(r31)
/* 80162CF8  B0 7F 08 98 */	sth r3, 0x898(r31)
/* 80162CFC  90 7F 08 C8 */	stw r3, 0x8c8(r31)
/* 80162D00  90 7F 08 CC */	stw r3, 0x8cc(r31)
/* 80162D04  98 1F 08 D6 */	stb r0, 0x8d6(r31)
/* 80162D08  90 1F 08 D0 */	stw r0, 0x8d0(r31)
/* 80162D0C  98 7F 08 D7 */	stb r3, 0x8d7(r31)
/* 80162D10  B0 7F 08 D4 */	sth r3, 0x8d4(r31)
/* 80162D14  7F 63 DB 78 */	mr r3, r27
/* 80162D18  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80162D1C  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80162D20  39 61 00 90 */	addi r11, r1, 0x90
/* 80162D24  48 1F F4 F5 */	bl _restgpr_25
/* 80162D28  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80162D2C  7C 08 03 A6 */	mtlr r0
/* 80162D30  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80162D34  4E 80 00 20 */	blr 
