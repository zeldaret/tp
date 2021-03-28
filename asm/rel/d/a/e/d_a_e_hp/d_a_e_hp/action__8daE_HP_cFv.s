lbl_806E814C:
/* 806E814C  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 806E8150  7C 08 02 A6 */	mflr r0
/* 806E8154  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 806E8158  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E815C  4B C7 A0 74 */	b _savegpr_26
/* 806E8160  7C 7A 1B 78 */	mr r26, r3
/* 806E8164  3C 60 80 6F */	lis r3, lit_3905@ha
/* 806E8168  3B C3 A1 F4 */	addi r30, r3, lit_3905@l
/* 806E816C  3B A0 00 00 */	li r29, 0
/* 806E8170  3B 80 00 00 */	li r28, 0
/* 806E8174  88 1A 07 8B */	lbz r0, 0x78b(r26)
/* 806E8178  28 00 00 00 */	cmplwi r0, 0
/* 806E817C  41 82 00 20 */	beq lbl_806E819C
/* 806E8180  38 00 00 00 */	li r0, 0
/* 806E8184  98 1A 07 8B */	stb r0, 0x78b(r26)
/* 806E8188  38 7A 05 C8 */	addi r3, r26, 0x5c8
/* 806E818C  3C 80 80 6F */	lis r4, stringBase0@ha
/* 806E8190  38 84 A2 CC */	addi r4, r4, stringBase0@l
/* 806E8194  38 84 00 15 */	addi r4, r4, 0x15
/* 806E8198  4B BD 99 F8 */	b setEnemyName__15Z2CreatureEnemyFPCc
lbl_806E819C:
/* 806E819C  7F 43 D3 78 */	mr r3, r26
/* 806E81A0  4B FF E5 9D */	bl damage_check__8daE_HP_cFv
/* 806E81A4  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E81A8  28 00 00 06 */	cmplwi r0, 6
/* 806E81AC  41 81 00 74 */	bgt lbl_806E8220
/* 806E81B0  3C 60 80 6F */	lis r3, lit_5058@ha
/* 806E81B4  38 63 A3 EC */	addi r3, r3, lit_5058@l
/* 806E81B8  54 00 10 3A */	slwi r0, r0, 2
/* 806E81BC  7C 03 00 2E */	lwzx r0, r3, r0
/* 806E81C0  7C 09 03 A6 */	mtctr r0
/* 806E81C4  4E 80 04 20 */	bctr 
lbl_806E81C8:
/* 806E81C8  7F 43 D3 78 */	mr r3, r26
/* 806E81CC  4B FF E7 7D */	bl executeWait__8daE_HP_cFv
/* 806E81D0  48 00 00 50 */	b lbl_806E8220
lbl_806E81D4:
/* 806E81D4  7F 43 D3 78 */	mr r3, r26
/* 806E81D8  4B FF EA 9D */	bl executeMove__8daE_HP_cFv
/* 806E81DC  3B 80 00 01 */	li r28, 1
/* 806E81E0  48 00 00 40 */	b lbl_806E8220
lbl_806E81E4:
/* 806E81E4  7F 43 D3 78 */	mr r3, r26
/* 806E81E8  4B FF EC F1 */	bl executeRetMove__8daE_HP_cFv
/* 806E81EC  48 00 00 34 */	b lbl_806E8220
lbl_806E81F0:
/* 806E81F0  7F 43 D3 78 */	mr r3, r26
/* 806E81F4  4B FF F0 35 */	bl executeAttack__8daE_HP_cFv
/* 806E81F8  3B 80 00 01 */	li r28, 1
/* 806E81FC  48 00 00 24 */	b lbl_806E8220
lbl_806E8200:
/* 806E8200  7F 43 D3 78 */	mr r3, r26
/* 806E8204  4B FF F3 71 */	bl executeDamage__8daE_HP_cFv
/* 806E8208  48 00 00 18 */	b lbl_806E8220
lbl_806E820C:
/* 806E820C  7F 43 D3 78 */	mr r3, r26
/* 806E8210  4B FF F5 B1 */	bl executeDown__8daE_HP_cFv
/* 806E8214  48 00 00 0C */	b lbl_806E8220
lbl_806E8218:
/* 806E8218  7F 43 D3 78 */	mr r3, r26
/* 806E821C  4B FF FC 79 */	bl executeDead__8daE_HP_cFv
lbl_806E8220:
/* 806E8220  7F 43 D3 78 */	mr r3, r26
/* 806E8224  4B 93 12 D8 */	b checkBallModelDraw__13fopEn_enemy_cFv
/* 806E8228  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806E822C  41 82 00 30 */	beq lbl_806E825C
/* 806E8230  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070524@ha */
/* 806E8234  38 03 05 24 */	addi r0, r3, 0x0524 /* 0x00070524@l */
/* 806E8238  90 01 00 18 */	stw r0, 0x18(r1)
/* 806E823C  38 7A 06 6C */	addi r3, r26, 0x66c
/* 806E8240  38 81 00 18 */	addi r4, r1, 0x18
/* 806E8244  38 A0 00 00 */	li r5, 0
/* 806E8248  38 C0 FF FF */	li r6, -1
/* 806E824C  81 9A 06 6C */	lwz r12, 0x66c(r26)
/* 806E8250  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806E8254  7D 89 03 A6 */	mtctr r12
/* 806E8258  4E 80 04 21 */	bctrl 
lbl_806E825C:
/* 806E825C  80 1A 07 80 */	lwz r0, 0x780(r26)
/* 806E8260  2C 00 00 0C */	cmpwi r0, 0xc
/* 806E8264  41 82 00 14 */	beq lbl_806E8278
/* 806E8268  2C 00 00 0D */	cmpwi r0, 0xd
/* 806E826C  41 82 00 0C */	beq lbl_806E8278
/* 806E8270  2C 00 00 0E */	cmpwi r0, 0xe
/* 806E8274  40 82 00 30 */	bne lbl_806E82A4
lbl_806E8278:
/* 806E8278  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070531@ha */
/* 806E827C  38 03 05 31 */	addi r0, r3, 0x0531 /* 0x00070531@l */
/* 806E8280  90 01 00 14 */	stw r0, 0x14(r1)
/* 806E8284  38 7A 05 C8 */	addi r3, r26, 0x5c8
/* 806E8288  38 81 00 14 */	addi r4, r1, 0x14
/* 806E828C  38 A0 00 00 */	li r5, 0
/* 806E8290  38 C0 FF FF */	li r6, -1
/* 806E8294  81 9A 05 C8 */	lwz r12, 0x5c8(r26)
/* 806E8298  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806E829C  7D 89 03 A6 */	mtctr r12
/* 806E82A0  4E 80 04 21 */	bctrl 
lbl_806E82A4:
/* 806E82A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E82A8  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 806E82AC  83 7F 5D AC */	lwz r27, 0x5dac(r31)
/* 806E82B0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 806E82B4  C0 1A 08 84 */	lfs f0, 0x884(r26)
/* 806E82B8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806E82BC  41 82 01 7C */	beq lbl_806E8438
/* 806E82C0  88 1A 07 7A */	lbz r0, 0x77a(r26)
/* 806E82C4  28 00 00 02 */	cmplwi r0, 2
/* 806E82C8  40 82 00 18 */	bne lbl_806E82E0
/* 806E82CC  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E82D0  2C 00 00 05 */	cmpwi r0, 5
/* 806E82D4  41 82 00 0C */	beq lbl_806E82E0
/* 806E82D8  2C 00 00 06 */	cmpwi r0, 6
/* 806E82DC  40 82 01 14 */	bne lbl_806E83F0
lbl_806E82E0:
/* 806E82E0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 806E82E4  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 806E82E8  80 7A 07 10 */	lwz r3, 0x710(r26)
/* 806E82EC  2C 03 00 05 */	cmpwi r3, 5
/* 806E82F0  40 82 00 10 */	bne lbl_806E8300
/* 806E82F4  80 1A 07 80 */	lwz r0, 0x780(r26)
/* 806E82F8  2C 00 00 09 */	cmpwi r0, 9
/* 806E82FC  41 82 00 0C */	beq lbl_806E8308
lbl_806E8300:
/* 806E8300  2C 03 00 06 */	cmpwi r3, 6
/* 806E8304  40 82 01 68 */	bne lbl_806E846C
lbl_806E8308:
/* 806E8308  80 1A 08 18 */	lwz r0, 0x818(r26)
/* 806E830C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806E8310  41 82 01 5C */	beq lbl_806E846C
/* 806E8314  38 61 00 54 */	addi r3, r1, 0x54
/* 806E8318  4B 98 FC 44 */	b __ct__14dBgS_ObjLinChkFv
/* 806E831C  3C 60 80 6F */	lis r3, __vt__8cM3dGPla@ha
/* 806E8320  38 03 A4 C4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E8324  90 01 00 50 */	stw r0, 0x50(r1)
/* 806E8328  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806E832C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806E8330  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806E8334  38 9A 08 DC */	addi r4, r26, 0x8dc
/* 806E8338  38 A1 00 40 */	addi r5, r1, 0x40
/* 806E833C  4B 98 C4 08 */	b GetTriPla__4cBgSCFRC13cBgS_PolyInfoP8cM3dGPla
/* 806E8340  38 00 00 FA */	li r0, 0xfa
/* 806E8344  98 1A 09 D8 */	stb r0, 0x9d8(r26)
/* 806E8348  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E834C  D0 1A 05 2C */	stfs f0, 0x52c(r26)
/* 806E8350  80 1A 07 80 */	lwz r0, 0x780(r26)
/* 806E8354  2C 00 00 09 */	cmpwi r0, 9
/* 806E8358  40 82 00 58 */	bne lbl_806E83B0
/* 806E835C  88 1A 07 8A */	lbz r0, 0x78a(r26)
/* 806E8360  28 00 00 00 */	cmplwi r0, 0
/* 806E8364  40 82 00 4C */	bne lbl_806E83B0
/* 806E8368  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070523@ha */
/* 806E836C  38 03 05 23 */	addi r0, r3, 0x0523 /* 0x00070523@l */
/* 806E8370  90 01 00 10 */	stw r0, 0x10(r1)
/* 806E8374  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806E8378  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806E837C  80 63 00 00 */	lwz r3, 0(r3)
/* 806E8380  38 81 00 10 */	addi r4, r1, 0x10
/* 806E8384  38 BA 07 44 */	addi r5, r26, 0x744
/* 806E8388  38 C0 00 00 */	li r6, 0
/* 806E838C  38 E0 00 00 */	li r7, 0
/* 806E8390  C0 3E 00 08 */	lfs f1, 8(r30)
/* 806E8394  FC 40 08 90 */	fmr f2, f1
/* 806E8398  C0 7E 00 48 */	lfs f3, 0x48(r30)
/* 806E839C  FC 80 18 90 */	fmr f4, f3
/* 806E83A0  39 00 00 00 */	li r8, 0
/* 806E83A4  4B BC 35 E0 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 806E83A8  38 00 00 01 */	li r0, 1
/* 806E83AC  98 1A 07 8A */	stb r0, 0x78a(r26)
lbl_806E83B0:
/* 806E83B0  C0 21 00 48 */	lfs f1, 0x48(r1)
/* 806E83B4  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 806E83B8  4B B7 F2 BC */	b cM_atan2s__Fff
/* 806E83BC  7C 03 00 D0 */	neg r0, r3
/* 806E83C0  B0 1A 07 72 */	sth r0, 0x772(r26)
/* 806E83C4  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 806E83C8  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 806E83CC  4B B7 F2 A8 */	b cM_atan2s__Fff
/* 806E83D0  B0 7A 07 76 */	sth r3, 0x776(r26)
/* 806E83D4  3C 60 80 6F */	lis r3, __vt__8cM3dGPla@ha
/* 806E83D8  38 03 A4 C4 */	addi r0, r3, __vt__8cM3dGPla@l
/* 806E83DC  90 01 00 50 */	stw r0, 0x50(r1)
/* 806E83E0  38 61 00 54 */	addi r3, r1, 0x54
/* 806E83E4  38 80 FF FF */	li r4, -1
/* 806E83E8  4B 98 FB D0 */	b __dt__14dBgS_ObjLinChkFv
/* 806E83EC  48 00 00 80 */	b lbl_806E846C
lbl_806E83F0:
/* 806E83F0  2C 00 00 01 */	cmpwi r0, 1
/* 806E83F4  41 82 00 2C */	beq lbl_806E8420
/* 806E83F8  2C 00 00 03 */	cmpwi r0, 3
/* 806E83FC  41 82 00 24 */	beq lbl_806E8420
/* 806E8400  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E8404  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 806E8408  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 806E840C  C0 3A 04 AC */	lfs f1, 0x4ac(r26)
/* 806E8410  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806E8414  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 806E8418  4B B8 76 24 */	b cLib_addCalc2__FPffff
/* 806E841C  48 00 00 50 */	b lbl_806E846C
lbl_806E8420:
/* 806E8420  38 7A 04 D4 */	addi r3, r26, 0x4d4
/* 806E8424  C0 3B 04 D4 */	lfs f1, 0x4d4(r27)
/* 806E8428  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806E842C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 806E8430  4B B8 76 0C */	b cLib_addCalc2__FPffff
/* 806E8434  48 00 00 38 */	b lbl_806E846C
lbl_806E8438:
/* 806E8438  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E843C  D0 1A 05 30 */	stfs f0, 0x530(r26)
/* 806E8440  D0 1A 04 FC */	stfs f0, 0x4fc(r26)
/* 806E8444  C0 1A 07 30 */	lfs f0, 0x730(r26)
/* 806E8448  C0 3A 04 AC */	lfs f1, 0x4ac(r26)
/* 806E844C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 806E8450  40 80 00 14 */	bge lbl_806E8464
/* 806E8454  38 7A 07 30 */	addi r3, r26, 0x730
/* 806E8458  C0 5E 00 7C */	lfs f2, 0x7c(r30)
/* 806E845C  C0 7E 00 58 */	lfs f3, 0x58(r30)
/* 806E8460  4B B8 75 DC */	b cLib_addCalc2__FPffff
lbl_806E8464:
/* 806E8464  C0 1A 07 30 */	lfs f0, 0x730(r26)
/* 806E8468  D0 1A 04 D4 */	stfs f0, 0x4d4(r26)
lbl_806E846C:
/* 806E846C  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E8470  2C 00 00 05 */	cmpwi r0, 5
/* 806E8474  41 82 00 18 */	beq lbl_806E848C
/* 806E8478  2C 00 00 06 */	cmpwi r0, 6
/* 806E847C  41 82 00 10 */	beq lbl_806E848C
/* 806E8480  A8 7A 07 A8 */	lha r3, 0x7a8(r26)
/* 806E8484  38 03 00 01 */	addi r0, r3, 1
/* 806E8488  B0 1A 07 A8 */	sth r0, 0x7a8(r26)
lbl_806E848C:
/* 806E848C  7F 43 D3 78 */	mr r3, r26
/* 806E8490  38 9A 09 C4 */	addi r4, r26, 0x9c4
/* 806E8494  4B 93 22 38 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806E8498  80 1A 08 18 */	lwz r0, 0x818(r26)
/* 806E849C  60 00 00 04 */	ori r0, r0, 4
/* 806E84A0  90 1A 08 18 */	stw r0, 0x818(r26)
/* 806E84A4  38 7A 07 AC */	addi r3, r26, 0x7ac
/* 806E84A8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 806E84AC  C0 5E 00 98 */	lfs f2, 0x98(r30)
/* 806E84B0  4B 98 DA A8 */	b SetWall__12dBgS_AcchCirFff
/* 806E84B4  C0 5E 00 78 */	lfs f2, 0x78(r30)
/* 806E84B8  A8 1A 07 A8 */	lha r0, 0x7a8(r26)
/* 806E84BC  C8 3E 00 88 */	lfd f1, 0x88(r30)
/* 806E84C0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806E84C4  90 01 00 CC */	stw r0, 0xcc(r1)
/* 806E84C8  3C 00 43 30 */	lis r0, 0x4330
/* 806E84CC  90 01 00 C8 */	stw r0, 0xc8(r1)
/* 806E84D0  C8 01 00 C8 */	lfd f0, 0xc8(r1)
/* 806E84D4  EC 00 08 28 */	fsubs f0, f0, f1
/* 806E84D8  EC 02 00 32 */	fmuls f0, f2, f0
/* 806E84DC  FC 00 00 1E */	fctiwz f0, f0
/* 806E84E0  D8 01 00 D0 */	stfd f0, 0xd0(r1)
/* 806E84E4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 806E84E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806E84EC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806E84F0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 806E84F4  7C 43 04 2E */	lfsx f2, r3, r0
/* 806E84F8  C0 3A 07 A4 */	lfs f1, 0x7a4(r26)
/* 806E84FC  C0 1E 00 5C */	lfs f0, 0x5c(r30)
/* 806E8500  EC 00 00 B2 */	fmuls f0, f0, f2
/* 806E8504  EC 01 00 2A */	fadds f0, f1, f0
/* 806E8508  D0 1A 07 68 */	stfs f0, 0x768(r26)
/* 806E850C  C0 1E 00 90 */	lfs f0, 0x90(r30)
/* 806E8510  C0 3A 08 84 */	lfs f1, 0x884(r26)
/* 806E8514  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 806E8518  41 82 00 08 */	beq lbl_806E8520
/* 806E851C  D0 3A 07 30 */	stfs f1, 0x730(r26)
lbl_806E8520:
/* 806E8520  38 7A 07 EC */	addi r3, r26, 0x7ec
/* 806E8524  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806E8528  4B 98 EB EC */	b SetGroundUpY__9dBgS_AcchFf
/* 806E852C  38 7A 07 EC */	addi r3, r26, 0x7ec
/* 806E8530  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806E8534  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806E8538  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806E853C  4B 98 E5 70 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806E8540  88 1A 07 7A */	lbz r0, 0x77a(r26)
/* 806E8544  28 00 00 02 */	cmplwi r0, 2
/* 806E8548  40 82 00 18 */	bne lbl_806E8560
/* 806E854C  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E8550  2C 00 00 05 */	cmpwi r0, 5
/* 806E8554  41 82 00 0C */	beq lbl_806E8560
/* 806E8558  2C 00 00 06 */	cmpwi r0, 6
/* 806E855C  40 82 00 20 */	bne lbl_806E857C
lbl_806E8560:
/* 806E8560  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806E8564  C0 5A 07 30 */	lfs f2, 0x730(r26)
/* 806E8568  EC 20 10 2A */	fadds f1, f0, f2
/* 806E856C  C0 1A 04 D4 */	lfs f0, 0x4d4(r26)
/* 806E8570  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8574  40 80 00 08 */	bge lbl_806E857C
/* 806E8578  D0 5A 04 D4 */	stfs f2, 0x4d4(r26)
lbl_806E857C:
/* 806E857C  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E8580  2C 00 00 03 */	cmpwi r0, 3
/* 806E8584  41 82 00 18 */	beq lbl_806E859C
/* 806E8588  38 7A 04 E6 */	addi r3, r26, 0x4e6
/* 806E858C  A8 9A 04 DE */	lha r4, 0x4de(r26)
/* 806E8590  38 A0 00 08 */	li r5, 8
/* 806E8594  38 C0 08 00 */	li r6, 0x800
/* 806E8598  4B B8 80 70 */	b cLib_addCalcAngleS2__FPssss
lbl_806E859C:
/* 806E859C  4B A7 6E 88 */	b checkNowWolfEyeUp__9daPy_py_cFv
/* 806E85A0  2C 03 00 00 */	cmpwi r3, 0
/* 806E85A4  40 82 00 10 */	bne lbl_806E85B4
/* 806E85A8  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E85AC  2C 00 00 05 */	cmpwi r0, 5
/* 806E85B0  40 82 01 54 */	bne lbl_806E8704
lbl_806E85B4:
/* 806E85B4  88 1A 07 89 */	lbz r0, 0x789(r26)
/* 806E85B8  28 00 00 00 */	cmplwi r0, 0
/* 806E85BC  40 82 01 3C */	bne lbl_806E86F8
/* 806E85C0  38 61 00 28 */	addi r3, r1, 0x28
/* 806E85C4  38 9A 04 A8 */	addi r4, r26, 0x4a8
/* 806E85C8  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 806E85CC  4B B7 E5 68 */	b __mi__4cXyzCFRC3Vec
/* 806E85D0  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 806E85D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E85D8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 806E85DC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E85E0  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 806E85E4  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E85E8  38 61 00 34 */	addi r3, r1, 0x34
/* 806E85EC  4B C5 EB 4C */	b PSVECSquareMag
/* 806E85F0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E85F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E85F8  40 81 00 58 */	ble lbl_806E8650
/* 806E85FC  FC 00 08 34 */	frsqrte f0, f1
/* 806E8600  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E8604  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8608  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E860C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8610  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8614  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8618  FC 02 00 32 */	fmul f0, f2, f0
/* 806E861C  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8620  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8624  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8628  FC 03 00 28 */	fsub f0, f3, f0
/* 806E862C  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8630  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8634  FC 00 00 32 */	fmul f0, f0, f0
/* 806E8638  FC 01 00 32 */	fmul f0, f1, f0
/* 806E863C  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8640  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8644  FC 21 00 32 */	fmul f1, f1, f0
/* 806E8648  FC 20 08 18 */	frsp f1, f1
/* 806E864C  48 00 00 88 */	b lbl_806E86D4
lbl_806E8650:
/* 806E8650  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E8654  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8658  40 80 00 10 */	bge lbl_806E8668
/* 806E865C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E8660  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E8664  48 00 00 70 */	b lbl_806E86D4
lbl_806E8668:
/* 806E8668  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 806E866C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 806E8670  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E8674  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E8678  7C 03 00 00 */	cmpw r3, r0
/* 806E867C  41 82 00 14 */	beq lbl_806E8690
/* 806E8680  40 80 00 40 */	bge lbl_806E86C0
/* 806E8684  2C 03 00 00 */	cmpwi r3, 0
/* 806E8688  41 82 00 20 */	beq lbl_806E86A8
/* 806E868C  48 00 00 34 */	b lbl_806E86C0
lbl_806E8690:
/* 806E8690  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E8694  41 82 00 0C */	beq lbl_806E86A0
/* 806E8698  38 00 00 01 */	li r0, 1
/* 806E869C  48 00 00 28 */	b lbl_806E86C4
lbl_806E86A0:
/* 806E86A0  38 00 00 02 */	li r0, 2
/* 806E86A4  48 00 00 20 */	b lbl_806E86C4
lbl_806E86A8:
/* 806E86A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E86AC  41 82 00 0C */	beq lbl_806E86B8
/* 806E86B0  38 00 00 05 */	li r0, 5
/* 806E86B4  48 00 00 10 */	b lbl_806E86C4
lbl_806E86B8:
/* 806E86B8  38 00 00 03 */	li r0, 3
/* 806E86BC  48 00 00 08 */	b lbl_806E86C4
lbl_806E86C0:
/* 806E86C0  38 00 00 04 */	li r0, 4
lbl_806E86C4:
/* 806E86C4  2C 00 00 01 */	cmpwi r0, 1
/* 806E86C8  40 82 00 0C */	bne lbl_806E86D4
/* 806E86CC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E86D0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E86D4:
/* 806E86D4  C0 1A 07 9C */	lfs f0, 0x79c(r26)
/* 806E86D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E86DC  40 80 00 1C */	bge lbl_806E86F8
/* 806E86E0  7F 43 D3 78 */	mr r3, r26
/* 806E86E4  38 80 00 00 */	li r4, 0
/* 806E86E8  38 A0 00 0A */	li r5, 0xa
/* 806E86EC  4B FF DE D5 */	bl setActionMode__8daE_HP_cFii
/* 806E86F0  38 00 00 01 */	li r0, 1
/* 806E86F4  98 1A 07 89 */	stb r0, 0x789(r26)
lbl_806E86F8:
/* 806E86F8  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 806E86FC  D0 1A 07 94 */	stfs f0, 0x794(r26)
/* 806E8700  48 00 00 0C */	b lbl_806E870C
lbl_806E8704:
/* 806E8704  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E8708  D0 1A 07 94 */	stfs f0, 0x794(r26)
lbl_806E870C:
/* 806E870C  38 7A 07 90 */	addi r3, r26, 0x790
/* 806E8710  C0 3A 07 94 */	lfs f1, 0x794(r26)
/* 806E8714  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806E8718  C0 7E 00 98 */	lfs f3, 0x98(r30)
/* 806E871C  4B B8 73 20 */	b cLib_addCalc2__FPffff
/* 806E8720  C0 3A 07 90 */	lfs f1, 0x790(r26)
/* 806E8724  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806E8728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E872C  40 81 01 B8 */	ble lbl_806E88E4
/* 806E8730  38 61 00 1C */	addi r3, r1, 0x1c
/* 806E8734  38 9A 04 A8 */	addi r4, r26, 0x4a8
/* 806E8738  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 806E873C  4B B7 E3 F8 */	b __mi__4cXyzCFRC3Vec
/* 806E8740  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 806E8744  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 806E8748  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 806E874C  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 806E8750  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 806E8754  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 806E8758  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 806E875C  60 00 00 04 */	ori r0, r0, 4
/* 806E8760  90 1A 05 5C */	stw r0, 0x55c(r26)
/* 806E8764  38 61 00 34 */	addi r3, r1, 0x34
/* 806E8768  4B C5 E9 D0 */	b PSVECSquareMag
/* 806E876C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806E8770  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8774  40 81 00 58 */	ble lbl_806E87CC
/* 806E8778  FC 00 08 34 */	frsqrte f0, f1
/* 806E877C  C8 9E 00 10 */	lfd f4, 0x10(r30)
/* 806E8780  FC 44 00 32 */	fmul f2, f4, f0
/* 806E8784  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 806E8788  FC 00 00 32 */	fmul f0, f0, f0
/* 806E878C  FC 01 00 32 */	fmul f0, f1, f0
/* 806E8790  FC 03 00 28 */	fsub f0, f3, f0
/* 806E8794  FC 02 00 32 */	fmul f0, f2, f0
/* 806E8798  FC 44 00 32 */	fmul f2, f4, f0
/* 806E879C  FC 00 00 32 */	fmul f0, f0, f0
/* 806E87A0  FC 01 00 32 */	fmul f0, f1, f0
/* 806E87A4  FC 03 00 28 */	fsub f0, f3, f0
/* 806E87A8  FC 02 00 32 */	fmul f0, f2, f0
/* 806E87AC  FC 44 00 32 */	fmul f2, f4, f0
/* 806E87B0  FC 00 00 32 */	fmul f0, f0, f0
/* 806E87B4  FC 01 00 32 */	fmul f0, f1, f0
/* 806E87B8  FC 03 00 28 */	fsub f0, f3, f0
/* 806E87BC  FC 02 00 32 */	fmul f0, f2, f0
/* 806E87C0  FC 21 00 32 */	fmul f1, f1, f0
/* 806E87C4  FC 20 08 18 */	frsp f1, f1
/* 806E87C8  48 00 00 88 */	b lbl_806E8850
lbl_806E87CC:
/* 806E87CC  C8 1E 00 20 */	lfd f0, 0x20(r30)
/* 806E87D0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E87D4  40 80 00 10 */	bge lbl_806E87E4
/* 806E87D8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E87DC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 806E87E0  48 00 00 70 */	b lbl_806E8850
lbl_806E87E4:
/* 806E87E4  D0 21 00 08 */	stfs f1, 8(r1)
/* 806E87E8  80 81 00 08 */	lwz r4, 8(r1)
/* 806E87EC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 806E87F0  3C 00 7F 80 */	lis r0, 0x7f80
/* 806E87F4  7C 03 00 00 */	cmpw r3, r0
/* 806E87F8  41 82 00 14 */	beq lbl_806E880C
/* 806E87FC  40 80 00 40 */	bge lbl_806E883C
/* 806E8800  2C 03 00 00 */	cmpwi r3, 0
/* 806E8804  41 82 00 20 */	beq lbl_806E8824
/* 806E8808  48 00 00 34 */	b lbl_806E883C
lbl_806E880C:
/* 806E880C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E8810  41 82 00 0C */	beq lbl_806E881C
/* 806E8814  38 00 00 01 */	li r0, 1
/* 806E8818  48 00 00 28 */	b lbl_806E8840
lbl_806E881C:
/* 806E881C  38 00 00 02 */	li r0, 2
/* 806E8820  48 00 00 20 */	b lbl_806E8840
lbl_806E8824:
/* 806E8824  54 80 02 7F */	clrlwi. r0, r4, 9
/* 806E8828  41 82 00 0C */	beq lbl_806E8834
/* 806E882C  38 00 00 05 */	li r0, 5
/* 806E8830  48 00 00 10 */	b lbl_806E8840
lbl_806E8834:
/* 806E8834  38 00 00 03 */	li r0, 3
/* 806E8838  48 00 00 08 */	b lbl_806E8840
lbl_806E883C:
/* 806E883C  38 00 00 04 */	li r0, 4
lbl_806E8840:
/* 806E8840  2C 00 00 01 */	cmpwi r0, 1
/* 806E8844  40 82 00 0C */	bne lbl_806E8850
/* 806E8848  3C 60 80 45 */	lis r3, __float_nan@ha
/* 806E884C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_806E8850:
/* 806E8850  C0 1A 07 9C */	lfs f0, 0x79c(r26)
/* 806E8854  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806E8858  40 80 00 A4 */	bge lbl_806E88FC
/* 806E885C  7F 43 D3 78 */	mr r3, r26
/* 806E8860  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806E8864  4B 93 1E AC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806E8868  A8 1A 04 DE */	lha r0, 0x4de(r26)
/* 806E886C  7C 03 00 50 */	subf r0, r3, r0
/* 806E8870  7C 03 07 34 */	extsh r3, r0
/* 806E8874  4B C7 C8 5C */	b abs
/* 806E8878  2C 03 40 00 */	cmpwi r3, 0x4000
/* 806E887C  40 80 00 80 */	bge lbl_806E88FC
/* 806E8880  80 1A 07 10 */	lwz r0, 0x710(r26)
/* 806E8884  2C 00 00 00 */	cmpwi r0, 0
/* 806E8888  41 82 00 20 */	beq lbl_806E88A8
/* 806E888C  2C 00 00 01 */	cmpwi r0, 1
/* 806E8890  41 82 00 18 */	beq lbl_806E88A8
/* 806E8894  2C 00 00 03 */	cmpwi r0, 3
/* 806E8898  40 82 00 64 */	bne lbl_806E88FC
/* 806E889C  80 1A 07 14 */	lwz r0, 0x714(r26)
/* 806E88A0  2C 00 00 02 */	cmpwi r0, 2
/* 806E88A4  40 82 00 58 */	bne lbl_806E88FC
lbl_806E88A8:
/* 806E88A8  7F 43 D3 78 */	mr r3, r26
/* 806E88AC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 806E88B0  4B 93 1E 60 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806E88B4  A8 1A 04 E6 */	lha r0, 0x4e6(r26)
/* 806E88B8  7C 03 00 50 */	subf r0, r3, r0
/* 806E88BC  7C 00 00 D0 */	neg r0, r0
/* 806E88C0  7C 1D 07 34 */	extsh r29, r0
/* 806E88C4  2C 1D D8 F0 */	cmpwi r29, -10000
/* 806E88C8  40 80 00 0C */	bge lbl_806E88D4
/* 806E88CC  3B A0 D8 F0 */	li r29, -10000
/* 806E88D0  48 00 00 2C */	b lbl_806E88FC
lbl_806E88D4:
/* 806E88D4  2C 1D 27 10 */	cmpwi r29, 0x2710
/* 806E88D8  40 81 00 24 */	ble lbl_806E88FC
/* 806E88DC  3B A0 27 10 */	li r29, 0x2710
/* 806E88E0  48 00 00 1C */	b lbl_806E88FC
lbl_806E88E4:
/* 806E88E4  80 1A 04 9C */	lwz r0, 0x49c(r26)
/* 806E88E8  54 00 00 3E */	slwi r0, r0, 0
/* 806E88EC  90 1A 04 9C */	stw r0, 0x49c(r26)
/* 806E88F0  80 1A 05 5C */	lwz r0, 0x55c(r26)
/* 806E88F4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806E88F8  90 1A 05 5C */	stw r0, 0x55c(r26)
lbl_806E88FC:
/* 806E88FC  38 7A 07 AA */	addi r3, r26, 0x7aa
/* 806E8900  7F A4 EB 78 */	mr r4, r29
/* 806E8904  38 A0 00 08 */	li r5, 8
/* 806E8908  38 C0 04 00 */	li r6, 0x400
/* 806E890C  4B B8 7C FC */	b cLib_addCalcAngleS2__FPssss
/* 806E8910  88 1A 04 E2 */	lbz r0, 0x4e2(r26)
/* 806E8914  7C 03 07 74 */	extsb r3, r0
/* 806E8918  4B 94 47 54 */	b dComIfGp_getReverb__Fi
/* 806E891C  7C 65 1B 78 */	mr r5, r3
/* 806E8920  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 806E8924  38 80 00 00 */	li r4, 0
/* 806E8928  4B 92 87 88 */	b play__16mDoExt_McaMorfSOFUlSc
/* 806E892C  80 7A 05 C4 */	lwz r3, 0x5c4(r26)
/* 806E8930  38 80 00 00 */	li r4, 0
/* 806E8934  38 A0 00 00 */	li r5, 0
/* 806E8938  38 C0 00 00 */	li r6, 0
/* 806E893C  4B 92 7C 8C */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 806E8940  7F 43 D3 78 */	mr r3, r26
/* 806E8944  38 9A 01 0C */	addi r4, r26, 0x10c
/* 806E8948  4B 93 0B D8 */	b setBallModelEffect__13fopEn_enemy_cFP12dKy_tevstr_c
/* 806E894C  38 7A 05 C8 */	addi r3, r26, 0x5c8
/* 806E8950  30 1C FF FF */	addic r0, r28, -1
/* 806E8954  7C 00 E1 10 */	subfe r0, r0, r28
/* 806E8958  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806E895C  4B BD 92 20 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806E8960  39 61 00 F0 */	addi r11, r1, 0xf0
/* 806E8964  4B C7 98 B8 */	b _restgpr_26
/* 806E8968  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 806E896C  7C 08 03 A6 */	mtlr r0
/* 806E8970  38 21 00 F0 */	addi r1, r1, 0xf0
/* 806E8974  4E 80 00 20 */	blr 
