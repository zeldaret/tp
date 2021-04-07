lbl_80C0F330:
/* 80C0F330  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C0F334  7C 08 02 A6 */	mflr r0
/* 80C0F338  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C0F33C  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C0F340  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C0F344  DB C1 00 70 */	stfd f30, 0x70(r1)
/* 80C0F348  F3 C1 00 78 */	psq_st f30, 120(r1), 0, 0 /* qr0 */
/* 80C0F34C  DB A1 00 60 */	stfd f29, 0x60(r1)
/* 80C0F350  F3 A1 00 68 */	psq_st f29, 104(r1), 0, 0 /* qr0 */
/* 80C0F354  DB 81 00 50 */	stfd f28, 0x50(r1)
/* 80C0F358  F3 81 00 58 */	psq_st f28, 88(r1), 0, 0 /* qr0 */
/* 80C0F35C  39 61 00 50 */	addi r11, r1, 0x50
/* 80C0F360  4B 75 2E 71 */	bl _savegpr_26
/* 80C0F364  7C 7C 1B 78 */	mr r28, r3
/* 80C0F368  7C 9A 23 78 */	mr r26, r4
/* 80C0F36C  7C BD 2B 78 */	mr r29, r5
/* 80C0F370  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha /* 0x80C0FA7C@ha */
/* 80C0F374  3B C3 FA 7C */	addi r30, r3, m__17daObj_GrA_Param_c@l /* 0x80C0FA7C@l */
/* 80C0F378  38 61 00 20 */	addi r3, r1, 0x20
/* 80C0F37C  7F 84 E3 78 */	mr r4, r28
/* 80C0F380  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80C0F384  3B E5 61 C0 */	addi r31, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80C0F388  80 BF 5D AC */	lwz r5, 0x5dac(r31)
/* 80C0F38C  48 00 04 61 */	bl getAttentionPos__11daObj_GrA_cFP10fopAc_ac_c
/* 80C0F390  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80C0F394  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C0F398  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80C0F39C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C0F3A0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80C0F3A4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C0F3A8  7F 83 E3 78 */	mr r3, r28
/* 80C0F3AC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C0F3B0  4B 40 B3 61 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80C0F3B4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C0F3B8  7C 00 18 50 */	subf r0, r0, r3
/* 80C0F3BC  7C 03 07 34 */	extsh r3, r0
/* 80C0F3C0  4B 75 5D 11 */	bl abs
/* 80C0F3C4  2C 03 3C 00 */	cmpwi r3, 0x3c00
/* 80C0F3C8  40 80 00 30 */	bge lbl_80C0F3F8
/* 80C0F3CC  2C 1A 00 00 */	cmpwi r26, 0
/* 80C0F3D0  40 82 00 14 */	bne lbl_80C0F3E4
/* 80C0F3D4  38 60 00 0A */	li r3, 0xa
/* 80C0F3D8  38 80 00 06 */	li r4, 6
/* 80C0F3DC  4B FF 25 C9 */	bl getDistTableIdx__Fii
/* 80C0F3E0  48 00 00 10 */	b lbl_80C0F3F0
lbl_80C0F3E4:
/* 80C0F3E4  38 60 00 0C */	li r3, 0xc
/* 80C0F3E8  38 80 00 06 */	li r4, 6
/* 80C0F3EC  4B FF 25 B9 */	bl getDistTableIdx__Fii
lbl_80C0F3F0:
/* 80C0F3F0  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 80C0F3F4  48 00 00 2C */	b lbl_80C0F420
lbl_80C0F3F8:
/* 80C0F3F8  2C 1A 00 00 */	cmpwi r26, 0
/* 80C0F3FC  40 82 00 14 */	bne lbl_80C0F410
/* 80C0F400  38 60 00 04 */	li r3, 4
/* 80C0F404  38 80 00 06 */	li r4, 6
/* 80C0F408  4B FF 25 9D */	bl getDistTableIdx__Fii
/* 80C0F40C  48 00 00 10 */	b lbl_80C0F41C
lbl_80C0F410:
/* 80C0F410  38 60 00 06 */	li r3, 6
/* 80C0F414  38 80 00 06 */	li r4, 6
/* 80C0F418  4B FF 25 8D */	bl getDistTableIdx__Fii
lbl_80C0F41C:
/* 80C0F41C  54 7B 06 3E */	clrlwi r27, r3, 0x18
lbl_80C0F420:
/* 80C0F420  2C 1A 00 00 */	cmpwi r26, 0
/* 80C0F424  40 82 00 14 */	bne lbl_80C0F438
/* 80C0F428  7F 63 DB 78 */	mr r3, r27
/* 80C0F42C  48 00 01 65 */	bl getDistTable__12dAttention_cFi
/* 80C0F430  C3 E3 00 00 */	lfs f31, 0(r3)
/* 80C0F434  48 00 00 10 */	b lbl_80C0F444
lbl_80C0F438:
/* 80C0F438  7F 63 DB 78 */	mr r3, r27
/* 80C0F43C  48 00 01 55 */	bl getDistTable__12dAttention_cFi
/* 80C0F440  C3 E3 00 04 */	lfs f31, 4(r3)
lbl_80C0F444:
/* 80C0F444  7F 63 DB 78 */	mr r3, r27
/* 80C0F448  48 00 01 49 */	bl getDistTable__12dAttention_cFi
/* 80C0F44C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80C0F450  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80C0F454  EF C0 00 72 */	fmuls f30, f0, f1
/* 80C0F458  7F 63 DB 78 */	mr r3, r27
/* 80C0F45C  48 00 01 35 */	bl getDistTable__12dAttention_cFi
/* 80C0F460  C0 23 00 0C */	lfs f1, 0xc(r3)
/* 80C0F464  C0 1E 01 38 */	lfs f0, 0x138(r30)
/* 80C0F468  EF A0 00 72 */	fmuls f29, f0, f1
/* 80C0F46C  7F 63 DB 78 */	mr r3, r27
/* 80C0F470  48 00 01 21 */	bl getDistTable__12dAttention_cFi
/* 80C0F474  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80C0F478  C3 9E 03 68 */	lfs f28, 0x368(r30)
/* 80C0F47C  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 80C0F480  41 82 00 0C */	beq lbl_80C0F48C
/* 80C0F484  C3 9E 02 C8 */	lfs f28, 0x2c8(r30)
/* 80C0F488  48 00 00 50 */	b lbl_80C0F4D8
lbl_80C0F48C:
/* 80C0F48C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80C0F490  41 82 00 0C */	beq lbl_80C0F49C
/* 80C0F494  C3 9E 02 88 */	lfs f28, 0x288(r30)
/* 80C0F498  48 00 00 40 */	b lbl_80C0F4D8
lbl_80C0F49C:
/* 80C0F49C  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80C0F4A0  41 82 00 0C */	beq lbl_80C0F4AC
/* 80C0F4A4  C3 9E 02 E8 */	lfs f28, 0x2e8(r30)
/* 80C0F4A8  48 00 00 30 */	b lbl_80C0F4D8
lbl_80C0F4AC:
/* 80C0F4AC  54 60 06 73 */	rlwinm. r0, r3, 0, 0x19, 0x19
/* 80C0F4B0  41 82 00 0C */	beq lbl_80C0F4BC
/* 80C0F4B4  C3 9E 02 F0 */	lfs f28, 0x2f0(r30)
/* 80C0F4B8  48 00 00 20 */	b lbl_80C0F4D8
lbl_80C0F4BC:
/* 80C0F4BC  54 60 06 31 */	rlwinm. r0, r3, 0, 0x18, 0x18
/* 80C0F4C0  41 82 00 0C */	beq lbl_80C0F4CC
/* 80C0F4C4  C3 9E 03 74 */	lfs f28, 0x374(r30)
/* 80C0F4C8  48 00 00 10 */	b lbl_80C0F4D8
lbl_80C0F4CC:
/* 80C0F4CC  54 60 05 EF */	rlwinm. r0, r3, 0, 0x17, 0x17
/* 80C0F4D0  41 82 00 08 */	beq lbl_80C0F4D8
/* 80C0F4D4  C3 9E 03 78 */	lfs f28, 0x378(r30)
lbl_80C0F4D8:
/* 80C0F4D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80C0F4DC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C0F4E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80C0F4E4  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80C0F4E8  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80C0F4EC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80C0F4F0  C0 1C 05 50 */	lfs f0, 0x550(r28)
/* 80C0F4F4  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C0F4F8  C0 1C 05 54 */	lfs f0, 0x554(r28)
/* 80C0F4FC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C0F500  C0 1C 05 58 */	lfs f0, 0x558(r28)
/* 80C0F504  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C0F508  7F 83 E3 78 */	mr r3, r28
/* 80C0F50C  38 81 00 14 */	addi r4, r1, 0x14
/* 80C0F510  38 A1 00 08 */	addi r5, r1, 8
/* 80C0F514  FC 20 F8 90 */	fmr f1, f31
/* 80C0F518  FC 40 F0 90 */	fmr f2, f30
/* 80C0F51C  FC 60 E8 90 */	fmr f3, f29
/* 80C0F520  38 C0 00 00 */	li r6, 0
/* 80C0F524  48 00 00 81 */	bl chkPointInArea__11daObj_GrA_cF4cXyz4cXyzfffs
/* 80C0F528  2C 03 00 00 */	cmpwi r3, 0
/* 80C0F52C  41 82 00 28 */	beq lbl_80C0F554
/* 80C0F530  7F 83 E3 78 */	mr r3, r28
/* 80C0F534  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80C0F538  FC 20 E0 90 */	fmr f1, f28
/* 80C0F53C  7F A5 EB 78 */	mr r5, r29
/* 80C0F540  48 00 01 A1 */	bl chkActorInSight2__11daObj_GrA_cFP10fopAc_ac_cfs
/* 80C0F544  2C 03 00 00 */	cmpwi r3, 0
/* 80C0F548  41 82 00 0C */	beq lbl_80C0F554
/* 80C0F54C  38 60 00 01 */	li r3, 1
/* 80C0F550  48 00 00 08 */	b lbl_80C0F558
lbl_80C0F554:
/* 80C0F554  38 60 00 00 */	li r3, 0
lbl_80C0F558:
/* 80C0F558  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C0F55C  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C0F560  E3 C1 00 78 */	psq_l f30, 120(r1), 0, 0 /* qr0 */
/* 80C0F564  CB C1 00 70 */	lfd f30, 0x70(r1)
/* 80C0F568  E3 A1 00 68 */	psq_l f29, 104(r1), 0, 0 /* qr0 */
/* 80C0F56C  CB A1 00 60 */	lfd f29, 0x60(r1)
/* 80C0F570  E3 81 00 58 */	psq_l f28, 88(r1), 0, 0 /* qr0 */
/* 80C0F574  CB 81 00 50 */	lfd f28, 0x50(r1)
/* 80C0F578  39 61 00 50 */	addi r11, r1, 0x50
/* 80C0F57C  4B 75 2C A1 */	bl _restgpr_26
/* 80C0F580  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C0F584  7C 08 03 A6 */	mtlr r0
/* 80C0F588  38 21 00 90 */	addi r1, r1, 0x90
/* 80C0F58C  4E 80 00 20 */	blr 
