lbl_801A5288:
/* 801A5288  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801A528C  7C 08 02 A6 */	mflr r0
/* 801A5290  90 01 00 34 */	stw r0, 0x34(r1)
/* 801A5294  39 61 00 30 */	addi r11, r1, 0x30
/* 801A5298  48 1B CF 35 */	bl _savegpr_25
/* 801A529C  7C 7F 1B 78 */	mr r31, r3
/* 801A52A0  3B 60 00 00 */	li r27, 0
/* 801A52A4  3B C0 00 00 */	li r30, 0
/* 801A52A8  7F D9 F3 78 */	mr r25, r30
/* 801A52AC  7F DA F3 78 */	mr r26, r30
lbl_801A52B0:
/* 801A52B0  7C BF F2 14 */	add r5, r31, r30
/* 801A52B4  9B 45 0C 3E */	stb r26, 0xc3e(r5)
/* 801A52B8  88 05 0D 7E */	lbz r0, 0xd7e(r5)
/* 801A52BC  28 00 00 00 */	cmplwi r0, 0
/* 801A52C0  41 82 00 1C */	beq lbl_801A52DC
/* 801A52C4  9B 25 0D 7E */	stb r25, 0xd7e(r5)
/* 801A52C8  38 65 0D 58 */	addi r3, r5, 0xd58
/* 801A52CC  38 85 0D 64 */	addi r4, r5, 0xd64
/* 801A52D0  C0 25 0D 68 */	lfs f1, 0xd68(r5)
/* 801A52D4  38 A0 00 00 */	li r5, 0
/* 801A52D8  48 00 4A 89 */	bl dKy_BossLight_set__FP4cXyzP8_GXColorfUc
lbl_801A52DC:
/* 801A52DC  3B 7B 00 01 */	addi r27, r27, 1
/* 801A52E0  2C 1B 00 06 */	cmpwi r27, 6
/* 801A52E4  3B DE 00 28 */	addi r30, r30, 0x28
/* 801A52E8  41 80 FF C8 */	blt lbl_801A52B0
/* 801A52EC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A52F0  38 A3 CA 54 */	addi r5, r3, g_env_light@l
/* 801A52F4  88 85 12 CE */	lbz r4, 0x12ce(r5)
/* 801A52F8  98 85 12 CD */	stb r4, 0x12cd(r5)
/* 801A52FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A5300  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A5304  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 801A5308  28 00 00 00 */	cmplwi r0, 0
/* 801A530C  40 82 00 28 */	bne lbl_801A5334
/* 801A5310  28 04 00 00 */	cmplwi r4, 0
/* 801A5314  41 82 00 20 */	beq lbl_801A5334
/* 801A5318  28 04 00 03 */	cmplwi r4, 3
/* 801A531C  41 80 00 10 */	blt lbl_801A532C
/* 801A5320  38 00 00 00 */	li r0, 0
/* 801A5324  98 05 12 CE */	stb r0, 0x12ce(r5)
/* 801A5328  48 00 00 0C */	b lbl_801A5334
lbl_801A532C:
/* 801A532C  38 04 00 01 */	addi r0, r4, 1
/* 801A5330  98 05 12 CE */	stb r0, 0x12ce(r5)
lbl_801A5334:
/* 801A5334  88 05 12 CD */	lbz r0, 0x12cd(r5)
/* 801A5338  28 00 00 00 */	cmplwi r0, 0
/* 801A533C  41 82 00 94 */	beq lbl_801A53D0
/* 801A5340  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5344  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5348  88 03 12 C4 */	lbz r0, 0x12c4(r3)
/* 801A534C  28 00 00 FF */	cmplwi r0, 0xff
/* 801A5350  41 82 00 1C */	beq lbl_801A536C
/* 801A5354  98 03 12 C2 */	stb r0, 0x12c2(r3)
/* 801A5358  88 05 12 CE */	lbz r0, 0x12ce(r5)
/* 801A535C  28 00 00 00 */	cmplwi r0, 0
/* 801A5360  40 82 00 0C */	bne lbl_801A536C
/* 801A5364  38 00 00 FF */	li r0, 0xff
/* 801A5368  98 03 12 C4 */	stb r0, 0x12c4(r3)
lbl_801A536C:
/* 801A536C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5370  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5374  88 03 12 C5 */	lbz r0, 0x12c5(r3)
/* 801A5378  28 00 00 FF */	cmplwi r0, 0xff
/* 801A537C  41 82 00 1C */	beq lbl_801A5398
/* 801A5380  98 03 12 C3 */	stb r0, 0x12c3(r3)
/* 801A5384  88 05 12 CE */	lbz r0, 0x12ce(r5)
/* 801A5388  28 00 00 00 */	cmplwi r0, 0
/* 801A538C  40 82 00 0C */	bne lbl_801A5398
/* 801A5390  38 00 00 FF */	li r0, 0xff
/* 801A5394  98 03 12 C5 */	stb r0, 0x12c5(r3)
lbl_801A5398:
/* 801A5398  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A539C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A53A0  C0 23 11 E0 */	lfs f1, 0x11e0(r3)
/* 801A53A4  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A53A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A53AC  4C 41 13 82 */	cror 2, 1, 2
/* 801A53B0  40 82 00 9C */	bne lbl_801A544C
/* 801A53B4  D0 23 11 DC */	stfs f1, 0x11dc(r3)
/* 801A53B8  88 05 12 CE */	lbz r0, 0x12ce(r5)
/* 801A53BC  28 00 00 00 */	cmplwi r0, 0
/* 801A53C0  40 82 00 8C */	bne lbl_801A544C
/* 801A53C4  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A53C8  D0 03 11 E0 */	stfs f0, 0x11e0(r3)
/* 801A53CC  48 00 00 80 */	b lbl_801A544C
lbl_801A53D0:
/* 801A53D0  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A53D4  38 83 CA 54 */	addi r4, r3, g_env_light@l
/* 801A53D8  88 64 12 C2 */	lbz r3, 0x12c2(r4)
/* 801A53DC  88 04 12 C3 */	lbz r0, 0x12c3(r4)
/* 801A53E0  7C 03 00 40 */	cmplw r3, r0
/* 801A53E4  40 82 00 68 */	bne lbl_801A544C
/* 801A53E8  88 04 12 C4 */	lbz r0, 0x12c4(r4)
/* 801A53EC  28 00 00 FF */	cmplwi r0, 0xff
/* 801A53F0  41 82 00 10 */	beq lbl_801A5400
/* 801A53F4  98 04 12 C2 */	stb r0, 0x12c2(r4)
/* 801A53F8  38 00 00 FF */	li r0, 0xff
/* 801A53FC  98 04 12 C4 */	stb r0, 0x12c4(r4)
lbl_801A5400:
/* 801A5400  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5404  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5408  88 A3 12 C5 */	lbz r5, 0x12c5(r3)
/* 801A540C  28 05 00 FF */	cmplwi r5, 0xff
/* 801A5410  41 82 00 14 */	beq lbl_801A5424
/* 801A5414  98 A4 12 C3 */	stb r5, 0x12c3(r4)
/* 801A5418  38 00 00 FF */	li r0, 0xff
/* 801A541C  98 03 12 C5 */	stb r0, 0x12c5(r3)
/* 801A5420  98 A3 12 C8 */	stb r5, 0x12c8(r3)
lbl_801A5424:
/* 801A5424  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5428  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A542C  C0 23 11 E0 */	lfs f1, 0x11e0(r3)
/* 801A5430  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801A5434  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801A5438  4C 41 13 82 */	cror 2, 1, 2
/* 801A543C  40 82 00 10 */	bne lbl_801A544C
/* 801A5440  D0 23 11 DC */	stfs f1, 0x11dc(r3)
/* 801A5444  C0 02 A2 50 */	lfs f0, lit_4507(r2)
/* 801A5448  D0 03 11 E0 */	stfs f0, 0x11e0(r3)
lbl_801A544C:
/* 801A544C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5450  3B 23 CA 54 */	addi r25, r3, g_env_light@l
/* 801A5454  C0 19 12 2C */	lfs f0, 0x122c(r25)
/* 801A5458  D0 19 12 10 */	stfs f0, 0x1210(r25)
/* 801A545C  38 79 11 F8 */	addi r3, r25, 0x11f8
/* 801A5460  C0 39 12 14 */	lfs f1, 0x1214(r25)
/* 801A5464  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5468  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A546C  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A5470  48 0C A5 0D */	bl cLib_addCalc__FPfffff
/* 801A5474  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5478  3B 43 CA 54 */	addi r26, r3, g_env_light@l
/* 801A547C  38 7A 11 FC */	addi r3, r26, 0x11fc
/* 801A5480  C0 3A 12 18 */	lfs f1, 0x1218(r26)
/* 801A5484  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5488  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A548C  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A5490  48 0C A4 ED */	bl cLib_addCalc__FPfffff
/* 801A5494  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5498  3B 63 CA 54 */	addi r27, r3, g_env_light@l
/* 801A549C  38 7B 12 00 */	addi r3, r27, 0x1200
/* 801A54A0  C0 3B 12 1C */	lfs f1, 0x121c(r27)
/* 801A54A4  C0 19 12 10 */	lfs f0, 0x1210(r25)
/* 801A54A8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A54AC  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A54B0  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A54B4  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A54B8  48 0C A4 C5 */	bl cLib_addCalc__FPfffff
/* 801A54BC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A54C0  3B 83 CA 54 */	addi r28, r3, g_env_light@l
/* 801A54C4  38 7C 12 04 */	addi r3, r28, 0x1204
/* 801A54C8  C0 3C 12 20 */	lfs f1, 0x1220(r28)
/* 801A54CC  C0 19 12 10 */	lfs f0, 0x1210(r25)
/* 801A54D0  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A54D4  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A54D8  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A54DC  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A54E0  48 0C A4 9D */	bl cLib_addCalc__FPfffff
/* 801A54E4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A54E8  3B A3 CA 54 */	addi r29, r3, g_env_light@l
/* 801A54EC  38 7D 12 08 */	addi r3, r29, 0x1208
/* 801A54F0  C0 3D 12 24 */	lfs f1, 0x1224(r29)
/* 801A54F4  C0 19 12 10 */	lfs f0, 0x1210(r25)
/* 801A54F8  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A54FC  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5500  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A5504  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A5508  48 0C A4 75 */	bl cLib_addCalc__FPfffff
/* 801A550C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5510  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 801A5514  38 7E 12 0C */	addi r3, r30, 0x120c
/* 801A5518  C0 3E 12 28 */	lfs f1, 0x1228(r30)
/* 801A551C  C0 19 12 10 */	lfs f0, 0x1210(r25)
/* 801A5520  EC 21 00 32 */	fmuls f1, f1, f0
/* 801A5524  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5528  C0 62 A2 EC */	lfs f3, lit_6033(r2)
/* 801A552C  C0 82 A2 68 */	lfs f4, lit_4731(r2)
/* 801A5530  48 0C A4 4D */	bl cLib_addCalc__FPfffff
/* 801A5534  C0 02 A2 48 */	lfs f0, lit_4505(r2)
/* 801A5538  D0 19 12 14 */	stfs f0, 0x1214(r25)
/* 801A553C  D0 1A 12 18 */	stfs f0, 0x1218(r26)
/* 801A5540  D0 1B 12 1C */	stfs f0, 0x121c(r27)
/* 801A5544  D0 1C 12 20 */	stfs f0, 0x1220(r28)
/* 801A5548  D0 1D 12 24 */	stfs f0, 0x1224(r29)
/* 801A554C  D0 1E 12 28 */	stfs f0, 0x1228(r30)
/* 801A5550  D0 19 12 2C */	stfs f0, 0x122c(r25)
/* 801A5554  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5558  38 C3 CA 54 */	addi r6, r3, g_env_light@l
/* 801A555C  C0 06 12 68 */	lfs f0, 0x1268(r6)
/* 801A5560  D0 06 12 6C */	stfs f0, 0x126c(r6)
/* 801A5564  C0 02 A2 A8 */	lfs f0, lit_5346(r2)
/* 801A5568  D0 06 12 68 */	stfs f0, 0x1268(r6)
/* 801A556C  38 60 00 C8 */	li r3, 0xc8
/* 801A5570  38 A0 00 00 */	li r5, 0
/* 801A5574  38 00 00 32 */	li r0, 0x32
/* 801A5578  7C 09 03 A6 */	mtctr r0
lbl_801A557C:
/* 801A557C  7C 86 1A 14 */	add r4, r6, r3
/* 801A5580  90 A4 03 F8 */	stw r5, 0x3f8(r4)
/* 801A5584  38 63 00 04 */	addi r3, r3, 4
/* 801A5588  42 00 FF F4 */	bdnz lbl_801A557C
/* 801A558C  38 00 00 00 */	li r0, 0
/* 801A5590  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5594  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5598  98 03 13 0B */	stb r0, 0x130b(r3)
/* 801A559C  7F E3 FB 78 */	mr r3, r31
/* 801A55A0  4B FF 9F 5D */	bl setDaytime__18dScnKy_env_light_cFv
/* 801A55A4  4B EB 4D 9D */	bl dKyw_wether_proc__Fv
/* 801A55A8  7F E3 FB 78 */	mr r3, r31
/* 801A55AC  4B FF F8 E5 */	bl CalcTevColor__18dScnKy_env_light_cFv
/* 801A55B0  7F E3 FB 78 */	mr r3, r31
/* 801A55B4  4B FF F9 71 */	bl Sndpos__18dScnKy_env_light_cFv
/* 801A55B8  7F E3 FB 78 */	mr r3, r31
/* 801A55BC  4B FF F9 A9 */	bl Eflight_flush_proc__18dScnKy_env_light_cFv
/* 801A55C0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A55C4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801A55C8  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 801A55CC  28 03 00 00 */	cmplwi r3, 0
/* 801A55D0  41 82 00 60 */	beq lbl_801A5630
/* 801A55D4  81 83 06 28 */	lwz r12, 0x628(r3)
/* 801A55D8  81 8C 01 C8 */	lwz r12, 0x1c8(r12)
/* 801A55DC  7D 89 03 A6 */	mtctr r12
/* 801A55E0  4E 80 04 21 */	bctrl 
/* 801A55E4  28 03 00 00 */	cmplwi r3, 0
/* 801A55E8  41 82 00 30 */	beq lbl_801A5618
/* 801A55EC  C0 03 00 00 */	lfs f0, 0(r3)
/* 801A55F0  3C 80 80 43 */	lis r4, g_env_light@ha
/* 801A55F4  38 84 CA 54 */	addi r4, r4, g_env_light@l
/* 801A55F8  D0 04 10 A0 */	stfs f0, 0x10a0(r4)
/* 801A55FC  C0 03 00 04 */	lfs f0, 4(r3)
/* 801A5600  D0 04 10 A4 */	stfs f0, 0x10a4(r4)
/* 801A5604  C0 03 00 08 */	lfs f0, 8(r3)
/* 801A5608  D0 04 10 A8 */	stfs f0, 0x10a8(r4)
/* 801A560C  38 60 00 02 */	li r3, 2
/* 801A5610  48 00 76 CD */	bl dKy_shadow_mode_set__FUc
/* 801A5614  48 00 00 1C */	b lbl_801A5630
lbl_801A5618:
/* 801A5618  38 60 00 02 */	li r3, 2
/* 801A561C  48 00 76 F1 */	bl dKy_shadow_mode_check__FUc
/* 801A5620  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801A5624  41 82 00 0C */	beq lbl_801A5630
/* 801A5628  38 60 00 02 */	li r3, 2
/* 801A562C  48 00 76 C9 */	bl dKy_shadow_mode_reset__FUc
lbl_801A5630:
/* 801A5630  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801A5634  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l
/* 801A5638  38 7E 4E 00 */	addi r3, r30, 0x4e00
/* 801A563C  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 801A5640  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 801A5644  38 84 01 5C */	addi r4, r4, 0x15c
/* 801A5648  48 1C 33 4D */	bl strcmp
/* 801A564C  2C 03 00 00 */	cmpwi r3, 0
/* 801A5650  40 82 00 74 */	bne lbl_801A56C4
/* 801A5654  4B FD BF ED */	bl dCam_getBody__Fv
/* 801A5658  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 801A565C  2C 00 00 04 */	cmpwi r0, 4
/* 801A5660  41 82 00 14 */	beq lbl_801A5674
/* 801A5664  4B FD BF DD */	bl dCam_getBody__Fv
/* 801A5668  80 03 01 A4 */	lwz r0, 0x1a4(r3)
/* 801A566C  2C 00 00 07 */	cmpwi r0, 7
/* 801A5670  40 82 00 34 */	bne lbl_801A56A4
lbl_801A5674:
/* 801A5674  88 1E 4F AD */	lbz r0, 0x4fad(r30)
/* 801A5678  28 00 00 00 */	cmplwi r0, 0
/* 801A567C  41 82 00 28 */	beq lbl_801A56A4
/* 801A5680  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A5684  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A5688  38 63 12 70 */	addi r3, r3, 0x1270
/* 801A568C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801A5690  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A5694  C0 62 A2 64 */	lfs f3, lit_4730(r2)
/* 801A5698  C0 82 A3 40 */	lfs f4, lit_6772(r2)
/* 801A569C  48 0C A2 E1 */	bl cLib_addCalc__FPfffff
/* 801A56A0  48 00 00 24 */	b lbl_801A56C4
lbl_801A56A4:
/* 801A56A4  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801A56A8  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 801A56AC  38 63 12 70 */	addi r3, r3, 0x1270
/* 801A56B0  C0 22 A2 A0 */	lfs f1, lit_5344(r2)
/* 801A56B4  C0 42 A2 60 */	lfs f2, lit_4529(r2)
/* 801A56B8  C0 62 A2 64 */	lfs f3, lit_4730(r2)
/* 801A56BC  C0 82 A3 40 */	lfs f4, lit_6772(r2)
/* 801A56C0  48 0C A2 BD */	bl cLib_addCalc__FPfffff
lbl_801A56C4:
/* 801A56C4  39 61 00 30 */	addi r11, r1, 0x30
/* 801A56C8  48 1B CB 51 */	bl _restgpr_25
/* 801A56CC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801A56D0  7C 08 03 A6 */	mtlr r0
/* 801A56D4  38 21 00 30 */	addi r1, r1, 0x30
/* 801A56D8  4E 80 00 20 */	blr 
