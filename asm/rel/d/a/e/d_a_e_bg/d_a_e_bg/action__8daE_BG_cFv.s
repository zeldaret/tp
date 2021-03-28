lbl_80689168:
/* 80689168  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 8068916C  7C 08 02 A6 */	mflr r0
/* 80689170  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80689174  DB E1 00 C0 */	stfd f31, 0xc0(r1)
/* 80689178  F3 E1 00 C8 */	psq_st f31, 200(r1), 0, 0 /* qr0 */
/* 8068917C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80689180  4B CD 90 5C */	b _savegpr_29
/* 80689184  7C 7E 1B 78 */	mr r30, r3
/* 80689188  3C 80 80 69 */	lis r4, lit_3768@ha
/* 8068918C  3B E4 A2 44 */	addi r31, r4, lit_3768@l
/* 80689190  4B FF CA 9D */	bl damage_check__8daE_BG_cFv
/* 80689194  38 00 00 00 */	li r0, 0
/* 80689198  98 1E 06 B0 */	stb r0, 0x6b0(r30)
/* 8068919C  3B A0 00 00 */	li r29, 0
/* 806891A0  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 806891A4  28 00 00 07 */	cmplwi r0, 7
/* 806891A8  41 81 00 7C */	bgt lbl_80689224
/* 806891AC  3C 60 80 69 */	lis r3, lit_5159@ha
/* 806891B0  38 63 A3 EC */	addi r3, r3, lit_5159@l
/* 806891B4  54 00 10 3A */	slwi r0, r0, 2
/* 806891B8  7C 03 00 2E */	lwzx r0, r3, r0
/* 806891BC  7C 09 03 A6 */	mtctr r0
/* 806891C0  4E 80 04 20 */	bctr 
lbl_806891C4:
/* 806891C4  7F C3 F3 78 */	mr r3, r30
/* 806891C8  4B FF CD C1 */	bl executeBorn__8daE_BG_cFv
/* 806891CC  48 00 00 58 */	b lbl_80689224
lbl_806891D0:
/* 806891D0  7F C3 F3 78 */	mr r3, r30
/* 806891D4  4B FF D0 3D */	bl executeSwim__8daE_BG_cFv
/* 806891D8  48 00 00 4C */	b lbl_80689224
lbl_806891DC:
/* 806891DC  7F C3 F3 78 */	mr r3, r30
/* 806891E0  4B FF DA B1 */	bl executeAttack__8daE_BG_cFv
/* 806891E4  3B A0 00 01 */	li r29, 1
/* 806891E8  48 00 00 3C */	b lbl_80689224
lbl_806891EC:
/* 806891EC  7F C3 F3 78 */	mr r3, r30
/* 806891F0  4B FF E9 49 */	bl executeDamage__8daE_BG_cFv
/* 806891F4  48 00 00 30 */	b lbl_80689224
lbl_806891F8:
/* 806891F8  7F C3 F3 78 */	mr r3, r30
/* 806891FC  4B FF EB F1 */	bl executeBomb__8daE_BG_cFv
/* 80689200  48 00 00 24 */	b lbl_80689224
lbl_80689204:
/* 80689204  7F C3 F3 78 */	mr r3, r30
/* 80689208  4B FF ED BD */	bl executeBirth__8daE_BG_cFv
/* 8068920C  48 00 00 18 */	b lbl_80689224
lbl_80689210:
/* 80689210  7F C3 F3 78 */	mr r3, r30
/* 80689214  4B FF F1 79 */	bl executeHook__8daE_BG_cFv
/* 80689218  48 00 00 0C */	b lbl_80689224
lbl_8068921C:
/* 8068921C  7F C3 F3 78 */	mr r3, r30
/* 80689220  4B FF F1 B1 */	bl executeEat__8daE_BG_cFv
lbl_80689224:
/* 80689224  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80689228  30 1D FF FF */	addic r0, r29, -1
/* 8068922C  7C 00 E9 10 */	subfe r0, r0, r29
/* 80689230  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80689234  4B C3 89 48 */	b setLinkSearch__15Z2CreatureEnemyFb
/* 80689238  80 1E 06 70 */	lwz r0, 0x670(r30)
/* 8068923C  2C 00 00 00 */	cmpwi r0, 0
/* 80689240  41 82 00 78 */	beq lbl_806892B8
/* 80689244  2C 00 00 03 */	cmpwi r0, 3
/* 80689248  41 82 00 70 */	beq lbl_806892B8
/* 8068924C  38 61 00 10 */	addi r3, r1, 0x10
/* 80689250  4B 9E EA 18 */	b __ct__11dBgS_LinChkFv
/* 80689254  38 61 00 10 */	addi r3, r1, 0x10
/* 80689258  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8068925C  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80689260  80 84 5D 74 */	lwz r4, 0x5d74(r4)
/* 80689264  38 84 00 D8 */	addi r4, r4, 0xd8
/* 80689268  38 BE 05 50 */	addi r5, r30, 0x550
/* 8068926C  7F C6 F3 78 */	mr r6, r30
/* 80689270  4B 9E EA F4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80689274  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80689278  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8068927C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80689280  38 81 00 10 */	addi r4, r1, 0x10
/* 80689284  4B 9E B1 30 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80689288  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8068928C  41 82 00 14 */	beq lbl_806892A0
/* 80689290  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 80689294  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80689298  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 8068929C  48 00 00 10 */	b lbl_806892AC
lbl_806892A0:
/* 806892A0  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806892A4  60 00 00 04 */	ori r0, r0, 4
/* 806892A8  90 1E 05 5C */	stw r0, 0x55c(r30)
lbl_806892AC:
/* 806892AC  38 61 00 10 */	addi r3, r1, 0x10
/* 806892B0  38 80 FF FF */	li r4, -1
/* 806892B4  4B 9E EA 28 */	b __dt__11dBgS_LinChkFv
lbl_806892B8:
/* 806892B8  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 806892BC  2C 00 20 00 */	cmpwi r0, 0x2000
/* 806892C0  40 81 00 0C */	ble lbl_806892CC
/* 806892C4  38 00 20 00 */	li r0, 0x2000
/* 806892C8  B0 1E 06 AC */	sth r0, 0x6ac(r30)
lbl_806892CC:
/* 806892CC  A8 1E 06 AC */	lha r0, 0x6ac(r30)
/* 806892D0  2C 00 E0 00 */	cmpwi r0, -8192
/* 806892D4  40 80 00 0C */	bge lbl_806892E0
/* 806892D8  38 00 E0 00 */	li r0, -8192
/* 806892DC  B0 1E 06 AC */	sth r0, 0x6ac(r30)
lbl_806892E0:
/* 806892E0  38 7E 06 AA */	addi r3, r30, 0x6aa
/* 806892E4  A8 9E 06 AC */	lha r4, 0x6ac(r30)
/* 806892E8  38 A0 00 10 */	li r5, 0x10
/* 806892EC  38 C0 01 00 */	li r6, 0x100
/* 806892F0  38 E0 00 10 */	li r7, 0x10
/* 806892F4  4B BE 72 4C */	b cLib_addCalcAngleS__FPsssss
/* 806892F8  A8 1E 06 A0 */	lha r0, 0x6a0(r30)
/* 806892FC  7C 00 66 70 */	srawi r0, r0, 0xc
/* 80689300  7C 00 01 94 */	addze r0, r0
/* 80689304  C8 3F 00 70 */	lfd f1, 0x70(r31)
/* 80689308  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8068930C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80689310  3C 00 43 30 */	lis r0, 0x4330
/* 80689314  90 01 00 80 */	stw r0, 0x80(r1)
/* 80689318  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8068931C  EF E0 08 28 */	fsubs f31, f0, f1
/* 80689320  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 80689324  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80689328  40 81 00 08 */	ble lbl_80689330
/* 8068932C  FF E0 00 90 */	fmr f31, f0
lbl_80689330:
/* 80689330  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80689334  2C 00 00 00 */	cmpwi r0, 0
/* 80689338  40 80 00 3C */	bge lbl_80689374
/* 8068933C  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 80689340  2C 00 00 00 */	cmpwi r0, 0
/* 80689344  41 80 00 30 */	blt lbl_80689374
/* 80689348  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A7@ha */
/* 8068934C  38 03 02 A7 */	addi r0, r3, 0x02A7 /* 0x000702A7@l */
/* 80689350  90 01 00 0C */	stw r0, 0xc(r1)
/* 80689354  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 80689358  38 81 00 0C */	addi r4, r1, 0xc
/* 8068935C  38 A0 00 00 */	li r5, 0
/* 80689360  38 C0 FF FF */	li r6, -1
/* 80689364  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 80689368  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8068936C  7D 89 03 A6 */	mtctr r12
/* 80689370  4E 80 04 21 */	bctrl 
lbl_80689374:
/* 80689374  88 1E 06 B0 */	lbz r0, 0x6b0(r30)
/* 80689378  28 00 00 00 */	cmplwi r0, 0
/* 8068937C  41 82 00 48 */	beq lbl_806893C4
/* 80689380  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 80689384  2C 00 00 00 */	cmpwi r0, 0
/* 80689388  40 81 00 3C */	ble lbl_806893C4
/* 8068938C  A8 1E 06 9E */	lha r0, 0x69e(r30)
/* 80689390  2C 00 00 00 */	cmpwi r0, 0
/* 80689394  41 81 00 30 */	bgt lbl_806893C4
/* 80689398  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702A7@ha */
/* 8068939C  38 03 02 A7 */	addi r0, r3, 0x02A7 /* 0x000702A7@l */
/* 806893A0  90 01 00 08 */	stw r0, 8(r1)
/* 806893A4  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806893A8  38 81 00 08 */	addi r4, r1, 8
/* 806893AC  38 A0 00 00 */	li r5, 0
/* 806893B0  38 C0 FF FF */	li r6, -1
/* 806893B4  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806893B8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806893BC  7D 89 03 A6 */	mtctr r12
/* 806893C0  4E 80 04 21 */	bctrl 
lbl_806893C4:
/* 806893C4  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806893C8  B0 1E 06 9E */	sth r0, 0x69e(r30)
/* 806893CC  A8 1E 06 9C */	lha r0, 0x69c(r30)
/* 806893D0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 806893D4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 806893D8  38 A3 9A 20 */	addi r5, r3, sincosTable___5JMath@l
/* 806893DC  7C 25 04 2E */	lfsx f1, r5, r0
/* 806893E0  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 806893E4  C8 5F 00 70 */	lfd f2, 0x70(r31)
/* 806893E8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 806893EC  90 01 00 84 */	stw r0, 0x84(r1)
/* 806893F0  3C 80 43 30 */	lis r4, 0x4330
/* 806893F4  90 81 00 80 */	stw r4, 0x80(r1)
/* 806893F8  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 806893FC  EC 00 10 28 */	fsubs f0, f0, f2
/* 80689400  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80689404  EC 00 00 72 */	fmuls f0, f0, f1
/* 80689408  FC 00 00 1E */	fctiwz f0, f0
/* 8068940C  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80689410  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80689414  B0 1E 06 A4 */	sth r0, 0x6a4(r30)
/* 80689418  A8 7E 06 9C */	lha r3, 0x69c(r30)
/* 8068941C  38 03 40 00 */	addi r0, r3, 0x4000
/* 80689420  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80689424  7C 65 04 2E */	lfsx f3, r5, r0
/* 80689428  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 8068942C  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 80689430  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80689434  90 01 00 94 */	stw r0, 0x94(r1)
/* 80689438  90 81 00 90 */	stw r4, 0x90(r1)
/* 8068943C  C8 01 00 90 */	lfd f0, 0x90(r1)
/* 80689440  EC 00 10 28 */	fsubs f0, f0, f2
/* 80689444  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80689448  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8068944C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80689450  FC 00 00 1E */	fctiwz f0, f0
/* 80689454  D8 01 00 98 */	stfd f0, 0x98(r1)
/* 80689458  80 01 00 9C */	lwz r0, 0x9c(r1)
/* 8068945C  B0 1E 06 A6 */	sth r0, 0x6a6(r30)
/* 80689460  A8 7E 06 9C */	lha r3, 0x69c(r30)
/* 80689464  3C 63 00 01 */	addis r3, r3, 1
/* 80689468  38 03 80 00 */	addi r0, r3, -32768
/* 8068946C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80689470  7C 65 04 2E */	lfsx f3, r5, r0
/* 80689474  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80689478  A8 1E 06 A2 */	lha r0, 0x6a2(r30)
/* 8068947C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80689480  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80689484  90 81 00 A0 */	stw r4, 0xa0(r1)
/* 80689488  C8 01 00 A0 */	lfd f0, 0xa0(r1)
/* 8068948C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80689490  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80689494  EC 00 00 F2 */	fmuls f0, f0, f3
/* 80689498  EC 01 00 32 */	fmuls f0, f1, f0
/* 8068949C  FC 00 00 1E */	fctiwz f0, f0
/* 806894A0  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806894A4  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806894A8  B0 1E 06 A8 */	sth r0, 0x6a8(r30)
/* 806894AC  7F C3 F3 78 */	mr r3, r30
/* 806894B0  38 9E 08 CC */	addi r4, r30, 0x8cc
/* 806894B4  4B 99 12 18 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806894B8  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 806894BC  C0 5E 06 84 */	lfs f2, 0x684(r30)
/* 806894C0  FC 00 10 00 */	fcmpu cr0, f0, f2
/* 806894C4  41 82 00 30 */	beq lbl_806894F4
/* 806894C8  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806894CC  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 806894D0  EC 02 00 28 */	fsubs f0, f2, f0
/* 806894D4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806894D8  40 81 00 1C */	ble lbl_806894F4
/* 806894DC  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 806894E0  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 806894E4  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 806894E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806894EC  40 81 00 08 */	ble lbl_806894F4
/* 806894F0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_806894F4:
/* 806894F4  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 806894F8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806894FC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80689500  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80689504  4B 9E D5 A8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80689508  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8068950C  7C 03 07 74 */	extsb r3, r0
/* 80689510  4B 9A 3B 5C */	b dComIfGp_getReverb__Fi
/* 80689514  7C 65 1B 78 */	mr r5, r3
/* 80689518  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 8068951C  38 80 00 00 */	li r4, 0
/* 80689520  4B 98 7B 90 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80689524  E3 E1 00 C8 */	psq_l f31, 200(r1), 0, 0 /* qr0 */
/* 80689528  CB E1 00 C0 */	lfd f31, 0xc0(r1)
/* 8068952C  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80689530  4B CD 8C F8 */	b _restgpr_29
/* 80689534  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80689538  7C 08 03 A6 */	mtlr r0
/* 8068953C  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80689540  4E 80 00 20 */	blr 
