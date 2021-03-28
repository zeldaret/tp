lbl_80D04598:
/* 80D04598  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 80D0459C  7C 08 02 A6 */	mflr r0
/* 80D045A0  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 80D045A4  DB E1 00 E0 */	stfd f31, 0xe0(r1)
/* 80D045A8  F3 E1 00 E8 */	psq_st f31, 232(r1), 0, 0 /* qr0 */
/* 80D045AC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80D045B0  4B 65 DC 20 */	b _savegpr_26
/* 80D045B4  7C 7A 1B 78 */	mr r26, r3
/* 80D045B8  3C 60 80 D0 */	lis r3, l_cull_box@ha
/* 80D045BC  3B 83 4C 38 */	addi r28, r3, l_cull_box@l
/* 80D045C0  3B 61 00 68 */	addi r27, r1, 0x68
/* 80D045C4  7F 63 DB 78 */	mr r3, r27
/* 80D045C8  4B 37 2F B4 */	b __ct__11dBgS_GndChkFv
/* 80D045CC  3C 60 80 D0 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80D045D0  38 63 4D 10 */	addi r3, r3, __vt__14dBgS_ObjGndChk@l
/* 80D045D4  90 61 00 78 */	stw r3, 0x78(r1)
/* 80D045D8  3B E3 00 0C */	addi r31, r3, 0xc
/* 80D045DC  93 E1 00 88 */	stw r31, 0x88(r1)
/* 80D045E0  3B C3 00 18 */	addi r30, r3, 0x18
/* 80D045E4  93 C1 00 A4 */	stw r30, 0xa4(r1)
/* 80D045E8  3B A3 00 24 */	addi r29, r3, 0x24
/* 80D045EC  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 80D045F0  38 7B 00 3C */	addi r3, r27, 0x3c
/* 80D045F4  4B 37 48 74 */	b SetObj__16dBgS_PolyPassChkFv
/* 80D045F8  C0 1A 04 D0 */	lfs f0, 0x4d0(r26)
/* 80D045FC  D0 01 00 08 */	stfs f0, 8(r1)
/* 80D04600  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D04604  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80D04608  C0 1A 04 D8 */	lfs f0, 0x4d8(r26)
/* 80D0460C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80D04610  C0 1C 00 2C */	lfs f0, 0x2c(r28)
/* 80D04614  EC 01 00 2A */	fadds f0, f1, f0
/* 80D04618  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D0461C  7F 63 DB 78 */	mr r3, r27
/* 80D04620  38 81 00 08 */	addi r4, r1, 8
/* 80D04624  4B 56 37 04 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80D04628  80 1A 00 04 */	lwz r0, 4(r26)
/* 80D0462C  90 01 00 70 */	stw r0, 0x70(r1)
/* 80D04630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D04634  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D04638  3B 63 0F 38 */	addi r27, r3, 0xf38
/* 80D0463C  7F 63 DB 78 */	mr r3, r27
/* 80D04640  38 81 00 68 */	addi r4, r1, 0x68
/* 80D04644  4B 36 FE 5C */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80D04648  D0 3A 06 10 */	stfs f1, 0x610(r26)
/* 80D0464C  C0 1A 06 10 */	lfs f0, 0x610(r26)
/* 80D04650  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80D04654  C0 3C 00 2C */	lfs f1, 0x2c(r28)
/* 80D04658  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 80D0465C  EF E1 00 2A */	fadds f31, f1, f0
/* 80D04660  38 61 00 14 */	addi r3, r1, 0x14
/* 80D04664  4B 37 4B 00 */	b __ct__11dBgS_WtrChkFv
/* 80D04668  38 61 00 14 */	addi r3, r1, 0x14
/* 80D0466C  38 81 00 08 */	addi r4, r1, 8
/* 80D04670  FC 20 F8 90 */	fmr f1, f31
/* 80D04674  4B 37 45 1C */	b Set__14dBgS_SplGrpChkFR4cXyzf
/* 80D04678  7F 63 DB 78 */	mr r3, r27
/* 80D0467C  38 81 00 14 */	addi r4, r1, 0x14
/* 80D04680  4B 37 0E E4 */	b SplGrpChk__4dBgSFP14dBgS_SplGrpChk
/* 80D04684  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D04688  41 82 00 10 */	beq lbl_80D04698
/* 80D0468C  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D04690  D0 1A 06 0C */	stfs f0, 0x60c(r26)
/* 80D04694  48 00 00 0C */	b lbl_80D046A0
lbl_80D04698:
/* 80D04698  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80D0469C  D0 1A 06 0C */	stfs f0, 0x60c(r26)
lbl_80D046A0:
/* 80D046A0  C0 1A 06 0C */	lfs f0, 0x60c(r26)
/* 80D046A4  C0 3A 06 10 */	lfs f1, 0x610(r26)
/* 80D046A8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D046AC  40 81 00 A8 */	ble lbl_80D04754
/* 80D046B0  C0 9A 04 FC */	lfs f4, 0x4fc(r26)
/* 80D046B4  C0 5C 00 34 */	lfs f2, 0x34(r28)
/* 80D046B8  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D046BC  C0 7C 00 38 */	lfs f3, 0x38(r28)
/* 80D046C0  EC 00 18 28 */	fsubs f0, f0, f3
/* 80D046C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D046C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D046CC  EC 04 00 28 */	fsubs f0, f4, f0
/* 80D046D0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D046D4  C0 3A 04 FC */	lfs f1, 0x4fc(r26)
/* 80D046D8  C0 1C 00 3C */	lfs f0, 0x3c(r28)
/* 80D046DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80D046E0  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D046E4  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D046E8  C0 1A 04 FC */	lfs f0, 0x4fc(r26)
/* 80D046EC  EC 01 00 2A */	fadds f0, f1, f0
/* 80D046F0  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
/* 80D046F4  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80D046F8  C0 3C 00 40 */	lfs f1, 0x40(r28)
/* 80D046FC  C0 1A 06 0C */	lfs f0, 0x60c(r26)
/* 80D04700  EC 00 18 28 */	fsubs f0, f0, f3
/* 80D04704  EC 01 00 2A */	fadds f0, f1, f0
/* 80D04708  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D0470C  40 81 00 08 */	ble lbl_80D04714
/* 80D04710  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
lbl_80D04714:
/* 80D04714  C0 5A 04 D4 */	lfs f2, 0x4d4(r26)
/* 80D04718  C0 3A 06 0C */	lfs f1, 0x60c(r26)
/* 80D0471C  C0 1C 00 38 */	lfs f0, 0x38(r28)
/* 80D04720  EC 21 00 28 */	fsubs f1, f1, f0
/* 80D04724  C0 1C 00 40 */	lfs f0, 0x40(r28)
/* 80D04728  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D0472C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D04730  40 80 00 08 */	bge lbl_80D04738
/* 80D04734  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
lbl_80D04738:
/* 80D04738  C0 3A 04 D4 */	lfs f1, 0x4d4(r26)
/* 80D0473C  C0 1A 04 C0 */	lfs f0, 0x4c0(r26)
/* 80D04740  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D04744  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 80D04748  38 00 00 01 */	li r0, 1
/* 80D0474C  98 1A 06 14 */	stb r0, 0x614(r26)
/* 80D04750  48 00 00 10 */	b lbl_80D04760
lbl_80D04754:
/* 80D04754  D0 3A 04 D4 */	stfs f1, 0x4d4(r26)
/* 80D04758  38 00 00 00 */	li r0, 0
/* 80D0475C  98 1A 06 14 */	stb r0, 0x614(r26)
lbl_80D04760:
/* 80D04760  3C 60 80 D0 */	lis r3, __vt__11dBgS_WtrChk@ha
/* 80D04764  38 63 4C E0 */	addi r3, r3, __vt__11dBgS_WtrChk@l
/* 80D04768  90 61 00 20 */	stw r3, 0x20(r1)
/* 80D0476C  38 03 00 0C */	addi r0, r3, 0xc
/* 80D04770  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D04774  38 03 00 18 */	addi r0, r3, 0x18
/* 80D04778  90 01 00 38 */	stw r0, 0x38(r1)
/* 80D0477C  38 03 00 24 */	addi r0, r3, 0x24
/* 80D04780  90 01 00 48 */	stw r0, 0x48(r1)
/* 80D04784  38 61 00 14 */	addi r3, r1, 0x14
/* 80D04788  38 80 00 00 */	li r4, 0
/* 80D0478C  4B 37 44 EC */	b __dt__14dBgS_SplGrpChkFv
/* 80D04790  3C 60 80 D0 */	lis r3, __vt__14dBgS_ObjGndChk@ha
/* 80D04794  38 03 4D 10 */	addi r0, r3, __vt__14dBgS_ObjGndChk@l
/* 80D04798  90 01 00 78 */	stw r0, 0x78(r1)
/* 80D0479C  93 E1 00 88 */	stw r31, 0x88(r1)
/* 80D047A0  93 C1 00 A4 */	stw r30, 0xa4(r1)
/* 80D047A4  93 A1 00 B4 */	stw r29, 0xb4(r1)
/* 80D047A8  38 61 00 68 */	addi r3, r1, 0x68
/* 80D047AC  38 80 00 00 */	li r4, 0
/* 80D047B0  4B 37 2E 40 */	b __dt__11dBgS_GndChkFv
/* 80D047B4  E3 E1 00 E8 */	psq_l f31, 232(r1), 0, 0 /* qr0 */
/* 80D047B8  CB E1 00 E0 */	lfd f31, 0xe0(r1)
/* 80D047BC  39 61 00 E0 */	addi r11, r1, 0xe0
/* 80D047C0  4B 65 DA 5C */	b _restgpr_26
/* 80D047C4  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 80D047C8  7C 08 03 A6 */	mtlr r0
/* 80D047CC  38 21 00 F0 */	addi r1, r1, 0xf0
/* 80D047D0  4E 80 00 20 */	blr 
