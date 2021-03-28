lbl_8019F4FC:
/* 8019F4FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8019F500  7C 08 02 A6 */	mflr r0
/* 8019F504  90 01 00 24 */	stw r0, 0x24(r1)
/* 8019F508  39 61 00 20 */	addi r11, r1, 0x20
/* 8019F50C  48 1C 2C D1 */	bl _savegpr_29
/* 8019F510  7C 7E 1B 78 */	mr r30, r3
/* 8019F514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019F518  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 8019F51C  A0 1F 00 38 */	lhz r0, 0x38(r31)
/* 8019F520  B0 1E 12 BE */	sth r0, 0x12be(r30)
/* 8019F524  C0 1F 00 34 */	lfs f0, 0x34(r31)
/* 8019F528  D0 1E 12 44 */	stfs f0, 0x1244(r30)
/* 8019F52C  88 1E 12 FB */	lbz r0, 0x12fb(r30)
/* 8019F530  28 00 00 00 */	cmplwi r0, 0
/* 8019F534  40 82 01 D4 */	bne lbl_8019F708
/* 8019F538  48 00 D0 45 */	bl dKy_darkworld_check__Fv
/* 8019F53C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8019F540  40 82 01 6C */	bne lbl_8019F6AC
/* 8019F544  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019F548  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019F54C  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 8019F550  28 00 00 00 */	cmplwi r0, 0
/* 8019F554  40 82 01 B4 */	bne lbl_8019F708
/* 8019F558  48 09 8C 45 */	bl getActor__12dMsgObject_cFv
/* 8019F55C  3B A0 00 01 */	li r29, 1
/* 8019F560  28 03 00 00 */	cmplwi r3, 0
/* 8019F564  41 82 00 14 */	beq lbl_8019F578
/* 8019F568  A0 03 00 F8 */	lhz r0, 0xf8(r3)
/* 8019F56C  28 00 00 02 */	cmplwi r0, 2
/* 8019F570  41 80 00 08 */	blt lbl_8019F578
/* 8019F574  3B A0 00 00 */	li r29, 0
lbl_8019F578:
/* 8019F578  48 00 02 09 */	bl GetTimePass__20dStage_roomControl_cFv
/* 8019F57C  2C 03 00 00 */	cmpwi r3, 0
/* 8019F580  41 82 01 88 */	beq lbl_8019F708
/* 8019F584  88 1E 13 0A */	lbz r0, 0x130a(r30)
/* 8019F588  28 00 00 00 */	cmplwi r0, 0
/* 8019F58C  40 82 01 7C */	bne lbl_8019F708
/* 8019F590  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8019F594  41 82 01 74 */	beq lbl_8019F708
/* 8019F598  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F59C  C0 1E 12 4C */	lfs f0, 0x124c(r30)
/* 8019F5A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F5A4  D0 1E 12 44 */	stfs f0, 0x1244(r30)
/* 8019F5A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8019F5AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8019F5B0  3B A3 4E 00 */	addi r29, r3, 0x4e00
/* 8019F5B4  7F A3 EB 78 */	mr r3, r29
/* 8019F5B8  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019F5BC  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019F5C0  38 84 01 7A */	addi r4, r4, 0x17a
/* 8019F5C4  48 1C 93 D1 */	bl strcmp
/* 8019F5C8  2C 03 00 00 */	cmpwi r3, 0
/* 8019F5CC  41 82 00 20 */	beq lbl_8019F5EC
/* 8019F5D0  7F A3 EB 78 */	mr r3, r29
/* 8019F5D4  3C 80 80 39 */	lis r4, d_kankyo_d_kankyo__stringBase0@ha
/* 8019F5D8  38 84 4C 6C */	addi r4, r4, d_kankyo_d_kankyo__stringBase0@l
/* 8019F5DC  38 84 01 5C */	addi r4, r4, 0x15c
/* 8019F5E0  48 1C 93 B5 */	bl strcmp
/* 8019F5E4  2C 03 00 00 */	cmpwi r3, 0
/* 8019F5E8  40 82 00 78 */	bne lbl_8019F660
lbl_8019F5EC:
/* 8019F5EC  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F5F0  C0 02 A1 F4 */	lfs f0, lit_4358(r2)
/* 8019F5F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F5F8  4C 41 13 82 */	cror 2, 1, 2
/* 8019F5FC  41 82 00 14 */	beq lbl_8019F610
/* 8019F600  C0 02 A2 BC */	lfs f0, lit_5554(r2)
/* 8019F604  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F608  4C 40 13 82 */	cror 2, 0, 2
/* 8019F60C  40 82 00 28 */	bne lbl_8019F634
lbl_8019F610:
/* 8019F610  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F614  C0 1E 12 4C */	lfs f0, 0x124c(r30)
/* 8019F618  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F61C  D0 1E 12 44 */	stfs f0, 0x1244(r30)
/* 8019F620  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F624  C0 1E 12 4C */	lfs f0, 0x124c(r30)
/* 8019F628  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F62C  D0 1E 12 44 */	stfs f0, 0x1244(r30)
/* 8019F630  48 00 00 30 */	b lbl_8019F660
lbl_8019F634:
/* 8019F634  C0 02 A2 C0 */	lfs f0, lit_5555(r2)
/* 8019F638  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F63C  4C 41 13 82 */	cror 2, 1, 2
/* 8019F640  40 82 00 20 */	bne lbl_8019F660
/* 8019F644  C0 02 A2 C4 */	lfs f0, lit_5556(r2)
/* 8019F648  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F64C  4C 40 13 82 */	cror 2, 0, 2
/* 8019F650  40 82 00 10 */	bne lbl_8019F660
/* 8019F654  C0 1E 12 4C */	lfs f0, 0x124c(r30)
/* 8019F658  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F65C  D0 1E 12 44 */	stfs f0, 0x1244(r30)
lbl_8019F660:
/* 8019F660  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F664  48 1C 2A 49 */	bl __cvt_fp2unsigned
/* 8019F668  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 8019F66C  90 61 00 0C */	stw r3, 0xc(r1)
/* 8019F670  3C 00 43 30 */	lis r0, 0x4330
/* 8019F674  90 01 00 08 */	stw r0, 8(r1)
/* 8019F678  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019F67C  EC 20 08 28 */	fsubs f1, f0, f1
/* 8019F680  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F684  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F688  4C 41 13 82 */	cror 2, 1, 2
/* 8019F68C  40 82 00 7C */	bne lbl_8019F708
/* 8019F690  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F694  D0 1E 12 44 */	stfs f0, 0x1244(r30)
/* 8019F698  A0 7E 12 BE */	lhz r3, 0x12be(r30)
/* 8019F69C  38 03 00 01 */	addi r0, r3, 1
/* 8019F6A0  B0 1E 12 BE */	sth r0, 0x12be(r30)
/* 8019F6A4  48 00 E6 5D */	bl dKankyo_DayProc__Fv
/* 8019F6A8  48 00 00 60 */	b lbl_8019F708
lbl_8019F6AC:
/* 8019F6AC  C0 3E 12 50 */	lfs f1, 0x1250(r30)
/* 8019F6B0  C0 1E 12 4C */	lfs f0, 0x124c(r30)
/* 8019F6B4  EC 01 00 2A */	fadds f0, f1, f0
/* 8019F6B8  D0 1E 12 50 */	stfs f0, 0x1250(r30)
/* 8019F6BC  C0 3E 12 50 */	lfs f1, 0x1250(r30)
/* 8019F6C0  48 1C 29 ED */	bl __cvt_fp2unsigned
/* 8019F6C4  C8 22 A2 80 */	lfd f1, lit_4964(r2)
/* 8019F6C8  90 61 00 0C */	stw r3, 0xc(r1)
/* 8019F6CC  3C 00 43 30 */	lis r0, 0x4330
/* 8019F6D0  90 01 00 08 */	stw r0, 8(r1)
/* 8019F6D4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8019F6D8  EC 20 08 28 */	fsubs f1, f0, f1
/* 8019F6DC  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F6E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F6E4  4C 41 13 82 */	cror 2, 1, 2
/* 8019F6E8  40 82 00 18 */	bne lbl_8019F700
/* 8019F6EC  88 7E 12 FD */	lbz r3, 0x12fd(r30)
/* 8019F6F0  38 03 00 01 */	addi r0, r3, 1
/* 8019F6F4  98 1E 12 FD */	stb r0, 0x12fd(r30)
/* 8019F6F8  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F6FC  D0 1E 12 50 */	stfs f0, 0x1250(r30)
lbl_8019F700:
/* 8019F700  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F704  D0 1E 12 44 */	stfs f0, 0x1244(r30)
lbl_8019F708:
/* 8019F708  C0 3E 12 44 */	lfs f1, 0x1244(r30)
/* 8019F70C  C0 02 A2 B0 */	lfs f0, lit_5348(r2)
/* 8019F710  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8019F714  4C 41 13 82 */	cror 2, 1, 2
/* 8019F718  40 82 00 0C */	bne lbl_8019F724
/* 8019F71C  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 8019F720  D0 1E 12 44 */	stfs f0, 0x1244(r30)
lbl_8019F724:
/* 8019F724  C0 1E 12 44 */	lfs f0, 0x1244(r30)
/* 8019F728  D0 1F 00 34 */	stfs f0, 0x34(r31)
/* 8019F72C  48 00 02 E5 */	bl dKy_getdaytime_hour__Fv
/* 8019F730  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8019F734  98 64 04 C4 */	stb r3, 0x4c4(r4)
/* 8019F738  48 00 03 05 */	bl dKy_getdaytime_minute__Fv
/* 8019F73C  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8019F740  98 64 04 C5 */	stb r3, 0x4c5(r4)
/* 8019F744  48 00 93 F5 */	bl dKy_get_dayofweek__Fv
/* 8019F748  80 8D 8D E8 */	lwz r4, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8019F74C  98 64 04 C6 */	stb r3, 0x4c6(r4)
/* 8019F750  A0 1E 12 BE */	lhz r0, 0x12be(r30)
/* 8019F754  B0 1F 00 38 */	sth r0, 0x38(r31)
/* 8019F758  38 00 00 00 */	li r0, 0
/* 8019F75C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 8019F760  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 8019F764  98 03 12 FB */	stb r0, 0x12fb(r3)
/* 8019F768  39 61 00 20 */	addi r11, r1, 0x20
/* 8019F76C  48 1C 2A BD */	bl _restgpr_29
/* 8019F770  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8019F774  7C 08 03 A6 */	mtlr r0
/* 8019F778  38 21 00 20 */	addi r1, r1, 0x20
/* 8019F77C  4E 80 00 20 */	blr 
