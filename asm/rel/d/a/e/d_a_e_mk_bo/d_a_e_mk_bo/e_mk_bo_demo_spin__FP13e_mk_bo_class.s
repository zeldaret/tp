lbl_8071E200:
/* 8071E200  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8071E204  7C 08 02 A6 */	mflr r0
/* 8071E208  90 01 00 74 */	stw r0, 0x74(r1)
/* 8071E20C  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8071E210  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8071E214  39 61 00 60 */	addi r11, r1, 0x60
/* 8071E218  4B C4 3F C0 */	b _savegpr_28
/* 8071E21C  7C 7D 1B 78 */	mr r29, r3
/* 8071E220  3C 60 80 72 */	lis r3, lit_1109@ha
/* 8071E224  3B C3 F8 20 */	addi r30, r3, lit_1109@l
/* 8071E228  3C 60 80 72 */	lis r3, lit_3776@ha
/* 8071E22C  3B E3 F6 40 */	addi r31, r3, lit_3776@l
/* 8071E230  C3 FF 00 00 */	lfs f31, 0(r31)
/* 8071E234  A8 1D 05 DC */	lha r0, 0x5dc(r29)
/* 8071E238  2C 00 00 02 */	cmpwi r0, 2
/* 8071E23C  41 82 02 3C */	beq lbl_8071E478
/* 8071E240  40 80 00 14 */	bge lbl_8071E254
/* 8071E244  2C 00 00 00 */	cmpwi r0, 0
/* 8071E248  41 82 00 1C */	beq lbl_8071E264
/* 8071E24C  40 80 00 48 */	bge lbl_8071E294
/* 8071E250  48 00 03 B8 */	b lbl_8071E608
lbl_8071E254:
/* 8071E254  2C 00 00 04 */	cmpwi r0, 4
/* 8071E258  41 82 03 B0 */	beq lbl_8071E608
/* 8071E25C  40 80 03 AC */	bge lbl_8071E608
/* 8071E260  48 00 02 D8 */	b lbl_8071E538
lbl_8071E264:
/* 8071E264  D3 FD 04 FC */	stfs f31, 0x4fc(r29)
/* 8071E268  38 00 00 01 */	li r0, 1
/* 8071E26C  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071E270  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8071E274  D0 1D 04 A8 */	stfs f0, 0x4a8(r29)
/* 8071E278  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8071E27C  D0 1D 04 AC */	stfs f0, 0x4ac(r29)
/* 8071E280  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8071E284  D0 1D 04 B0 */	stfs f0, 0x4b0(r29)
/* 8071E288  38 00 00 14 */	li r0, 0x14
/* 8071E28C  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
/* 8071E290  D3 FD 05 2C */	stfs f31, 0x52c(r29)
lbl_8071E294:
/* 8071E294  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200D5@ha */
/* 8071E298  38 03 00 D5 */	addi r0, r3, 0x00D5 /* 0x000200D5@l */
/* 8071E29C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8071E2A0  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071E2A4  38 81 00 34 */	addi r4, r1, 0x34
/* 8071E2A8  38 A0 00 00 */	li r5, 0
/* 8071E2AC  38 C0 FF FF */	li r6, -1
/* 8071E2B0  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 8071E2B4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071E2B8  7D 89 03 A6 */	mtctr r12
/* 8071E2BC  4E 80 04 21 */	bctrl 
/* 8071E2C0  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071E2C4  2C 00 00 01 */	cmpwi r0, 1
/* 8071E2C8  40 82 00 50 */	bne lbl_8071E318
/* 8071E2CC  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8071E2D0  7C 03 07 74 */	extsb r3, r0
/* 8071E2D4  3C 80 00 08 */	lis r4, 0x0008 /* 0x000800BA@ha */
/* 8071E2D8  38 04 00 BA */	addi r0, r4, 0x00BA /* 0x000800BA@l */
/* 8071E2DC  90 01 00 30 */	stw r0, 0x30(r1)
/* 8071E2E0  3C 80 80 45 */	lis r4, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8071E2E4  83 84 13 68 */	lwz r28, mAudioMgrPtr__10Z2AudioMgr@l(r4)
/* 8071E2E8  4B 90 ED 84 */	b dComIfGp_getReverb__Fi
/* 8071E2EC  7C 67 1B 78 */	mr r7, r3
/* 8071E2F0  7F 83 E3 78 */	mr r3, r28
/* 8071E2F4  38 81 00 30 */	addi r4, r1, 0x30
/* 8071E2F8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8071E2FC  38 C0 00 00 */	li r6, 0
/* 8071E300  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8071E304  FC 40 08 90 */	fmr f2, f1
/* 8071E308  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 8071E30C  FC 80 18 90 */	fmr f4, f3
/* 8071E310  39 00 00 00 */	li r8, 0
/* 8071E314  4B B8 D6 70 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8071E318:
/* 8071E318  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071E31C  2C 00 00 00 */	cmpwi r0, 0
/* 8071E320  40 82 00 0C */	bne lbl_8071E32C
/* 8071E324  38 00 00 01 */	li r0, 1
/* 8071E328  B0 1D 05 60 */	sth r0, 0x560(r29)
lbl_8071E32C:
/* 8071E32C  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071E330  2C 00 00 0A */	cmpwi r0, 0xa
/* 8071E334  41 81 00 98 */	bgt lbl_8071E3CC
/* 8071E338  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 8071E33C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 8071E340  40 82 00 8C */	bne lbl_8071E3CC
/* 8071E344  88 1E 00 4C */	lbz r0, 0x4c(r30)
/* 8071E348  7C 00 07 75 */	extsb. r0, r0
/* 8071E34C  40 82 00 30 */	bne lbl_8071E37C
/* 8071E350  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8071E354  D0 1E 00 50 */	stfs f0, 0x50(r30)
/* 8071E358  38 7E 00 50 */	addi r3, r30, 0x50
/* 8071E35C  D0 03 00 04 */	stfs f0, 4(r3)
/* 8071E360  D0 03 00 08 */	stfs f0, 8(r3)
/* 8071E364  3C 80 80 72 */	lis r4, __dt__4cXyzFv@ha
/* 8071E368  38 84 F5 F4 */	addi r4, r4, __dt__4cXyzFv@l
/* 8071E36C  38 BE 00 40 */	addi r5, r30, 0x40
/* 8071E370  4B FF E9 09 */	bl __register_global_object
/* 8071E374  38 00 00 01 */	li r0, 1
/* 8071E378  98 1E 00 4C */	stb r0, 0x4c(r30)
lbl_8071E37C:
/* 8071E37C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8071E380  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8071E384  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8071E388  38 80 00 00 */	li r4, 0
/* 8071E38C  90 81 00 08 */	stw r4, 8(r1)
/* 8071E390  38 00 FF FF */	li r0, -1
/* 8071E394  90 01 00 0C */	stw r0, 0xc(r1)
/* 8071E398  90 81 00 10 */	stw r4, 0x10(r1)
/* 8071E39C  90 81 00 14 */	stw r4, 0x14(r1)
/* 8071E3A0  90 81 00 18 */	stw r4, 0x18(r1)
/* 8071E3A4  38 80 00 00 */	li r4, 0
/* 8071E3A8  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008254@ha */
/* 8071E3AC  38 A5 82 54 */	addi r5, r5, 0x8254 /* 0x00008254@l */
/* 8071E3B0  38 DD 04 A8 */	addi r6, r29, 0x4a8
/* 8071E3B4  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8071E3B8  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 8071E3BC  39 3E 00 50 */	addi r9, r30, 0x50
/* 8071E3C0  39 40 00 FF */	li r10, 0xff
/* 8071E3C4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 8071E3C8  4B 92 E6 C8 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
lbl_8071E3CC:
/* 8071E3CC  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8071E3D0  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 8071E3D4  7C 03 02 14 */	add r0, r3, r0
/* 8071E3D8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8071E3DC  38 7D 06 02 */	addi r3, r29, 0x602
/* 8071E3E0  38 80 20 00 */	li r4, 0x2000
/* 8071E3E4  38 A0 00 02 */	li r5, 2
/* 8071E3E8  38 C0 02 00 */	li r6, 0x200
/* 8071E3EC  4B B5 22 1C */	b cLib_addCalcAngleS2__FPssss
/* 8071E3F0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8071E3F4  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8071E3F8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8071E3FC  EC 21 00 2A */	fadds f1, f1, f0
/* 8071E400  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8071E404  C0 7D 04 FC */	lfs f3, 0x4fc(r29)
/* 8071E408  4B B5 16 34 */	b cLib_addCalc2__FPffff
/* 8071E40C  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8071E410  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 8071E414  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071E418  C0 7F 00 80 */	lfs f3, 0x80(r31)
/* 8071E41C  4B B5 16 20 */	b cLib_addCalc2__FPffff
/* 8071E420  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 8071E424  2C 00 00 00 */	cmpwi r0, 0
/* 8071E428  41 82 01 E0 */	beq lbl_8071E608
/* 8071E42C  38 00 00 00 */	li r0, 0
/* 8071E430  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8071E434  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071E438  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8071E43C  7F A3 EB 78 */	mr r3, r29
/* 8071E440  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071E444  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071E448  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8071E44C  4B 8F C2 C4 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071E450  3C 63 00 01 */	addis r3, r3, 1
/* 8071E454  38 03 80 00 */	addi r0, r3, -32768
/* 8071E458  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8071E45C  38 00 00 00 */	li r0, 0
/* 8071E460  B0 1D 05 EC */	sth r0, 0x5ec(r29)
/* 8071E464  38 00 00 28 */	li r0, 0x28
/* 8071E468  B0 1D 05 F4 */	sth r0, 0x5f4(r29)
/* 8071E46C  38 00 00 02 */	li r0, 2
/* 8071E470  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071E474  48 00 01 94 */	b lbl_8071E608
lbl_8071E478:
/* 8071E478  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200D6@ha */
/* 8071E47C  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000200D6@l */
/* 8071E480  90 01 00 2C */	stw r0, 0x2c(r1)
/* 8071E484  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071E488  38 81 00 2C */	addi r4, r1, 0x2c
/* 8071E48C  38 A0 00 00 */	li r5, 0
/* 8071E490  38 C0 FF FF */	li r6, -1
/* 8071E494  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 8071E498  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071E49C  7D 89 03 A6 */	mtctr r12
/* 8071E4A0  4E 80 04 21 */	bctrl 
/* 8071E4A4  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 8071E4A8  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8071E4AC  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 8071E4B0  7C 03 02 14 */	add r0, r3, r0
/* 8071E4B4  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8071E4B8  A8 1D 05 F4 */	lha r0, 0x5f4(r29)
/* 8071E4BC  2C 00 00 00 */	cmpwi r0, 0
/* 8071E4C0  40 82 01 48 */	bne lbl_8071E608
/* 8071E4C4  A8 7D 04 DE */	lha r3, 0x4de(r29)
/* 8071E4C8  A8 1D 05 EC */	lha r0, 0x5ec(r29)
/* 8071E4CC  7C 03 02 14 */	add r0, r3, r0
/* 8071E4D0  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 8071E4D4  38 7D 05 EC */	addi r3, r29, 0x5ec
/* 8071E4D8  38 80 04 00 */	li r4, 0x400
/* 8071E4DC  38 A0 00 01 */	li r5, 1
/* 8071E4E0  38 C0 01 00 */	li r6, 0x100
/* 8071E4E4  4B B5 21 24 */	b cLib_addCalcAngleS2__FPssss
/* 8071E4E8  7F A3 EB 78 */	mr r3, r29
/* 8071E4EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071E4F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 8071E4F4  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 8071E4F8  4B 8F C2 18 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071E4FC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8071E500  7C 03 00 50 */	subf r0, r3, r0
/* 8071E504  7C 00 07 34 */	extsh r0, r0
/* 8071E508  2C 00 04 00 */	cmpwi r0, 0x400
/* 8071E50C  41 81 00 14 */	bgt lbl_8071E520
/* 8071E510  2C 00 FC 00 */	cmpwi r0, -1024
/* 8071E514  40 81 00 0C */	ble lbl_8071E520
/* 8071E518  38 00 00 03 */	li r0, 3
/* 8071E51C  B0 1D 05 DC */	sth r0, 0x5dc(r29)
lbl_8071E520:
/* 8071E520  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8071E524  38 80 EE 00 */	li r4, -4608
/* 8071E528  38 A0 00 02 */	li r5, 2
/* 8071E52C  38 C0 02 00 */	li r6, 0x200
/* 8071E530  4B B5 20 D8 */	b cLib_addCalcAngleS2__FPssss
/* 8071E534  48 00 00 D4 */	b lbl_8071E608
lbl_8071E538:
/* 8071E538  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200D6@ha */
/* 8071E53C  38 03 00 D6 */	addi r0, r3, 0x00D6 /* 0x000200D6@l */
/* 8071E540  90 01 00 28 */	stw r0, 0x28(r1)
/* 8071E544  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071E548  38 81 00 28 */	addi r4, r1, 0x28
/* 8071E54C  38 A0 00 00 */	li r5, 0
/* 8071E550  38 C0 FF FF */	li r6, -1
/* 8071E554  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 8071E558  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8071E55C  7D 89 03 A6 */	mtctr r12
/* 8071E560  4E 80 04 21 */	bctrl 
/* 8071E564  C3 FF 00 40 */	lfs f31, 0x40(r31)
/* 8071E568  A8 7D 04 E6 */	lha r3, 0x4e6(r29)
/* 8071E56C  A8 1D 06 02 */	lha r0, 0x602(r29)
/* 8071E570  7C 03 02 14 */	add r0, r3, r0
/* 8071E574  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 8071E578  7F A3 EB 78 */	mr r3, r29
/* 8071E57C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 8071E580  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 8071E584  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8071E588  4B 8F C1 88 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071E58C  7C 64 1B 78 */	mr r4, r3
/* 8071E590  38 7D 04 DE */	addi r3, r29, 0x4de
/* 8071E594  38 A0 00 01 */	li r5, 1
/* 8071E598  38 C0 04 00 */	li r6, 0x400
/* 8071E59C  4B B5 20 6C */	b cLib_addCalcAngleS2__FPssss
/* 8071E5A0  38 7D 04 D4 */	addi r3, r29, 0x4d4
/* 8071E5A4  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8071E5A8  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8071E5AC  EC 21 00 2A */	fadds f1, f1, f0
/* 8071E5B0  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 8071E5B4  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 8071E5B8  4B B5 14 84 */	b cLib_addCalc2__FPffff
/* 8071E5BC  7F A3 EB 78 */	mr r3, r29
/* 8071E5C0  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 8071E5C4  4B 8F C3 A0 */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8071E5C8  C0 1F 00 44 */	lfs f0, 0x44(r31)
/* 8071E5CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8071E5D0  40 80 00 38 */	bge lbl_8071E608
/* 8071E5D4  80 1D 04 A4 */	lwz r0, 0x4a4(r29)
/* 8071E5D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 8071E5DC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 8071E5E0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 8071E5E4  38 81 00 20 */	addi r4, r1, 0x20
/* 8071E5E8  4B 8F B2 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 8071E5EC  A8 83 0C 32 */	lha r4, 0xc32(r3)
/* 8071E5F0  38 04 00 01 */	addi r0, r4, 1
/* 8071E5F4  B0 03 0C 32 */	sth r0, 0xc32(r3)
/* 8071E5F8  38 00 00 04 */	li r0, 4
/* 8071E5FC  B0 1D 05 DC */	sth r0, 0x5dc(r29)
/* 8071E600  38 00 00 01 */	li r0, 1
/* 8071E604  98 1D 06 00 */	stb r0, 0x600(r29)
lbl_8071E608:
/* 8071E608  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8071E60C  FC 20 F8 90 */	fmr f1, f31
/* 8071E610  C0 5F 00 04 */	lfs f2, 4(r31)
/* 8071E614  FC 60 10 90 */	fmr f3, f2
/* 8071E618  4B B5 14 24 */	b cLib_addCalc2__FPffff
/* 8071E61C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8071E620  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8071E624  80 63 00 00 */	lwz r3, 0(r3)
/* 8071E628  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 8071E62C  4B 8E DD B0 */	b mDoMtx_YrotS__FPA4_fs
/* 8071E630  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071E634  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8071E638  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8071E63C  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 8071E640  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8071E644  38 61 00 44 */	addi r3, r1, 0x44
/* 8071E648  38 81 00 38 */	addi r4, r1, 0x38
/* 8071E64C  4B B5 28 A0 */	b MtxPosition__FP4cXyzP4cXyz
/* 8071E650  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8071E654  38 81 00 38 */	addi r4, r1, 0x38
/* 8071E658  7C 65 1B 78 */	mr r5, r3
/* 8071E65C  4B C2 8A 34 */	b PSVECAdd
/* 8071E660  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8071E664  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8071E668  40 81 00 3C */	ble lbl_8071E6A4
/* 8071E66C  A8 1D 05 D8 */	lha r0, 0x5d8(r29)
/* 8071E670  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 8071E674  40 82 00 30 */	bne lbl_8071E6A4
/* 8071E678  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007007B@ha */
/* 8071E67C  38 03 00 7B */	addi r0, r3, 0x007B /* 0x0007007B@l */
/* 8071E680  90 01 00 24 */	stw r0, 0x24(r1)
/* 8071E684  38 7D 05 B8 */	addi r3, r29, 0x5b8
/* 8071E688  38 81 00 24 */	addi r4, r1, 0x24
/* 8071E68C  38 A0 00 00 */	li r5, 0
/* 8071E690  38 C0 FF FF */	li r6, -1
/* 8071E694  81 9D 05 C8 */	lwz r12, 0x5c8(r29)
/* 8071E698  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8071E69C  7D 89 03 A6 */	mtctr r12
/* 8071E6A0  4E 80 04 21 */	bctrl 
lbl_8071E6A4:
/* 8071E6A4  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8071E6A8  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8071E6AC  39 61 00 60 */	addi r11, r1, 0x60
/* 8071E6B0  4B C4 3B 74 */	b _restgpr_28
/* 8071E6B4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8071E6B8  7C 08 03 A6 */	mtlr r0
/* 8071E6BC  38 21 00 70 */	addi r1, r1, 0x70
/* 8071E6C0  4E 80 00 20 */	blr 
