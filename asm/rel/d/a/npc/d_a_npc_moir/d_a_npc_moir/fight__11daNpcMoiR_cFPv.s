lbl_80A7F40C:
/* 80A7F40C  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80A7F410  7C 08 02 A6 */	mflr r0
/* 80A7F414  90 01 00 64 */	stw r0, 0x64(r1)
/* 80A7F418  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80A7F41C  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80A7F420  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7F424  4B 8E 2D B1 */	bl _savegpr_27
/* 80A7F428  7C 7D 1B 78 */	mr r29, r3
/* 80A7F42C  3C 80 80 A8 */	lis r4, m__17daNpcMoiR_Param_c@ha /* 0x80A832AC@ha */
/* 80A7F430  3B C4 32 AC */	addi r30, r4, m__17daNpcMoiR_Param_c@l /* 0x80A832AC@l */
/* 80A7F434  3B 60 00 01 */	li r27, 1
/* 80A7F438  A0 03 0E 08 */	lhz r0, 0xe08(r3)
/* 80A7F43C  2C 00 00 02 */	cmpwi r0, 2
/* 80A7F440  41 82 00 A0 */	beq lbl_80A7F4E0
/* 80A7F444  40 80 05 44 */	bge lbl_80A7F988
/* 80A7F448  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F44C  41 82 00 0C */	beq lbl_80A7F458
/* 80A7F450  48 00 05 38 */	b lbl_80A7F988
/* 80A7F454  48 00 05 34 */	b lbl_80A7F988
lbl_80A7F458:
/* 80A7F458  38 80 00 0F */	li r4, 0xf
/* 80A7F45C  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F460  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80A7F464  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F468  7D 89 03 A6 */	mtctr r12
/* 80A7F46C  4E 80 04 21 */	bctrl 
/* 80A7F470  7F A3 EB 78 */	mr r3, r29
/* 80A7F474  38 80 00 25 */	li r4, 0x25
/* 80A7F478  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F47C  38 A0 00 00 */	li r5, 0
/* 80A7F480  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F484  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F488  7D 89 03 A6 */	mtctr r12
/* 80A7F48C  4E 80 04 21 */	bctrl 
/* 80A7F490  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005003E@ha */
/* 80A7F494  38 03 00 3E */	addi r0, r3, 0x003E /* 0x0005003E@l */
/* 80A7F498  90 01 00 0C */	stw r0, 0xc(r1)
/* 80A7F49C  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A7F4A0  38 81 00 0C */	addi r4, r1, 0xc
/* 80A7F4A4  38 A0 FF FF */	li r5, -1
/* 80A7F4A8  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80A7F4AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A7F4B0  7D 89 03 A6 */	mtctr r12
/* 80A7F4B4  4E 80 04 21 */	bctrl 
/* 80A7F4B8  A8 1D 0E 06 */	lha r0, 0xe06(r29)
/* 80A7F4BC  2C 00 00 02 */	cmpwi r0, 2
/* 80A7F4C0  41 82 00 0C */	beq lbl_80A7F4CC
/* 80A7F4C4  38 00 00 02 */	li r0, 2
/* 80A7F4C8  B0 1D 0E 06 */	sth r0, 0xe06(r29)
lbl_80A7F4CC:
/* 80A7F4CC  38 00 00 00 */	li r0, 0
/* 80A7F4D0  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7F4D4  38 00 00 02 */	li r0, 2
/* 80A7F4D8  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F4DC  48 00 04 AC */	b lbl_80A7F988
lbl_80A7F4E0:
/* 80A7F4E0  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7F4E4  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A7F4E8  40 82 00 14 */	bne lbl_80A7F4FC
/* 80A7F4EC  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7F4F0  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F4F4  41 81 00 08 */	bgt lbl_80A7F4FC
/* 80A7F4F8  3B 60 00 00 */	li r27, 0
lbl_80A7F4FC:
/* 80A7F4FC  7F A3 EB 78 */	mr r3, r29
/* 80A7F500  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7F504  3B E4 61 C0 */	addi r31, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7F508  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A7F50C  4B 59 B2 05 */	bl fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7F510  7C 7C 1B 78 */	mr r28, r3
/* 80A7F514  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A7F518  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F51C  40 82 01 34 */	bne lbl_80A7F650
/* 80A7F520  2C 1B 00 00 */	cmpwi r27, 0
/* 80A7F524  41 82 00 E4 */	beq lbl_80A7F608
/* 80A7F528  C0 5E 04 EC */	lfs f2, 0x4ec(r30)
/* 80A7F52C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A7F530  7C 00 E0 50 */	subf r0, r0, r28
/* 80A7F534  7C 00 07 34 */	extsh r0, r0
/* 80A7F538  C8 3E 05 08 */	lfd f1, 0x508(r30)
/* 80A7F53C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80A7F540  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80A7F544  3C 00 43 30 */	lis r0, 0x4330
/* 80A7F548  90 01 00 28 */	stw r0, 0x28(r1)
/* 80A7F54C  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 80A7F550  EC 00 08 28 */	fsubs f0, f0, f1
/* 80A7F554  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A7F558  FC 00 02 10 */	fabs f0, f0
/* 80A7F55C  FC 00 00 18 */	frsp f0, f0
/* 80A7F560  FC 00 00 1E */	fctiwz f0, f0
/* 80A7F564  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80A7F568  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80A7F56C  2C 00 00 28 */	cmpwi r0, 0x28
/* 80A7F570  40 81 00 98 */	ble lbl_80A7F608
/* 80A7F574  7F A3 EB 78 */	mr r3, r29
/* 80A7F578  38 80 00 12 */	li r4, 0x12
/* 80A7F57C  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F580  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F584  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F588  7D 89 03 A6 */	mtctr r12
/* 80A7F58C  4E 80 04 21 */	bctrl 
/* 80A7F590  3C 60 80 A8 */	lis r3, lit_4762@ha /* 0x80A83BC0@ha */
/* 80A7F594  38 83 3B C0 */	addi r4, r3, lit_4762@l /* 0x80A83BC0@l */
/* 80A7F598  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7F59C  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7F5A0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80A7F5A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A7F5A8  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7F5AC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80A7F5B0  38 61 00 10 */	addi r3, r1, 0x10
/* 80A7F5B4  38 9D 0D DC */	addi r4, r29, 0xddc
/* 80A7F5B8  4B 8E 2A 91 */	bl __ptmf_cmpr
/* 80A7F5BC  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F5C0  40 82 00 28 */	bne lbl_80A7F5E8
/* 80A7F5C4  7F A3 EB 78 */	mr r3, r29
/* 80A7F5C8  38 80 00 26 */	li r4, 0x26
/* 80A7F5CC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F5D0  38 A0 00 00 */	li r5, 0
/* 80A7F5D4  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F5D8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F5DC  7D 89 03 A6 */	mtctr r12
/* 80A7F5E0  4E 80 04 21 */	bctrl 
/* 80A7F5E4  48 00 00 24 */	b lbl_80A7F608
lbl_80A7F5E8:
/* 80A7F5E8  7F A3 EB 78 */	mr r3, r29
/* 80A7F5EC  38 80 00 2A */	li r4, 0x2a
/* 80A7F5F0  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F5F4  38 A0 00 00 */	li r5, 0
/* 80A7F5F8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F5FC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F600  7D 89 03 A6 */	mtctr r12
/* 80A7F604  4E 80 04 21 */	bctrl 
lbl_80A7F608:
/* 80A7F608  B3 9D 09 96 */	sth r28, 0x996(r29)
/* 80A7F60C  38 00 00 00 */	li r0, 0
/* 80A7F610  90 1D 09 68 */	stw r0, 0x968(r29)
/* 80A7F614  A8 7D 08 F2 */	lha r3, 0x8f2(r29)
/* 80A7F618  A8 1D 09 96 */	lha r0, 0x996(r29)
/* 80A7F61C  7C 03 00 00 */	cmpw r3, r0
/* 80A7F620  40 82 00 10 */	bne lbl_80A7F630
/* 80A7F624  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7F628  38 03 00 01 */	addi r0, r3, 1
/* 80A7F62C  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A7F630:
/* 80A7F630  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80A7F634  B0 1D 04 DE */	sth r0, 0x4de(r29)
/* 80A7F638  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F63C  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7F640  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7F644  38 03 00 01 */	addi r0, r3, 1
/* 80A7F648  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7F64C  48 00 00 90 */	b lbl_80A7F6DC
lbl_80A7F650:
/* 80A7F650  2C 00 00 01 */	cmpwi r0, 1
/* 80A7F654  40 82 00 88 */	bne lbl_80A7F6DC
/* 80A7F658  7F A3 EB 78 */	mr r3, r29
/* 80A7F65C  A8 9D 09 96 */	lha r4, 0x996(r29)
/* 80A7F660  38 A0 00 00 */	li r5, 0
/* 80A7F664  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7F668  2C 00 00 25 */	cmpwi r0, 0x25
/* 80A7F66C  40 82 00 14 */	bne lbl_80A7F680
/* 80A7F670  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7F674  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F678  41 81 00 08 */	bgt lbl_80A7F680
/* 80A7F67C  38 A0 00 01 */	li r5, 1
lbl_80A7F680:
/* 80A7F680  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80A7F684  41 82 00 0C */	beq lbl_80A7F690
/* 80A7F688  C0 3E 04 F0 */	lfs f1, 0x4f0(r30)
/* 80A7F68C  48 00 00 08 */	b lbl_80A7F694
lbl_80A7F690:
/* 80A7F690  C0 3E 04 F4 */	lfs f1, 0x4f4(r30)
lbl_80A7F694:
/* 80A7F694  38 A0 00 00 */	li r5, 0
/* 80A7F698  4B 6D 48 5D */	bl turn__8daNpcF_cFsfi
/* 80A7F69C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F6A0  41 82 00 2C */	beq lbl_80A7F6CC
/* 80A7F6A4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F6A8  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7F6AC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F6B0  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
/* 80A7F6B4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F6B8  B0 1D 08 F8 */	sth r0, 0x8f8(r29)
/* 80A7F6BC  80 7D 09 6C */	lwz r3, 0x96c(r29)
/* 80A7F6C0  38 03 00 01 */	addi r0, r3, 1
/* 80A7F6C4  90 1D 09 6C */	stw r0, 0x96c(r29)
/* 80A7F6C8  48 00 00 14 */	b lbl_80A7F6DC
lbl_80A7F6CC:
/* 80A7F6CC  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F6D0  B0 1D 04 E6 */	sth r0, 0x4e6(r29)
/* 80A7F6D4  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 80A7F6D8  B0 1D 08 F2 */	sth r0, 0x8f2(r29)
lbl_80A7F6DC:
/* 80A7F6DC  80 1D 09 6C */	lwz r0, 0x96c(r29)
/* 80A7F6E0  2C 00 00 01 */	cmpwi r0, 1
/* 80A7F6E4  40 81 00 48 */	ble lbl_80A7F72C
/* 80A7F6E8  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7F6EC  2C 00 00 26 */	cmpwi r0, 0x26
/* 80A7F6F0  40 82 00 34 */	bne lbl_80A7F724
/* 80A7F6F4  7F A3 EB 78 */	mr r3, r29
/* 80A7F6F8  38 80 00 19 */	li r4, 0x19
/* 80A7F6FC  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F700  38 A0 00 00 */	li r5, 0
/* 80A7F704  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F708  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F70C  7D 89 03 A6 */	mtctr r12
/* 80A7F710  4E 80 04 21 */	bctrl 
/* 80A7F714  38 60 00 01 */	li r3, 1
/* 80A7F718  38 80 00 02 */	li r4, 2
/* 80A7F71C  48 00 39 ED */	bl func_80A83108
/* 80A7F720  90 7D 0E 00 */	stw r3, 0xe00(r29)
lbl_80A7F724:
/* 80A7F724  38 00 00 00 */	li r0, 0
/* 80A7F728  90 1D 09 6C */	stw r0, 0x96c(r29)
lbl_80A7F72C:
/* 80A7F72C  A8 9D 09 E0 */	lha r4, 0x9e0(r29)
/* 80A7F730  2C 04 00 25 */	cmpwi r4, 0x25
/* 80A7F734  40 82 00 60 */	bne lbl_80A7F794
/* 80A7F738  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7F73C  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F740  40 81 00 54 */	ble lbl_80A7F794
/* 80A7F744  7F A3 EB 78 */	mr r3, r29
/* 80A7F748  38 80 00 12 */	li r4, 0x12
/* 80A7F74C  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F750  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F754  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F758  7D 89 03 A6 */	mtctr r12
/* 80A7F75C  4E 80 04 21 */	bctrl 
/* 80A7F760  7F A3 EB 78 */	mr r3, r29
/* 80A7F764  38 80 00 19 */	li r4, 0x19
/* 80A7F768  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F76C  38 A0 00 00 */	li r5, 0
/* 80A7F770  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F774  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F778  7D 89 03 A6 */	mtctr r12
/* 80A7F77C  4E 80 04 21 */	bctrl 
/* 80A7F780  38 60 00 01 */	li r3, 1
/* 80A7F784  38 80 00 02 */	li r4, 2
/* 80A7F788  48 00 39 81 */	bl func_80A83108
/* 80A7F78C  90 7D 0E 00 */	stw r3, 0xe00(r29)
/* 80A7F790  48 00 00 BC */	b lbl_80A7F84C
lbl_80A7F794:
/* 80A7F794  2C 04 00 18 */	cmpwi r4, 0x18
/* 80A7F798  40 82 00 54 */	bne lbl_80A7F7EC
/* 80A7F79C  A0 7D 09 E2 */	lhz r3, 0x9e2(r29)
/* 80A7F7A0  80 1D 0E 00 */	lwz r0, 0xe00(r29)
/* 80A7F7A4  7C 03 00 00 */	cmpw r3, r0
/* 80A7F7A8  41 80 00 44 */	blt lbl_80A7F7EC
/* 80A7F7AC  7F A3 EB 78 */	mr r3, r29
/* 80A7F7B0  38 80 00 0A */	li r4, 0xa
/* 80A7F7B4  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F7B8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F7BC  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F7C0  7D 89 03 A6 */	mtctr r12
/* 80A7F7C4  4E 80 04 21 */	bctrl 
/* 80A7F7C8  7F A3 EB 78 */	mr r3, r29
/* 80A7F7CC  38 80 00 19 */	li r4, 0x19
/* 80A7F7D0  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F7D4  38 A0 00 00 */	li r5, 0
/* 80A7F7D8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F7DC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F7E0  7D 89 03 A6 */	mtctr r12
/* 80A7F7E4  4E 80 04 21 */	bctrl 
/* 80A7F7E8  48 00 00 64 */	b lbl_80A7F84C
lbl_80A7F7EC:
/* 80A7F7EC  2C 04 00 19 */	cmpwi r4, 0x19
/* 80A7F7F0  40 82 00 5C */	bne lbl_80A7F84C
/* 80A7F7F4  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7F7F8  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F7FC  40 81 00 50 */	ble lbl_80A7F84C
/* 80A7F800  7F A3 EB 78 */	mr r3, r29
/* 80A7F804  38 80 00 12 */	li r4, 0x12
/* 80A7F808  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F80C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F810  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80A7F814  7D 89 03 A6 */	mtctr r12
/* 80A7F818  4E 80 04 21 */	bctrl 
/* 80A7F81C  7F A3 EB 78 */	mr r3, r29
/* 80A7F820  38 80 00 18 */	li r4, 0x18
/* 80A7F824  C0 3E 04 E4 */	lfs f1, 0x4e4(r30)
/* 80A7F828  38 A0 00 00 */	li r5, 0
/* 80A7F82C  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80A7F830  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80A7F834  7D 89 03 A6 */	mtctr r12
/* 80A7F838  4E 80 04 21 */	bctrl 
/* 80A7F83C  38 60 00 01 */	li r3, 1
/* 80A7F840  38 80 00 02 */	li r4, 2
/* 80A7F844  48 00 38 C5 */	bl func_80A83108
/* 80A7F848  90 7D 0E 00 */	stw r3, 0xe00(r29)
lbl_80A7F84C:
/* 80A7F84C  A8 1D 09 E0 */	lha r0, 0x9e0(r29)
/* 80A7F850  2C 00 00 19 */	cmpwi r0, 0x19
/* 80A7F854  40 82 00 68 */	bne lbl_80A7F8BC
/* 80A7F858  A8 1D 09 DA */	lha r0, 0x9da(r29)
/* 80A7F85C  2C 00 00 00 */	cmpwi r0, 0
/* 80A7F860  40 82 00 5C */	bne lbl_80A7F8BC
/* 80A7F864  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7F868  38 63 00 0C */	addi r3, r3, 0xc
/* 80A7F86C  C0 3E 05 28 */	lfs f1, 0x528(r30)
/* 80A7F870  4B 8A 8B BD */	bl checkPass__12J3DFrameCtrlFf
/* 80A7F874  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F878  40 82 00 1C */	bne lbl_80A7F894
/* 80A7F87C  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80A7F880  38 63 00 0C */	addi r3, r3, 0xc
/* 80A7F884  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80A7F888  4B 8A 8B A5 */	bl checkPass__12J3DFrameCtrlFf
/* 80A7F88C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F890  41 82 00 2C */	beq lbl_80A7F8BC
lbl_80A7F894:
/* 80A7F894  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005003F@ha */
/* 80A7F898  38 03 00 3F */	addi r0, r3, 0x003F /* 0x0005003F@l */
/* 80A7F89C  90 01 00 08 */	stw r0, 8(r1)
/* 80A7F8A0  38 7D 0B 48 */	addi r3, r29, 0xb48
/* 80A7F8A4  38 81 00 08 */	addi r4, r1, 8
/* 80A7F8A8  38 A0 FF FF */	li r5, -1
/* 80A7F8AC  81 9D 0B 48 */	lwz r12, 0xb48(r29)
/* 80A7F8B0  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80A7F8B4  7D 89 03 A6 */	mtctr r12
/* 80A7F8B8  4E 80 04 21 */	bctrl 
lbl_80A7F8BC:
/* 80A7F8BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80A7F8C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80A7F8C4  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 80A7F8C8  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80A7F8CC  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80A7F8D0  41 82 00 28 */	beq lbl_80A7F8F8
/* 80A7F8D4  C8 3E 05 30 */	lfd f1, 0x530(r30)
/* 80A7F8D8  C8 5E 05 00 */	lfd f2, 0x500(r30)
/* 80A7F8DC  4B 8E CE A5 */	bl pow
/* 80A7F8E0  FF E0 08 18 */	frsp f31, f1
/* 80A7F8E4  7F A3 EB 78 */	mr r3, r29
/* 80A7F8E8  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80A7F8EC  4B 59 B1 A9 */	bl fopAcM_searchActorDistanceXZ2__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80A7F8F0  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80A7F8F4  40 81 00 94 */	ble lbl_80A7F988
lbl_80A7F8F8:
/* 80A7F8F8  3C 60 80 A8 */	lis r3, lit_5387@ha /* 0x80A83C2C@ha */
/* 80A7F8FC  38 83 3C 2C */	addi r4, r3, lit_5387@l /* 0x80A83C2C@l */
/* 80A7F900  80 64 00 00 */	lwz r3, 0(r4)
/* 80A7F904  80 04 00 04 */	lwz r0, 4(r4)
/* 80A7F908  90 61 00 1C */	stw r3, 0x1c(r1)
/* 80A7F90C  90 01 00 20 */	stw r0, 0x20(r1)
/* 80A7F910  80 04 00 08 */	lwz r0, 8(r4)
/* 80A7F914  90 01 00 24 */	stw r0, 0x24(r1)
/* 80A7F918  38 00 00 03 */	li r0, 3
/* 80A7F91C  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F920  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F924  4B 8E 26 F5 */	bl __ptmf_test
/* 80A7F928  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F92C  41 82 00 18 */	beq lbl_80A7F944
/* 80A7F930  7F A3 EB 78 */	mr r3, r29
/* 80A7F934  38 80 00 00 */	li r4, 0
/* 80A7F938  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F93C  4B 8E 27 49 */	bl __ptmf_scall
/* 80A7F940  60 00 00 00 */	nop 
lbl_80A7F944:
/* 80A7F944  38 00 00 00 */	li r0, 0
/* 80A7F948  B0 1D 0E 08 */	sth r0, 0xe08(r29)
/* 80A7F94C  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80A7F950  80 01 00 20 */	lwz r0, 0x20(r1)
/* 80A7F954  90 7D 0D DC */	stw r3, 0xddc(r29)
/* 80A7F958  90 1D 0D E0 */	stw r0, 0xde0(r29)
/* 80A7F95C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80A7F960  90 1D 0D E4 */	stw r0, 0xde4(r29)
/* 80A7F964  38 7D 0D DC */	addi r3, r29, 0xddc
/* 80A7F968  4B 8E 26 B1 */	bl __ptmf_test
/* 80A7F96C  2C 03 00 00 */	cmpwi r3, 0
/* 80A7F970  41 82 00 18 */	beq lbl_80A7F988
/* 80A7F974  7F A3 EB 78 */	mr r3, r29
/* 80A7F978  38 80 00 00 */	li r4, 0
/* 80A7F97C  39 9D 0D DC */	addi r12, r29, 0xddc
/* 80A7F980  4B 8E 27 05 */	bl __ptmf_scall
/* 80A7F984  60 00 00 00 */	nop 
lbl_80A7F988:
/* 80A7F988  38 60 00 00 */	li r3, 0
/* 80A7F98C  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80A7F990  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80A7F994  39 61 00 50 */	addi r11, r1, 0x50
/* 80A7F998  4B 8E 28 89 */	bl _restgpr_27
/* 80A7F99C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80A7F9A0  7C 08 03 A6 */	mtlr r0
/* 80A7F9A4  38 21 00 60 */	addi r1, r1, 0x60
/* 80A7F9A8  4E 80 00 20 */	blr 
