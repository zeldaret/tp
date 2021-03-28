lbl_8069F360:
/* 8069F360  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 8069F364  7C 08 02 A6 */	mflr r0
/* 8069F368  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 8069F36C  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 8069F370  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 8069F374  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 8069F378  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 8069F37C  39 61 00 90 */	addi r11, r1, 0x90
/* 8069F380  4B CC 2E 5C */	b _savegpr_29
/* 8069F384  7C 7D 1B 78 */	mr r29, r3
/* 8069F388  3C 60 80 6A */	lis r3, lit_3902@ha
/* 8069F38C  3B E3 19 0C */	addi r31, r3, lit_3902@l
/* 8069F390  38 00 00 06 */	li r0, 6
/* 8069F394  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 8069F398  38 61 00 20 */	addi r3, r1, 0x20
/* 8069F39C  4B 9D 84 14 */	b __ct__18dBgS_ObjGndChk_SplFv
/* 8069F3A0  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8069F3A4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069F3A8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8069F3AC  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8069F3B0  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8069F3B4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069F3B8  C0 1F 00 00 */	lfs f0, 0(r31)
/* 8069F3BC  EC 01 00 2A */	fadds f0, f1, f0
/* 8069F3C0  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069F3C4  38 61 00 20 */	addi r3, r1, 0x20
/* 8069F3C8  38 81 00 14 */	addi r4, r1, 0x14
/* 8069F3CC  4B BC 89 5C */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8069F3D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F3D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F3D8  3B C3 0F 38 */	addi r30, r3, 0xf38
/* 8069F3DC  7F C3 F3 78 */	mr r3, r30
/* 8069F3E0  38 81 00 20 */	addi r4, r1, 0x20
/* 8069F3E4  4B 9D 50 BC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8069F3E8  FF E0 08 90 */	fmr f31, f1
/* 8069F3EC  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8069F3F0  2C 00 00 02 */	cmpwi r0, 2
/* 8069F3F4  41 82 01 00 */	beq lbl_8069F4F4
/* 8069F3F8  40 80 00 14 */	bge lbl_8069F40C
/* 8069F3FC  2C 00 00 00 */	cmpwi r0, 0
/* 8069F400  41 82 00 18 */	beq lbl_8069F418
/* 8069F404  40 80 00 C0 */	bge lbl_8069F4C4
/* 8069F408  48 00 03 0C */	b lbl_8069F714
lbl_8069F40C:
/* 8069F40C  2C 00 00 05 */	cmpwi r0, 5
/* 8069F410  40 80 03 04 */	bge lbl_8069F714
/* 8069F414  48 00 01 6C */	b lbl_8069F580
lbl_8069F418:
/* 8069F418  C0 1F 00 F8 */	lfs f0, 0xf8(r31)
/* 8069F41C  D0 1D 08 40 */	stfs f0, 0x840(r29)
/* 8069F420  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8069F424  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8069F428  80 63 00 00 */	lwz r3, 0(r3)
/* 8069F42C  A8 9D 06 80 */	lha r4, 0x680(r29)
/* 8069F430  4B 96 CF AC */	b mDoMtx_YrotS__FPA4_fs
/* 8069F434  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069F438  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8069F43C  C0 1F 00 4C */	lfs f0, 0x4c(r31)
/* 8069F440  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8069F444  C0 1F 01 20 */	lfs f0, 0x120(r31)
/* 8069F448  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8069F44C  38 61 00 14 */	addi r3, r1, 0x14
/* 8069F450  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8069F454  4B BD 1A 98 */	b MtxPosition__FP4cXyzP4cXyz
/* 8069F458  7F A3 EB 78 */	mr r3, r29
/* 8069F45C  38 80 00 0C */	li r4, 0xc
/* 8069F460  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 8069F464  38 A0 00 02 */	li r5, 2
/* 8069F468  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069F46C  4B FF B6 C9 */	bl anm_init__FP10e_db_classifUcf
/* 8069F470  38 00 00 01 */	li r0, 1
/* 8069F474  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069F478  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 8069F47C  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 8069F480  90 01 00 10 */	stw r0, 0x10(r1)
/* 8069F484  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069F488  38 81 00 10 */	addi r4, r1, 0x10
/* 8069F48C  38 A0 FF FF */	li r5, -1
/* 8069F490  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069F494  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069F498  7D 89 03 A6 */	mtctr r12
/* 8069F49C  4E 80 04 21 */	bctrl 
/* 8069F4A0  38 00 00 01 */	li r0, 1
/* 8069F4A4  98 1D 08 52 */	stb r0, 0x852(r29)
/* 8069F4A8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F4AC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F4B0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8069F4B4  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8069F4B8  64 00 01 00 */	oris r0, r0, 0x100
/* 8069F4BC  90 03 05 88 */	stw r0, 0x588(r3)
/* 8069F4C0  48 00 02 54 */	b lbl_8069F714
lbl_8069F4C4:
/* 8069F4C4  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 8069F4C8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8069F4CC  41 82 00 28 */	beq lbl_8069F4F4
/* 8069F4D0  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 8069F4D4  C0 3F 01 24 */	lfs f1, 0x124(r31)
/* 8069F4D8  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069F4DC  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8069F4E0  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 8069F4E4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069F4E8  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8069F4EC  38 00 00 02 */	li r0, 2
/* 8069F4F0  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_8069F4F4:
/* 8069F4F4  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 8069F4F8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8069F4FC  41 82 02 18 */	beq lbl_8069F714
/* 8069F500  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 8069F504  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8069F508  38 00 00 03 */	li r0, 3
/* 8069F50C  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069F510  38 00 00 32 */	li r0, 0x32
/* 8069F514  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069F518  C0 1D 04 F8 */	lfs f0, 0x4f8(r29)
/* 8069F51C  C0 3F 00 64 */	lfs f1, 0x64(r31)
/* 8069F520  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069F524  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8069F528  C0 1D 05 00 */	lfs f0, 0x500(r29)
/* 8069F52C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8069F530  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8069F534  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069F538  4B BC 84 1C */	b cM_rndF__Ff
/* 8069F53C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8069F540  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F544  40 80 00 10 */	bge lbl_8069F554
/* 8069F548  38 00 40 00 */	li r0, 0x4000
/* 8069F54C  B0 1D 08 60 */	sth r0, 0x860(r29)
/* 8069F550  48 00 00 0C */	b lbl_8069F55C
lbl_8069F554:
/* 8069F554  38 00 C0 00 */	li r0, -16384
/* 8069F558  B0 1D 08 60 */	sth r0, 0x860(r29)
lbl_8069F55C:
/* 8069F55C  38 7D 12 58 */	addi r3, r29, 0x1258
/* 8069F560  38 9D 12 5C */	addi r4, r29, 0x125c
/* 8069F564  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 8069F568  38 DD 04 E4 */	addi r6, r29, 0x4e4
/* 8069F56C  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069F570  38 FD 01 0C */	addi r7, r29, 0x10c
/* 8069F574  39 00 00 01 */	li r8, 1
/* 8069F578  4B 97 DA A8 */	b fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 8069F57C  48 00 01 98 */	b lbl_8069F714
lbl_8069F580:
/* 8069F580  80 1D 10 88 */	lwz r0, 0x1088(r29)
/* 8069F584  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 8069F588  41 82 00 3C */	beq lbl_8069F5C4
/* 8069F58C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069F590  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 8069F594  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 8069F598  A8 1D 06 6C */	lha r0, 0x66c(r29)
/* 8069F59C  2C 00 00 03 */	cmpwi r0, 3
/* 8069F5A0  40 82 00 24 */	bne lbl_8069F5C4
/* 8069F5A4  7F A3 EB 78 */	mr r3, r29
/* 8069F5A8  38 80 00 0E */	li r4, 0xe
/* 8069F5AC  C0 3F 00 40 */	lfs f1, 0x40(r31)
/* 8069F5B0  38 A0 00 00 */	li r5, 0
/* 8069F5B4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069F5B8  4B FF B5 7D */	bl anm_init__FP10e_db_classifUcf
/* 8069F5BC  38 00 00 04 */	li r0, 4
/* 8069F5C0  B0 1D 06 6C */	sth r0, 0x66c(r29)
lbl_8069F5C4:
/* 8069F5C4  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8069F5C8  A8 9D 08 60 */	lha r4, 0x860(r29)
/* 8069F5CC  38 A0 00 04 */	li r5, 4
/* 8069F5D0  38 C0 04 00 */	li r6, 0x400
/* 8069F5D4  4B BD 10 34 */	b cLib_addCalcAngleS2__FPssss
/* 8069F5D8  38 7D 08 4E */	addi r3, r29, 0x84e
/* 8069F5DC  38 80 00 00 */	li r4, 0
/* 8069F5E0  38 A0 00 01 */	li r5, 1
/* 8069F5E4  38 C0 00 96 */	li r6, 0x96
/* 8069F5E8  4B BD 10 20 */	b cLib_addCalcAngleS2__FPssss
/* 8069F5EC  A8 1D 06 94 */	lha r0, 0x694(r29)
/* 8069F5F0  2C 00 00 00 */	cmpwi r0, 0
/* 8069F5F4  40 82 01 20 */	bne lbl_8069F714
/* 8069F5F8  7F A3 EB 78 */	mr r3, r29
/* 8069F5FC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 8069F600  38 A0 00 09 */	li r5, 9
/* 8069F604  38 C0 00 00 */	li r6, 0
/* 8069F608  38 E0 00 08 */	li r7, 8
/* 8069F60C  4B 97 D4 CC */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 8069F610  88 1D 05 B4 */	lbz r0, 0x5b4(r29)
/* 8069F614  28 00 00 01 */	cmplwi r0, 1
/* 8069F618  40 82 00 B8 */	bne lbl_8069F6D0
/* 8069F61C  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8069F620  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 8069F624  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8069F628  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8069F62C  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 8069F630  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 8069F634  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8069F638  D0 1D 04 BC */	stfs f0, 0x4bc(r29)
/* 8069F63C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069F640  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 8069F644  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 8069F648  D0 1D 04 C4 */	stfs f0, 0x4c4(r29)
/* 8069F64C  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8069F650  B0 1D 04 C8 */	sth r0, 0x4c8(r29)
/* 8069F654  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 8069F658  B0 1D 04 CA */	sth r0, 0x4ca(r29)
/* 8069F65C  A8 1D 04 E0 */	lha r0, 0x4e0(r29)
/* 8069F660  B0 1D 04 CC */	sth r0, 0x4cc(r29)
/* 8069F664  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8069F668  98 1D 04 CE */	stb r0, 0x4ce(r29)
/* 8069F66C  88 1D 04 E3 */	lbz r0, 0x4e3(r29)
/* 8069F670  98 1D 04 CF */	stb r0, 0x4cf(r29)
/* 8069F674  C0 1D 04 A8 */	lfs f0, 0x4a8(r29)
/* 8069F678  D0 1D 06 74 */	stfs f0, 0x674(r29)
/* 8069F67C  C0 1D 04 AC */	lfs f0, 0x4ac(r29)
/* 8069F680  D0 1D 06 78 */	stfs f0, 0x678(r29)
/* 8069F684  C0 1D 04 B0 */	lfs f0, 0x4b0(r29)
/* 8069F688  D0 1D 06 7C */	stfs f0, 0x67c(r29)
/* 8069F68C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069F690  D0 1D 06 90 */	stfs f0, 0x690(r29)
/* 8069F694  38 00 00 0A */	li r0, 0xa
/* 8069F698  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8069F69C  38 80 00 00 */	li r4, 0
/* 8069F6A0  B0 9D 06 6C */	sth r4, 0x66c(r29)
/* 8069F6A4  3C 60 80 6A */	lis r3, l_HIO@ha
/* 8069F6A8  38 63 1D A8 */	addi r3, r3, l_HIO@l
/* 8069F6AC  A8 03 00 14 */	lha r0, 0x14(r3)
/* 8069F6B0  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069F6B4  38 00 00 1E */	li r0, 0x1e
/* 8069F6B8  B0 1D 05 62 */	sth r0, 0x562(r29)
/* 8069F6BC  98 9D 08 52 */	stb r4, 0x852(r29)
/* 8069F6C0  38 61 00 20 */	addi r3, r1, 0x20
/* 8069F6C4  38 80 FF FF */	li r4, -1
/* 8069F6C8  4B 9D 81 80 */	b __dt__18dBgS_ObjGndChk_SplFv
/* 8069F6CC  48 00 02 84 */	b lbl_8069F950
lbl_8069F6D0:
/* 8069F6D0  7F A3 EB 78 */	mr r3, r29
/* 8069F6D4  4B 97 A5 A8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8069F6D8  A0 9D 04 94 */	lhz r4, 0x494(r29)
/* 8069F6DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F6E0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F6E4  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 8069F6E8  7C 05 07 74 */	extsb r5, r0
/* 8069F6EC  4B 99 5F 58 */	b onActor__10dSv_info_cFii
/* 8069F6F0  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8069F6F4  54 04 46 3E */	srwi r4, r0, 0x18
/* 8069F6F8  28 04 00 FF */	cmplwi r4, 0xff
/* 8069F6FC  41 82 00 18 */	beq lbl_8069F714
/* 8069F700  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F704  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F708  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8069F70C  7C 05 07 74 */	extsb r5, r0
/* 8069F710  4B 99 5A F0 */	b onSwitch__10dSv_info_cFii
lbl_8069F714:
/* 8069F714  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8069F718  A8 9D 06 80 */	lha r4, 0x680(r29)
/* 8069F71C  3C 84 00 01 */	addis r4, r4, 1
/* 8069F720  38 04 80 00 */	addi r0, r4, -32768
/* 8069F724  7C 04 07 34 */	extsh r4, r0
/* 8069F728  38 A0 00 02 */	li r5, 2
/* 8069F72C  38 C0 10 00 */	li r6, 0x1000
/* 8069F730  4B BD 0E D8 */	b cLib_addCalcAngleS2__FPssss
/* 8069F734  38 7D 04 E4 */	addi r3, r29, 0x4e4
/* 8069F738  38 80 00 00 */	li r4, 0
/* 8069F73C  38 A0 00 02 */	li r5, 2
/* 8069F740  38 C0 08 00 */	li r6, 0x800
/* 8069F744  4B BD 0E C4 */	b cLib_addCalcAngleS2__FPssss
/* 8069F748  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069F74C  38 9D 04 F8 */	addi r4, r29, 0x4f8
/* 8069F750  7C 65 1B 78 */	mr r5, r3
/* 8069F754  4B CA 79 3C */	b PSVECAdd
/* 8069F758  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8069F75C  C0 1F 00 D0 */	lfs f0, 0xd0(r31)
/* 8069F760  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069F764  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8069F768  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8069F76C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8069F770  A8 1D 04 E8 */	lha r0, 0x4e8(r29)
/* 8069F774  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8069F778  7C 63 02 14 */	add r3, r3, r0
/* 8069F77C  C0 63 00 04 */	lfs f3, 4(r3)
/* 8069F780  3C 60 80 6A */	lis r3, l_HIO@ha
/* 8069F784  38 63 1D A8 */	addi r3, r3, l_HIO@l
/* 8069F788  C0 43 00 08 */	lfs f2, 8(r3)
/* 8069F78C  C0 3F 00 F8 */	lfs f1, 0xf8(r31)
/* 8069F790  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8069F794  EC 00 00 F2 */	fmuls f0, f0, f3
/* 8069F798  EC 21 00 2A */	fadds f1, f1, f0
/* 8069F79C  C0 1D 06 90 */	lfs f0, 0x690(r29)
/* 8069F7A0  EC 01 00 32 */	fmuls f0, f1, f0
/* 8069F7A4  EF C2 00 32 */	fmuls f30, f2, f0
/* 8069F7A8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069F7AC  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8069F7B0  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8069F7B4  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8069F7B8  EC 00 F0 28 */	fsubs f0, f0, f30
/* 8069F7BC  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 8069F7C0  38 7D 10 5C */	addi r3, r29, 0x105c
/* 8069F7C4  7F C4 F3 78 */	mr r4, r30
/* 8069F7C8  4B 9D 72 E4 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8069F7CC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069F7D0  EC 00 F0 2A */	fadds f0, f0, f30
/* 8069F7D4  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 8069F7D8  C0 1D 04 C0 */	lfs f0, 0x4c0(r29)
/* 8069F7DC  EC 00 F0 2A */	fadds f0, f0, f30
/* 8069F7E0  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 8069F7E4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 8069F7E8  C0 1F 01 14 */	lfs f0, 0x114(r31)
/* 8069F7EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8069F7F0  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 8069F7F4  40 80 01 0C */	bge lbl_8069F900
/* 8069F7F8  38 00 00 14 */	li r0, 0x14
/* 8069F7FC  B0 1D 06 6A */	sth r0, 0x66a(r29)
/* 8069F800  38 00 00 32 */	li r0, 0x32
/* 8069F804  B0 1D 06 6C */	sth r0, 0x66c(r29)
/* 8069F808  7F A3 EB 78 */	mr r3, r29
/* 8069F80C  38 80 00 0E */	li r4, 0xe
/* 8069F810  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8069F814  38 A0 00 00 */	li r5, 0
/* 8069F818  C0 5F 00 08 */	lfs f2, 8(r31)
/* 8069F81C  4B FF B3 19 */	bl anm_init__FP10e_db_classifUcf
/* 8069F820  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070086@ha */
/* 8069F824  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00070086@l */
/* 8069F828  90 01 00 0C */	stw r0, 0xc(r1)
/* 8069F82C  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069F830  38 81 00 0C */	addi r4, r1, 0xc
/* 8069F834  38 A0 FF FF */	li r5, -1
/* 8069F838  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069F83C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 8069F840  7D 89 03 A6 */	mtctr r12
/* 8069F844  4E 80 04 21 */	bctrl 
/* 8069F848  38 00 00 01 */	li r0, 1
/* 8069F84C  98 1D 08 52 */	stb r0, 0x852(r29)
/* 8069F850  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F854  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F858  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8069F85C  80 03 05 88 */	lwz r0, 0x588(r3)
/* 8069F860  64 00 01 00 */	oris r0, r0, 0x100
/* 8069F864  90 03 05 88 */	stw r0, 0x588(r3)
/* 8069F868  38 00 00 C8 */	li r0, 0xc8
/* 8069F86C  B0 1D 06 9A */	sth r0, 0x69a(r29)
/* 8069F870  38 00 00 50 */	li r0, 0x50
/* 8069F874  B0 1D 06 94 */	sth r0, 0x694(r29)
/* 8069F878  C0 3F 00 08 */	lfs f1, 8(r31)
/* 8069F87C  4B BC 80 D8 */	b cM_rndF__Ff
/* 8069F880  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 8069F884  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F888  40 80 00 10 */	bge lbl_8069F898
/* 8069F88C  38 00 40 00 */	li r0, 0x4000
/* 8069F890  B0 1D 08 60 */	sth r0, 0x860(r29)
/* 8069F894  48 00 00 0C */	b lbl_8069F8A0
lbl_8069F898:
/* 8069F898  38 00 C0 00 */	li r0, -16384
/* 8069F89C  B0 1D 08 60 */	sth r0, 0x860(r29)
lbl_8069F8A0:
/* 8069F8A0  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 8069F8A4  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 8069F8A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F8AC  40 80 00 10 */	bge lbl_8069F8BC
/* 8069F8B0  C0 1F 01 18 */	lfs f0, 0x118(r31)
/* 8069F8B4  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8069F8B8  48 00 00 0C */	b lbl_8069F8C4
lbl_8069F8BC:
/* 8069F8BC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 8069F8C0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_8069F8C4:
/* 8069F8C4  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8069F8C8  C0 3F 01 1C */	lfs f1, 0x11c(r31)
/* 8069F8CC  38 80 00 00 */	li r4, 0
/* 8069F8D0  4B 97 FF AC */	b fopKyM_createWpillar__FPC4cXyzfi
/* 8069F8D4  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 8069F8D8  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 8069F8DC  90 01 00 08 */	stw r0, 8(r1)
/* 8069F8E0  38 7D 05 BC */	addi r3, r29, 0x5bc
/* 8069F8E4  38 81 00 08 */	addi r4, r1, 8
/* 8069F8E8  38 A0 00 00 */	li r5, 0
/* 8069F8EC  38 C0 FF FF */	li r6, -1
/* 8069F8F0  81 9D 05 BC */	lwz r12, 0x5bc(r29)
/* 8069F8F4  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8069F8F8  7D 89 03 A6 */	mtctr r12
/* 8069F8FC  4E 80 04 21 */	bctrl 
lbl_8069F900:
/* 8069F900  C0 3D 04 AC */	lfs f1, 0x4ac(r29)
/* 8069F904  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8069F908  EC 21 00 28 */	fsubs f1, f1, f0
/* 8069F90C  C0 1F 00 BC */	lfs f0, 0xbc(r31)
/* 8069F910  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8069F914  40 81 00 30 */	ble lbl_8069F944
/* 8069F918  7F A3 EB 78 */	mr r3, r29
/* 8069F91C  4B 97 A3 60 */	b fopAcM_delete__FP10fopAc_ac_c
/* 8069F920  80 1D 00 B0 */	lwz r0, 0xb0(r29)
/* 8069F924  54 04 46 3E */	srwi r4, r0, 0x18
/* 8069F928  28 04 00 FF */	cmplwi r4, 0xff
/* 8069F92C  41 82 00 18 */	beq lbl_8069F944
/* 8069F930  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8069F934  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8069F938  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 8069F93C  7C 05 07 74 */	extsb r5, r0
/* 8069F940  4B 99 58 C0 */	b onSwitch__10dSv_info_cFii
lbl_8069F944:
/* 8069F944  38 61 00 20 */	addi r3, r1, 0x20
/* 8069F948  38 80 FF FF */	li r4, -1
/* 8069F94C  4B 9D 7E FC */	b __dt__18dBgS_ObjGndChk_SplFv
lbl_8069F950:
/* 8069F950  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 8069F954  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8069F958  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 8069F95C  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 8069F960  39 61 00 90 */	addi r11, r1, 0x90
/* 8069F964  4B CC 28 C4 */	b _restgpr_29
/* 8069F968  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 8069F96C  7C 08 03 A6 */	mtlr r0
/* 8069F970  38 21 00 B0 */	addi r1, r1, 0xb0
/* 8069F974  4E 80 00 20 */	blr 
