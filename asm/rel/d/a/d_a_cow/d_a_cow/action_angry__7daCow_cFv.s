lbl_8065D2F0:
/* 8065D2F0  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8065D2F4  7C 08 02 A6 */	mflr r0
/* 8065D2F8  90 01 01 14 */	stw r0, 0x114(r1)
/* 8065D2FC  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 8065D300  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 8065D304  39 61 01 00 */	addi r11, r1, 0x100
/* 8065D308  4B D0 4E C0 */	b _savegpr_24
/* 8065D30C  7C 78 1B 78 */	mr r24, r3
/* 8065D310  3C 80 80 66 */	lis r4, cNullVec__6Z2Calc@ha
/* 8065D314  3B A4 2F 58 */	addi r29, r4, cNullVec__6Z2Calc@l
/* 8065D318  3C 80 80 66 */	lis r4, lit_3987@ha
/* 8065D31C  3B C4 2D B0 */	addi r30, r4, lit_3987@l
/* 8065D320  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8065D324  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l
/* 8065D328  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 8065D32C  7F 64 DB 78 */	mr r4, r27
/* 8065D330  4B 9B D4 B0 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065D334  FF E0 08 90 */	fmr f31, f1
/* 8065D338  7F 03 C3 78 */	mr r3, r24
/* 8065D33C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065D340  4B 9B D3 D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065D344  7C 7C 1B 78 */	mr r28, r3
/* 8065D348  3B 40 00 00 */	li r26, 0
/* 8065D34C  A0 18 0C 5C */	lhz r0, 0xc5c(r24)
/* 8065D350  2C 00 00 02 */	cmpwi r0, 2
/* 8065D354  41 82 08 94 */	beq lbl_8065DBE8
/* 8065D358  40 80 00 14 */	bge lbl_8065D36C
/* 8065D35C  2C 00 00 00 */	cmpwi r0, 0
/* 8065D360  41 82 00 18 */	beq lbl_8065D378
/* 8065D364  40 80 00 BC */	bge lbl_8065D420
/* 8065D368  48 00 08 80 */	b lbl_8065DBE8
lbl_8065D36C:
/* 8065D36C  2C 00 00 04 */	cmpwi r0, 4
/* 8065D370  40 80 08 78 */	bge lbl_8065DBE8
/* 8065D374  48 00 08 48 */	b lbl_8065DBBC
lbl_8065D378:
/* 8065D378  7F 03 C3 78 */	mr r3, r24
/* 8065D37C  38 80 00 01 */	li r4, 1
/* 8065D380  4B FF B2 4D */	bl calcRunAnime__7daCow_cFi
/* 8065D384  38 60 00 01 */	li r3, 1
/* 8065D388  B0 78 0C 5C */	sth r3, 0xc5c(r24)
/* 8065D38C  88 18 0C A0 */	lbz r0, 0xca0(r24)
/* 8065D390  28 00 00 00 */	cmplwi r0, 0
/* 8065D394  41 82 00 0C */	beq lbl_8065D3A0
/* 8065D398  98 78 0C 9F */	stb r3, 0xc9f(r24)
/* 8065D39C  48 00 00 18 */	b lbl_8065D3B4
lbl_8065D3A0:
/* 8065D3A0  38 00 00 00 */	li r0, 0
/* 8065D3A4  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065D3A8  38 00 00 14 */	li r0, 0x14
/* 8065D3AC  90 18 0C 90 */	stw r0, 0xc90(r24)
/* 8065D3B0  98 78 0C A0 */	stb r3, 0xca0(r24)
lbl_8065D3B4:
/* 8065D3B4  38 00 00 C8 */	li r0, 0xc8
/* 8065D3B8  90 18 0C 98 */	stw r0, 0xc98(r24)
/* 8065D3BC  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8065D3C0  D0 18 0C B0 */	stfs f0, 0xcb0(r24)
/* 8065D3C4  38 00 00 00 */	li r0, 0
/* 8065D3C8  98 18 0C B4 */	stb r0, 0xcb4(r24)
/* 8065D3CC  88 18 0C A1 */	lbz r0, 0xca1(r24)
/* 8065D3D0  28 00 00 00 */	cmplwi r0, 0
/* 8065D3D4  40 82 00 10 */	bne lbl_8065D3E4
/* 8065D3D8  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 8065D3DC  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 8065D3E0  48 00 00 0C */	b lbl_8065D3EC
lbl_8065D3E4:
/* 8065D3E4  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8065D3E8  D0 18 05 2C */	stfs f0, 0x52c(r24)
lbl_8065D3EC:
/* 8065D3EC  3C 60 00 05 */	lis r3, 0x0005 /* 0x00050078@ha */
/* 8065D3F0  38 03 00 78 */	addi r0, r3, 0x0078 /* 0x00050078@l */
/* 8065D3F4  90 01 00 08 */	stw r0, 8(r1)
/* 8065D3F8  38 78 05 7C */	addi r3, r24, 0x57c
/* 8065D3FC  38 81 00 08 */	addi r4, r1, 8
/* 8065D400  38 A0 FF FF */	li r5, -1
/* 8065D404  81 98 05 7C */	lwz r12, 0x57c(r24)
/* 8065D408  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8065D40C  7D 89 03 A6 */	mtctr r12
/* 8065D410  4E 80 04 21 */	bctrl 
/* 8065D414  38 00 00 00 */	li r0, 0
/* 8065D418  90 18 0C 84 */	stw r0, 0xc84(r24)
/* 8065D41C  48 00 07 CC */	b lbl_8065DBE8
lbl_8065D420:
/* 8065D420  7F 03 C3 78 */	mr r3, r24
/* 8065D424  4B FF B8 AD */	bl setSeSnort__7daCow_cFv
/* 8065D428  7F 63 DB 78 */	mr r3, r27
/* 8065D42C  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8065D430  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8065D434  7D 89 03 A6 */	mtctr r12
/* 8065D438  4E 80 04 21 */	bctrl 
/* 8065D43C  28 03 00 00 */	cmplwi r3, 0
/* 8065D440  40 82 00 14 */	bne lbl_8065D454
/* 8065D444  80 18 05 5C */	lwz r0, 0x55c(r24)
/* 8065D448  60 00 00 01 */	ori r0, r0, 1
/* 8065D44C  90 18 05 5C */	stw r0, 0x55c(r24)
/* 8065D450  48 00 00 10 */	b lbl_8065D460
lbl_8065D454:
/* 8065D454  80 18 05 5C */	lwz r0, 0x55c(r24)
/* 8065D458  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065D45C  90 18 05 5C */	stw r0, 0x55c(r24)
lbl_8065D460:
/* 8065D460  88 18 0C 9F */	lbz r0, 0xc9f(r24)
/* 8065D464  28 00 00 01 */	cmplwi r0, 1
/* 8065D468  40 82 00 0C */	bne lbl_8065D474
/* 8065D46C  7F 03 C3 78 */	mr r3, r24
/* 8065D470  4B FF B6 A1 */	bl setCarryStatus__7daCow_cFv
lbl_8065D474:
/* 8065D474  7F 03 C3 78 */	mr r3, r24
/* 8065D478  4B FF B9 41 */	bl checkThrow__7daCow_cFv
/* 8065D47C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D480  41 82 00 40 */	beq lbl_8065D4C0
/* 8065D484  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065D488  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 8065D48C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8065D490  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8065D494  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8065D498  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065D49C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065D4A0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8065D4A4  38 80 00 04 */	li r4, 4
/* 8065D4A8  38 A0 00 1F */	li r5, 0x1f
/* 8065D4AC  38 C1 00 48 */	addi r6, r1, 0x48
/* 8065D4B0  4B A1 25 74 */	b StartShock__12dVibration_cFii4cXyz
/* 8065D4B4  38 00 00 01 */	li r0, 1
/* 8065D4B8  98 18 0C 9E */	stb r0, 0xc9e(r24)
/* 8065D4BC  48 00 07 2C */	b lbl_8065DBE8
lbl_8065D4C0:
/* 8065D4C0  80 78 0C 84 */	lwz r3, 0xc84(r24)
/* 8065D4C4  2C 03 00 00 */	cmpwi r3, 0
/* 8065D4C8  40 82 01 48 */	bne lbl_8065D610
/* 8065D4CC  7F 63 DB 78 */	mr r3, r27
/* 8065D4D0  81 9B 06 28 */	lwz r12, 0x628(r27)
/* 8065D4D4  81 8C 01 88 */	lwz r12, 0x188(r12)
/* 8065D4D8  7D 89 03 A6 */	mtctr r12
/* 8065D4DC  4E 80 04 21 */	bctrl 
/* 8065D4E0  28 03 00 00 */	cmplwi r3, 0
/* 8065D4E4  40 82 01 34 */	bne lbl_8065D618
/* 8065D4E8  38 78 08 60 */	addi r3, r24, 0x860
/* 8065D4EC  4B A2 71 6C */	b ChkCoHit__12dCcD_GObjInfFv
/* 8065D4F0  28 03 00 00 */	cmplwi r3, 0
/* 8065D4F4  41 82 01 24 */	beq lbl_8065D618
/* 8065D4F8  38 78 08 60 */	addi r3, r24, 0x860
/* 8065D4FC  4B A2 71 F4 */	b GetCoHitObj__12dCcD_GObjInfFv
/* 8065D500  4B C0 65 48 */	b GetAc__8cCcD_ObjFv
/* 8065D504  A8 03 00 08 */	lha r0, 8(r3)
/* 8065D508  2C 00 00 FD */	cmpwi r0, 0xfd
/* 8065D50C  40 82 01 0C */	bne lbl_8065D618
/* 8065D510  AB 38 04 E6 */	lha r25, 0x4e6(r24)
/* 8065D514  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8065D518  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8065D51C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8065D520  C0 23 04 D4 */	lfs f1, 0x4d4(r3)
/* 8065D524  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 8065D528  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8065D52C  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8065D530  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 8065D534  EC 01 00 2A */	fadds f0, f1, f0
/* 8065D538  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8065D53C  38 61 00 60 */	addi r3, r1, 0x60
/* 8065D540  4B 9A F8 24 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 8065D544  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065D548  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065D54C  A8 98 04 E6 */	lha r4, 0x4e6(r24)
/* 8065D550  4B 9A EE E4 */	b mDoMtx_YrotM__FPA4_fs
/* 8065D554  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065D558  FC 40 08 90 */	fmr f2, f1
/* 8065D55C  C0 7E 00 C8 */	lfs f3, 0xc8(r30)
/* 8065D560  4B 9A F8 3C */	b transM__14mDoMtx_stack_cFfff
/* 8065D564  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8065D568  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8065D56C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8065D570  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8065D574  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8065D578  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8065D57C  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8065D580  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8065D584  38 61 00 6C */	addi r3, r1, 0x6c
/* 8065D588  4B A1 A6 E0 */	b __ct__11dBgS_LinChkFv
/* 8065D58C  38 61 00 6C */	addi r3, r1, 0x6c
/* 8065D590  38 81 00 60 */	addi r4, r1, 0x60
/* 8065D594  38 A1 00 54 */	addi r5, r1, 0x54
/* 8065D598  7F 06 C3 78 */	mr r6, r24
/* 8065D59C  4B A1 A7 C8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8065D5A0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065D5A4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065D5A8  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8065D5AC  38 81 00 6C */	addi r4, r1, 0x6c
/* 8065D5B0  4B A1 6E 04 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8065D5B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D5B8  41 82 00 14 */	beq lbl_8065D5CC
/* 8065D5BC  A8 78 04 E6 */	lha r3, 0x4e6(r24)
/* 8065D5C0  3C 63 00 01 */	addis r3, r3, 1
/* 8065D5C4  38 03 80 00 */	addi r0, r3, -32768
/* 8065D5C8  7C 19 07 34 */	extsh r25, r0
lbl_8065D5CC:
/* 8065D5CC  38 00 00 1E */	li r0, 0x1e
/* 8065D5D0  90 18 0C 84 */	stw r0, 0xc84(r24)
/* 8065D5D4  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8065D5D8  7F 24 CB 78 */	mr r4, r25
/* 8065D5DC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 8065D5E0  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 8065D5E4  38 A0 00 00 */	li r5, 0
/* 8065D5E8  38 C0 00 00 */	li r6, 0
/* 8065D5EC  38 E0 00 00 */	li r7, 0
/* 8065D5F0  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8065D5F4  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 8065D5F8  7D 89 03 A6 */	mtctr r12
/* 8065D5FC  4E 80 04 21 */	bctrl 
/* 8065D600  38 61 00 6C */	addi r3, r1, 0x6c
/* 8065D604  38 80 FF FF */	li r4, -1
/* 8065D608  4B A1 A6 D4 */	b __dt__11dBgS_LinChkFv
/* 8065D60C  48 00 00 0C */	b lbl_8065D618
lbl_8065D610:
/* 8065D610  38 03 FF FF */	addi r0, r3, -1
/* 8065D614  90 18 0C 84 */	stw r0, 0xc84(r24)
lbl_8065D618:
/* 8065D618  80 78 0C 98 */	lwz r3, 0xc98(r24)
/* 8065D61C  2C 03 00 00 */	cmpwi r3, 0
/* 8065D620  41 82 00 10 */	beq lbl_8065D630
/* 8065D624  38 03 FF FF */	addi r0, r3, -1
/* 8065D628  90 18 0C 98 */	stw r0, 0xc98(r24)
/* 8065D62C  48 00 00 44 */	b lbl_8065D670
lbl_8065D630:
/* 8065D630  88 18 0C 9F */	lbz r0, 0xc9f(r24)
/* 8065D634  28 00 00 05 */	cmplwi r0, 5
/* 8065D638  41 82 00 38 */	beq lbl_8065D670
/* 8065D63C  80 7D 02 D4 */	lwz r3, 0x2d4(r29)
/* 8065D640  80 1D 02 D8 */	lwz r0, 0x2d8(r29)
/* 8065D644  90 61 00 3C */	stw r3, 0x3c(r1)
/* 8065D648  90 01 00 40 */	stw r0, 0x40(r1)
/* 8065D64C  80 1D 02 DC */	lwz r0, 0x2dc(r29)
/* 8065D650  90 01 00 44 */	stw r0, 0x44(r1)
/* 8065D654  7F 03 C3 78 */	mr r3, r24
/* 8065D658  38 81 00 3C */	addi r4, r1, 0x3c
/* 8065D65C  38 A0 00 00 */	li r5, 0
/* 8065D660  4B FF BA B5 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065D664  38 00 00 01 */	li r0, 1
/* 8065D668  98 18 0C 9E */	stb r0, 0xc9e(r24)
/* 8065D66C  48 00 05 7C */	b lbl_8065DBE8
lbl_8065D670:
/* 8065D670  80 78 0C 94 */	lwz r3, 0xc94(r24)
/* 8065D674  2C 03 00 00 */	cmpwi r3, 0
/* 8065D678  41 82 00 0C */	beq lbl_8065D684
/* 8065D67C  38 03 FF FF */	addi r0, r3, -1
/* 8065D680  90 18 0C 94 */	stw r0, 0xc94(r24)
lbl_8065D684:
/* 8065D684  80 78 0C 90 */	lwz r3, 0xc90(r24)
/* 8065D688  2C 03 00 00 */	cmpwi r3, 0
/* 8065D68C  41 82 00 0C */	beq lbl_8065D698
/* 8065D690  38 03 FF FF */	addi r0, r3, -1
/* 8065D694  90 18 0C 90 */	stw r0, 0xc90(r24)
lbl_8065D698:
/* 8065D698  7F 03 C3 78 */	mr r3, r24
/* 8065D69C  4B FF FB 95 */	bl setRedTev__7daCow_cFv
/* 8065D6A0  7F 03 C3 78 */	mr r3, r24
/* 8065D6A4  38 80 40 00 */	li r4, 0x4000
/* 8065D6A8  4B FF E4 8D */	bl checkCowInOwn__7daCow_cFi
/* 8065D6AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D6B0  40 82 05 38 */	bne lbl_8065DBE8
/* 8065D6B4  88 18 0C A1 */	lbz r0, 0xca1(r24)
/* 8065D6B8  28 00 00 00 */	cmplwi r0, 0
/* 8065D6BC  41 82 00 94 */	beq lbl_8065D750
/* 8065D6C0  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 8065D6C4  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 8065D6C8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8065D6CC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8065D6D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8065D6D4  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 8065D6D8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 8065D6DC  7F 03 C3 78 */	mr r3, r24
/* 8065D6E0  38 81 00 30 */	addi r4, r1, 0x30
/* 8065D6E4  4B FF E0 7D */	bl checkOutOfGate__7daCow_cF4cXyz
/* 8065D6E8  2C 03 00 00 */	cmpwi r3, 0
/* 8065D6EC  40 82 00 30 */	bne lbl_8065D71C
/* 8065D6F0  C0 18 04 D0 */	lfs f0, 0x4d0(r24)
/* 8065D6F4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8065D6F8  C0 18 04 D4 */	lfs f0, 0x4d4(r24)
/* 8065D6FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8065D700  C0 18 04 D8 */	lfs f0, 0x4d8(r24)
/* 8065D704  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8065D708  7F 03 C3 78 */	mr r3, r24
/* 8065D70C  38 81 00 24 */	addi r4, r1, 0x24
/* 8065D710  4B FF E0 51 */	bl checkOutOfGate__7daCow_cF4cXyz
/* 8065D714  2C 03 00 00 */	cmpwi r3, 0
/* 8065D718  41 82 00 38 */	beq lbl_8065D750
lbl_8065D71C:
/* 8065D71C  80 7D 02 E0 */	lwz r3, 0x2e0(r29)
/* 8065D720  80 1D 02 E4 */	lwz r0, 0x2e4(r29)
/* 8065D724  90 61 00 18 */	stw r3, 0x18(r1)
/* 8065D728  90 01 00 1C */	stw r0, 0x1c(r1)
/* 8065D72C  80 1D 02 E8 */	lwz r0, 0x2e8(r29)
/* 8065D730  90 01 00 20 */	stw r0, 0x20(r1)
/* 8065D734  7F 03 C3 78 */	mr r3, r24
/* 8065D738  38 81 00 18 */	addi r4, r1, 0x18
/* 8065D73C  38 A0 00 00 */	li r5, 0
/* 8065D740  4B FF B9 D5 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065D744  38 00 00 01 */	li r0, 1
/* 8065D748  98 18 0C 9E */	stb r0, 0xc9e(r24)
/* 8065D74C  48 00 04 9C */	b lbl_8065DBE8
lbl_8065D750:
/* 8065D750  88 18 0C 9F */	lbz r0, 0xc9f(r24)
/* 8065D754  2C 00 00 03 */	cmpwi r0, 3
/* 8065D758  41 82 03 24 */	beq lbl_8065DA7C
/* 8065D75C  40 80 00 1C */	bge lbl_8065D778
/* 8065D760  2C 00 00 01 */	cmpwi r0, 1
/* 8065D764  41 82 00 98 */	beq lbl_8065D7FC
/* 8065D768  40 80 02 A4 */	bge lbl_8065DA0C
/* 8065D76C  2C 00 00 00 */	cmpwi r0, 0
/* 8065D770  40 80 00 18 */	bge lbl_8065D788
/* 8065D774  48 00 04 34 */	b lbl_8065DBA8
lbl_8065D778:
/* 8065D778  2C 00 00 05 */	cmpwi r0, 5
/* 8065D77C  41 82 03 B0 */	beq lbl_8065DB2C
/* 8065D780  40 80 04 28 */	bge lbl_8065DBA8
/* 8065D784  48 00 02 E0 */	b lbl_8065DA64
lbl_8065D788:
/* 8065D788  7F 03 C3 78 */	mr r3, r24
/* 8065D78C  38 80 00 00 */	li r4, 0
/* 8065D790  4B FF AE 3D */	bl calcRunAnime__7daCow_cFi
/* 8065D794  38 00 00 01 */	li r0, 1
/* 8065D798  98 18 0C B5 */	stb r0, 0xcb5(r24)
/* 8065D79C  3B 40 20 00 */	li r26, 0x2000
/* 8065D7A0  7F 03 C3 78 */	mr r3, r24
/* 8065D7A4  38 80 00 00 */	li r4, 0
/* 8065D7A8  4B FF F9 D5 */	bl checkBeforeBgAngry__7daCow_cFs
/* 8065D7AC  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D7B0  41 82 00 18 */	beq lbl_8065D7C8
/* 8065D7B4  A8 18 0C 34 */	lha r0, 0xc34(r24)
/* 8065D7B8  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 8065D7BC  38 00 00 02 */	li r0, 2
/* 8065D7C0  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065D7C4  48 00 00 18 */	b lbl_8065D7DC
lbl_8065D7C8:
/* 8065D7C8  80 18 0C 90 */	lwz r0, 0xc90(r24)
/* 8065D7CC  2C 00 00 00 */	cmpwi r0, 0
/* 8065D7D0  40 82 00 0C */	bne lbl_8065D7DC
/* 8065D7D4  38 00 00 01 */	li r0, 1
/* 8065D7D8  98 18 0C 9F */	stb r0, 0xc9f(r24)
lbl_8065D7DC:
/* 8065D7DC  38 78 04 E6 */	addi r3, r24, 0x4e6
/* 8065D7E0  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 8065D7E4  38 A0 00 08 */	li r5, 8
/* 8065D7E8  38 C0 08 00 */	li r6, 0x800
/* 8065D7EC  4B C1 2E 1C */	b cLib_addCalcAngleS2__FPssss
/* 8065D7F0  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 8065D7F4  B0 18 0C 34 */	sth r0, 0xc34(r24)
/* 8065D7F8  48 00 03 B0 */	b lbl_8065DBA8
lbl_8065D7FC:
/* 8065D7FC  7F 03 C3 78 */	mr r3, r24
/* 8065D800  38 80 00 00 */	li r4, 0
/* 8065D804  4B FF AD C9 */	bl calcRunAnime__7daCow_cFi
/* 8065D808  38 00 00 01 */	li r0, 1
/* 8065D80C  98 18 0C B5 */	stb r0, 0xcb5(r24)
/* 8065D810  3B 40 20 00 */	li r26, 0x2000
/* 8065D814  C0 3E 00 D8 */	lfs f1, 0xd8(r30)
/* 8065D818  C0 5B 05 2C */	lfs f2, 0x52c(r27)
/* 8065D81C  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8065D820  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8065D824  4C 41 13 82 */	cror 2, 1, 2
/* 8065D828  40 82 00 3C */	bne lbl_8065D864
/* 8065D82C  C0 1E 00 00 */	lfs f0, 0(r30)
/* 8065D830  EC 20 10 2A */	fadds f1, f0, f2
/* 8065D834  88 18 0C A1 */	lbz r0, 0xca1(r24)
/* 8065D838  28 00 00 00 */	cmplwi r0, 0
/* 8065D83C  40 82 00 18 */	bne lbl_8065D854
/* 8065D840  C0 1E 00 EC */	lfs f0, 0xec(r30)
/* 8065D844  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065D848  40 81 00 1C */	ble lbl_8065D864
/* 8065D84C  FC 20 00 90 */	fmr f1, f0
/* 8065D850  48 00 00 14 */	b lbl_8065D864
lbl_8065D854:
/* 8065D854  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 8065D858  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065D85C  40 81 00 08 */	ble lbl_8065D864
/* 8065D860  FC 20 00 90 */	fmr f1, f0
lbl_8065D864:
/* 8065D864  38 78 05 2C */	addi r3, r24, 0x52c
/* 8065D868  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 8065D86C  4B C1 2E D4 */	b cLib_chaseF__FPfff
/* 8065D870  7F 03 C3 78 */	mr r3, r24
/* 8065D874  38 80 60 00 */	li r4, 0x6000
/* 8065D878  4B FF F9 05 */	bl checkBeforeBgAngry__7daCow_cFs
/* 8065D87C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D880  41 82 00 18 */	beq lbl_8065D898
/* 8065D884  A8 18 0C 34 */	lha r0, 0xc34(r24)
/* 8065D888  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 8065D88C  38 00 00 02 */	li r0, 2
/* 8065D890  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065D894  48 00 03 54 */	b lbl_8065DBE8
lbl_8065D898:
/* 8065D898  80 18 0C 94 */	lwz r0, 0xc94(r24)
/* 8065D89C  2C 00 00 00 */	cmpwi r0, 0
/* 8065D8A0  41 82 00 10 */	beq lbl_8065D8B0
/* 8065D8A4  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 8065D8A8  B0 18 0C 72 */	sth r0, 0xc72(r24)
/* 8065D8AC  48 00 00 A4 */	b lbl_8065D950
lbl_8065D8B0:
/* 8065D8B0  B3 98 0C 72 */	sth r28, 0xc72(r24)
/* 8065D8B4  7F 83 E3 78 */	mr r3, r28
/* 8065D8B8  A8 98 0C 34 */	lha r4, 0xc34(r24)
/* 8065D8BC  4B C1 35 68 */	b cLib_distanceAngleS__Fss
/* 8065D8C0  7C 60 07 34 */	extsh r0, r3
/* 8065D8C4  C0 3B 05 2C */	lfs f1, 0x52c(r27)
/* 8065D8C8  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8065D8CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8065D8D0  40 81 00 3C */	ble lbl_8065D90C
/* 8065D8D4  C0 1E 00 F8 */	lfs f0, 0xf8(r30)
/* 8065D8D8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065D8DC  40 80 00 10 */	bge lbl_8065D8EC
/* 8065D8E0  38 00 00 0A */	li r0, 0xa
/* 8065D8E4  90 18 0C 94 */	stw r0, 0xc94(r24)
/* 8065D8E8  48 00 00 68 */	b lbl_8065D950
lbl_8065D8EC:
/* 8065D8EC  C0 1E 00 FC */	lfs f0, 0xfc(r30)
/* 8065D8F0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065D8F4  40 80 00 5C */	bge lbl_8065D950
/* 8065D8F8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 8065D8FC  41 80 00 54 */	blt lbl_8065D950
/* 8065D900  7F 03 C3 78 */	mr r3, r24
/* 8065D904  4B FF F9 99 */	bl setAngryTurn__7daCow_cFv
/* 8065D908  48 00 02 E0 */	b lbl_8065DBE8
lbl_8065D90C:
/* 8065D90C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 8065D910  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065D914  40 80 00 10 */	bge lbl_8065D924
/* 8065D918  38 00 00 23 */	li r0, 0x23
/* 8065D91C  90 18 0C 94 */	stw r0, 0xc94(r24)
/* 8065D920  48 00 00 30 */	b lbl_8065D950
lbl_8065D924:
/* 8065D924  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8065D928  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8065D92C  4C 41 13 82 */	cror 2, 1, 2
/* 8065D930  40 82 00 20 */	bne lbl_8065D950
/* 8065D934  2C 00 58 00 */	cmpwi r0, 0x5800
/* 8065D938  41 80 00 18 */	blt lbl_8065D950
/* 8065D93C  A8 18 0C 34 */	lha r0, 0xc34(r24)
/* 8065D940  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 8065D944  38 00 00 02 */	li r0, 2
/* 8065D948  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065D94C  48 00 02 9C */	b lbl_8065DBE8
lbl_8065D950:
/* 8065D950  3B 60 00 00 */	li r27, 0
/* 8065D954  88 18 0C A1 */	lbz r0, 0xca1(r24)
/* 8065D958  28 00 00 00 */	cmplwi r0, 0
/* 8065D95C  41 82 00 60 */	beq lbl_8065D9BC
/* 8065D960  80 18 0C 94 */	lwz r0, 0xc94(r24)
/* 8065D964  2C 00 00 00 */	cmpwi r0, 0
/* 8065D968  41 82 00 54 */	beq lbl_8065D9BC
/* 8065D96C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8065D970  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8065D974  3B 23 56 B8 */	addi r25, r3, 0x56b8
/* 8065D978  7F 23 CB 78 */	mr r3, r25
/* 8065D97C  4B A1 5E 68 */	b LockonTruth__12dAttention_cFv
/* 8065D980  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065D984  41 82 00 38 */	beq lbl_8065D9BC
/* 8065D988  7F 23 CB 78 */	mr r3, r25
/* 8065D98C  38 80 00 00 */	li r4, 0
/* 8065D990  4B A1 5B AC */	b LockonTarget__12dAttention_cFl
/* 8065D994  7C 03 C0 40 */	cmplw r3, r24
/* 8065D998  40 82 00 24 */	bne lbl_8065D9BC
/* 8065D99C  7F 83 E3 78 */	mr r3, r28
/* 8065D9A0  A8 98 0C 34 */	lha r4, 0xc34(r24)
/* 8065D9A4  4B C1 34 80 */	b cLib_distanceAngleS__Fss
/* 8065D9A8  7C 60 07 34 */	extsh r0, r3
/* 8065D9AC  2C 00 08 00 */	cmpwi r0, 0x800
/* 8065D9B0  40 80 00 0C */	bge lbl_8065D9BC
/* 8065D9B4  B3 98 0C 72 */	sth r28, 0xc72(r24)
/* 8065D9B8  3B 60 00 01 */	li r27, 1
lbl_8065D9BC:
/* 8065D9BC  2C 1B 00 00 */	cmpwi r27, 0
/* 8065D9C0  41 82 00 18 */	beq lbl_8065D9D8
/* 8065D9C4  38 78 04 DE */	addi r3, r24, 0x4de
/* 8065D9C8  A8 98 0C 72 */	lha r4, 0xc72(r24)
/* 8065D9CC  38 A0 08 00 */	li r5, 0x800
/* 8065D9D0  4B C1 31 C0 */	b cLib_chaseAngleS__FPsss
/* 8065D9D4  48 00 00 18 */	b lbl_8065D9EC
lbl_8065D9D8:
/* 8065D9D8  38 78 04 DE */	addi r3, r24, 0x4de
/* 8065D9DC  A8 98 0C 72 */	lha r4, 0xc72(r24)
/* 8065D9E0  38 A0 00 10 */	li r5, 0x10
/* 8065D9E4  38 C0 04 00 */	li r6, 0x400
/* 8065D9E8  4B C1 2C 20 */	b cLib_addCalcAngleS2__FPssss
lbl_8065D9EC:
/* 8065D9EC  38 78 04 E6 */	addi r3, r24, 0x4e6
/* 8065D9F0  A8 98 04 DE */	lha r4, 0x4de(r24)
/* 8065D9F4  38 A0 00 04 */	li r5, 4
/* 8065D9F8  38 C0 08 00 */	li r6, 0x800
/* 8065D9FC  4B C1 2C 0C */	b cLib_addCalcAngleS2__FPssss
/* 8065DA00  A8 18 04 E6 */	lha r0, 0x4e6(r24)
/* 8065DA04  B0 18 0C 34 */	sth r0, 0xc34(r24)
/* 8065DA08  48 00 01 A0 */	b lbl_8065DBA8
lbl_8065DA0C:
/* 8065DA0C  7F 03 C3 78 */	mr r3, r24
/* 8065DA10  38 80 00 00 */	li r4, 0
/* 8065DA14  4B FF AB B9 */	bl calcRunAnime__7daCow_cFi
/* 8065DA18  7F 03 C3 78 */	mr r3, r24
/* 8065DA1C  38 80 00 00 */	li r4, 0
/* 8065DA20  4B FF F7 5D */	bl checkBeforeBgAngry__7daCow_cFs
/* 8065DA24  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8065DA28  41 82 00 0C */	beq lbl_8065DA34
/* 8065DA2C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065DA30  D0 18 05 2C */	stfs f0, 0x52c(r24)
lbl_8065DA34:
/* 8065DA34  38 78 05 2C */	addi r3, r24, 0x52c
/* 8065DA38  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065DA3C  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 8065DA40  4B C1 2D 00 */	b cLib_chaseF__FPfff
/* 8065DA44  2C 03 00 00 */	cmpwi r3, 0
/* 8065DA48  41 82 01 60 */	beq lbl_8065DBA8
/* 8065DA4C  38 00 00 03 */	li r0, 3
/* 8065DA50  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065DA54  B3 98 0C 72 */	sth r28, 0xc72(r24)
/* 8065DA58  A8 18 0C 34 */	lha r0, 0xc34(r24)
/* 8065DA5C  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 8065DA60  48 00 01 48 */	b lbl_8065DBA8
lbl_8065DA64:
/* 8065DA64  7F 03 C3 78 */	mr r3, r24
/* 8065DA68  38 80 00 00 */	li r4, 0
/* 8065DA6C  4B FF AB 61 */	bl calcRunAnime__7daCow_cFi
/* 8065DA70  80 18 0C 90 */	lwz r0, 0xc90(r24)
/* 8065DA74  2C 00 00 00 */	cmpwi r0, 0
/* 8065DA78  40 82 01 30 */	bne lbl_8065DBA8
lbl_8065DA7C:
/* 8065DA7C  7F 03 C3 78 */	mr r3, r24
/* 8065DA80  38 80 00 00 */	li r4, 0
/* 8065DA84  4B FF AB 49 */	bl calcRunAnime__7daCow_cFi
/* 8065DA88  C0 1E 00 F4 */	lfs f0, 0xf4(r30)
/* 8065DA8C  D0 18 05 2C */	stfs f0, 0x52c(r24)
/* 8065DA90  38 78 04 DE */	addi r3, r24, 0x4de
/* 8065DA94  A8 98 0C 72 */	lha r4, 0xc72(r24)
/* 8065DA98  38 A0 00 08 */	li r5, 8
/* 8065DA9C  38 C0 04 00 */	li r6, 0x400
/* 8065DAA0  4B C1 2B 68 */	b cLib_addCalcAngleS2__FPssss
/* 8065DAA4  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 8065DAA8  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 8065DAAC  B0 18 0C 34 */	sth r0, 0xc34(r24)
/* 8065DAB0  7F 03 C3 78 */	mr r3, r24
/* 8065DAB4  A8 98 0C 72 */	lha r4, 0xc72(r24)
/* 8065DAB8  4B FF B3 E1 */	bl setBodyAngle__7daCow_cFs
/* 8065DABC  A8 78 0C 72 */	lha r3, 0xc72(r24)
/* 8065DAC0  A8 98 0C 34 */	lha r4, 0xc34(r24)
/* 8065DAC4  4B C1 33 60 */	b cLib_distanceAngleS__Fss
/* 8065DAC8  2C 03 02 00 */	cmpwi r3, 0x200
/* 8065DACC  40 80 00 DC */	bge lbl_8065DBA8
/* 8065DAD0  A8 18 0C 40 */	lha r0, 0xc40(r24)
/* 8065DAD4  2C 00 02 00 */	cmpwi r0, 0x200
/* 8065DAD8  40 80 00 D0 */	bge lbl_8065DBA8
/* 8065DADC  88 18 0C 9F */	lbz r0, 0xc9f(r24)
/* 8065DAE0  28 00 00 04 */	cmplwi r0, 4
/* 8065DAE4  40 82 00 30 */	bne lbl_8065DB14
/* 8065DAE8  80 7D 02 EC */	lwz r3, 0x2ec(r29)
/* 8065DAEC  80 1D 02 F0 */	lwz r0, 0x2f0(r29)
/* 8065DAF0  90 61 00 0C */	stw r3, 0xc(r1)
/* 8065DAF4  90 01 00 10 */	stw r0, 0x10(r1)
/* 8065DAF8  80 1D 02 F4 */	lwz r0, 0x2f4(r29)
/* 8065DAFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8065DB00  7F 03 C3 78 */	mr r3, r24
/* 8065DB04  38 81 00 0C */	addi r4, r1, 0xc
/* 8065DB08  38 A0 00 00 */	li r5, 0
/* 8065DB0C  4B FF B6 09 */	bl setProcess__7daCow_cFM7daCow_cFPCvPv_vi
/* 8065DB10  48 00 00 98 */	b lbl_8065DBA8
lbl_8065DB14:
/* 8065DB14  38 00 00 01 */	li r0, 1
/* 8065DB18  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065DB1C  38 00 00 00 */	li r0, 0
/* 8065DB20  B0 18 0C 3A */	sth r0, 0xc3a(r24)
/* 8065DB24  B0 18 0C 40 */	sth r0, 0xc40(r24)
/* 8065DB28  48 00 00 80 */	b lbl_8065DBA8
lbl_8065DB2C:
/* 8065DB2C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 8065DB30  80 78 05 74 */	lwz r3, 0x574(r24)
/* 8065DB34  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8065DB38  7F 03 C3 78 */	mr r3, r24
/* 8065DB3C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 8065DB40  4B 9B CB D0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8065DB44  7C 64 1B 78 */	mr r4, r3
/* 8065DB48  38 78 0C 34 */	addi r3, r24, 0xc34
/* 8065DB4C  38 A0 08 00 */	li r5, 0x800
/* 8065DB50  4B C1 30 40 */	b cLib_chaseAngleS__FPsss
/* 8065DB54  A8 18 0C 34 */	lha r0, 0xc34(r24)
/* 8065DB58  B0 18 04 E6 */	sth r0, 0x4e6(r24)
/* 8065DB5C  B0 18 04 DE */	sth r0, 0x4de(r24)
/* 8065DB60  80 78 05 74 */	lwz r3, 0x574(r24)
/* 8065DB64  38 80 00 01 */	li r4, 1
/* 8065DB68  88 03 00 11 */	lbz r0, 0x11(r3)
/* 8065DB6C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8065DB70  40 82 00 18 */	bne lbl_8065DB88
/* 8065DB74  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8065DB78  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 8065DB7C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 8065DB80  41 82 00 08 */	beq lbl_8065DB88
/* 8065DB84  38 80 00 00 */	li r4, 0
lbl_8065DB88:
/* 8065DB88  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 8065DB8C  41 82 00 5C */	beq lbl_8065DBE8
/* 8065DB90  38 00 00 01 */	li r0, 1
/* 8065DB94  98 18 0C 9F */	stb r0, 0xc9f(r24)
/* 8065DB98  7F 03 C3 78 */	mr r3, r24
/* 8065DB9C  38 80 00 01 */	li r4, 1
/* 8065DBA0  4B FF AA 2D */	bl calcRunAnime__7daCow_cFi
/* 8065DBA4  48 00 00 44 */	b lbl_8065DBE8
lbl_8065DBA8:
/* 8065DBA8  38 78 0C 42 */	addi r3, r24, 0xc42
/* 8065DBAC  7F 44 D3 78 */	mr r4, r26
/* 8065DBB0  38 A0 04 00 */	li r5, 0x400
/* 8065DBB4  4B C1 2B 1C */	b cLib_chaseS__FPsss
/* 8065DBB8  48 00 00 30 */	b lbl_8065DBE8
lbl_8065DBBC:
/* 8065DBBC  38 00 00 00 */	li r0, 0
/* 8065DBC0  90 18 0C 94 */	stw r0, 0xc94(r24)
/* 8065DBC4  90 18 0C 90 */	stw r0, 0xc90(r24)
/* 8065DBC8  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8065DBCC  D0 18 0C B0 */	stfs f0, 0xcb0(r24)
/* 8065DBD0  B0 18 0C 42 */	sth r0, 0xc42(r24)
/* 8065DBD4  B0 18 0C 3A */	sth r0, 0xc3a(r24)
/* 8065DBD8  B0 18 0C 40 */	sth r0, 0xc40(r24)
/* 8065DBDC  80 18 05 5C */	lwz r0, 0x55c(r24)
/* 8065DBE0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8065DBE4  90 18 05 5C */	stw r0, 0x55c(r24)
lbl_8065DBE8:
/* 8065DBE8  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 8065DBEC  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 8065DBF0  39 61 01 00 */	addi r11, r1, 0x100
/* 8065DBF4  4B D0 46 20 */	b _restgpr_24
/* 8065DBF8  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8065DBFC  7C 08 03 A6 */	mtlr r0
/* 8065DC00  38 21 01 10 */	addi r1, r1, 0x110
/* 8065DC04  4E 80 00 20 */	blr 
