lbl_80C324E4:
/* 80C324E4  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 80C324E8  7C 08 02 A6 */	mflr r0
/* 80C324EC  90 01 00 94 */	stw r0, 0x94(r1)
/* 80C324F0  DB E1 00 80 */	stfd f31, 0x80(r1)
/* 80C324F4  F3 E1 00 88 */	psq_st f31, 136(r1), 0, 0 /* qr0 */
/* 80C324F8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C324FC  4B 72 FC CC */	b _savegpr_24
/* 80C32500  7C 7C 1B 78 */	mr r28, r3
/* 80C32504  3C 60 80 C3 */	lis r3, m__18daObj_Kago_Param_c@ha
/* 80C32508  3B E3 3C 80 */	addi r31, r3, m__18daObj_Kago_Param_c@l
/* 80C3250C  38 9F 00 00 */	addi r4, r31, 0
/* 80C32510  C3 E4 00 28 */	lfs f31, 0x28(r4)
/* 80C32514  38 00 00 00 */	li r0, 0
/* 80C32518  B0 01 00 08 */	sth r0, 8(r1)
/* 80C3251C  C0 24 00 08 */	lfs f1, 8(r4)
/* 80C32520  C0 1C 0B 0C */	lfs f0, 0xb0c(r28)
/* 80C32524  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32528  D0 1C 04 EC */	stfs f0, 0x4ec(r28)
/* 80C3252C  D0 1C 04 F0 */	stfs f0, 0x4f0(r28)
/* 80C32530  D0 1C 04 F4 */	stfs f0, 0x4f4(r28)
/* 80C32534  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80C32538  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80C3253C  54 00 06 7E */	clrlwi r0, r0, 0x19
/* 80C32540  98 1C 04 9A */	stb r0, 0x49a(r28)
/* 80C32544  38 00 00 0D */	li r0, 0xd
/* 80C32548  98 1C 05 48 */	stb r0, 0x548(r28)
/* 80C3254C  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C32550  28 00 00 00 */	cmplwi r0, 0
/* 80C32554  40 82 00 2C */	bne lbl_80C32580
/* 80C32558  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80C3255C  FC 00 00 1E */	fctiwz f0, f0
/* 80C32560  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32564  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C32568  98 1C 07 64 */	stb r0, 0x764(r28)
/* 80C3256C  38 7C 07 8C */	addi r3, r28, 0x78c
/* 80C32570  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80C32574  C0 5F 00 80 */	lfs f2, 0x80(r31)
/* 80C32578  4B 44 39 E0 */	b SetWall__12dBgS_AcchCirFff
/* 80C3257C  48 00 00 1C */	b lbl_80C32598
lbl_80C32580:
/* 80C32580  38 00 00 FF */	li r0, 0xff
/* 80C32584  98 1C 07 64 */	stb r0, 0x764(r28)
/* 80C32588  38 7C 07 8C */	addi r3, r28, 0x78c
/* 80C3258C  C0 24 00 18 */	lfs f1, 0x18(r4)
/* 80C32590  C0 44 00 1C */	lfs f2, 0x1c(r4)
/* 80C32594  4B 44 39 C4 */	b SetWall__12dBgS_AcchCirFff
lbl_80C32598:
/* 80C32598  38 7F 00 00 */	addi r3, r31, 0
/* 80C3259C  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C325A0  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80C325A4  3B A0 00 00 */	li r29, 0
/* 80C325A8  80 7C 04 9C */	lwz r3, 0x49c(r28)
/* 80C325AC  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 80C325B0  40 82 00 18 */	bne lbl_80C325C8
/* 80C325B4  54 60 00 01 */	rlwinm. r0, r3, 0, 0, 0
/* 80C325B8  40 82 00 10 */	bne lbl_80C325C8
/* 80C325BC  88 1C 0B A2 */	lbz r0, 0xba2(r28)
/* 80C325C0  28 00 00 00 */	cmplwi r0, 0
/* 80C325C4  41 82 00 08 */	beq lbl_80C325CC
lbl_80C325C8:
/* 80C325C8  3B A0 00 01 */	li r29, 1
lbl_80C325CC:
/* 80C325CC  7F 83 E3 78 */	mr r3, r28
/* 80C325D0  48 00 0E 41 */	bl isDelete__12daObj_Kago_cFv
/* 80C325D4  98 7C 0B 9F */	stb r3, 0xb9f(r28)
/* 80C325D8  2C 1D 00 00 */	cmpwi r29, 0
/* 80C325DC  41 82 01 00 */	beq lbl_80C326DC
/* 80C325E0  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C325E4  28 00 00 00 */	cmplwi r0, 0
/* 80C325E8  40 82 00 60 */	bne lbl_80C32648
/* 80C325EC  38 00 00 00 */	li r0, 0
/* 80C325F0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80C325F4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C325F8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C325FC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 80C32600  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80C32604  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 80C32608  7D 89 03 A6 */	mtctr r12
/* 80C3260C  4E 80 04 21 */	bctrl 
/* 80C32610  38 81 00 10 */	addi r4, r1, 0x10
/* 80C32614  4B 3E 73 A8 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 80C32618  80 01 00 10 */	lwz r0, 0x10(r1)
/* 80C3261C  7C 00 E0 40 */	cmplw r0, r28
/* 80C32620  40 82 00 10 */	bne lbl_80C32630
/* 80C32624  38 60 00 17 */	li r3, 0x17
/* 80C32628  4B 51 A4 C4 */	b daNpcT_onTmpBit__FUl
/* 80C3262C  48 00 00 1C */	b lbl_80C32648
lbl_80C32630:
/* 80C32630  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80C32634  60 00 00 10 */	ori r0, r0, 0x10
/* 80C32638  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80C3263C  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80C32640  60 00 00 80 */	ori r0, r0, 0x80
/* 80C32644  98 1C 04 9A */	stb r0, 0x49a(r28)
lbl_80C32648:
/* 80C32648  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80C3264C  38 80 40 00 */	li r4, 0x4000
/* 80C32650  38 A0 00 04 */	li r5, 4
/* 80C32654  38 C0 20 00 */	li r6, 0x2000
/* 80C32658  4B 63 DF B0 */	b cLib_addCalcAngleS2__FPssss
/* 80C3265C  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32660  54 00 07 34 */	rlwinm r0, r0, 0, 0x1c, 0x1a
/* 80C32664  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C32668  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C3266C  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80C32670  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C32674  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32678  60 00 00 04 */	ori r0, r0, 4
/* 80C3267C  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C32680  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32684  60 00 00 02 */	ori r0, r0, 2
/* 80C32688  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C3268C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32690  D0 1C 0B 54 */	stfs f0, 0xb54(r28)
/* 80C32694  38 00 00 00 */	li r0, 0
/* 80C32698  98 1C 07 64 */	stb r0, 0x764(r28)
/* 80C3269C  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C326A0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C326A4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C326A8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C326AC  D0 1C 0B 14 */	stfs f0, 0xb14(r28)
/* 80C326B0  D0 1C 0B 18 */	stfs f0, 0xb18(r28)
/* 80C326B4  D0 1C 0B 1C */	stfs f0, 0xb1c(r28)
/* 80C326B8  B0 1C 0B 2C */	sth r0, 0xb2c(r28)
/* 80C326BC  B0 1C 0B 2E */	sth r0, 0xb2e(r28)
/* 80C326C0  B0 1C 0B 30 */	sth r0, 0xb30(r28)
/* 80C326C4  D0 1C 05 30 */	stfs f0, 0x530(r28)
/* 80C326C8  98 1C 0B 9C */	stb r0, 0xb9c(r28)
/* 80C326CC  98 1C 0B 9D */	stb r0, 0xb9d(r28)
/* 80C326D0  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 80C326D4  98 1C 0B A1 */	stb r0, 0xba1(r28)
/* 80C326D8  48 00 09 FC */	b lbl_80C330D4
lbl_80C326DC:
/* 80C326DC  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C326E0  28 00 00 00 */	cmplwi r0, 0
/* 80C326E4  40 82 00 0C */	bne lbl_80C326F0
/* 80C326E8  38 60 00 17 */	li r3, 0x17
/* 80C326EC  4B 51 A4 40 */	b daNpcT_offTmpBit__FUl
lbl_80C326F0:
/* 80C326F0  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C326F4  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 80C326F8  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C326FC  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32700  54 00 07 FA */	rlwinm r0, r0, 0, 0x1f, 0x1d
/* 80C32704  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C32708  88 1C 0B A0 */	lbz r0, 0xba0(r28)
/* 80C3270C  28 00 00 00 */	cmplwi r0, 0
/* 80C32710  41 82 00 C0 */	beq lbl_80C327D0
/* 80C32714  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80C32718  FC 00 02 10 */	fabs f0, f0
/* 80C3271C  FC 20 00 18 */	frsp f1, f0
/* 80C32720  3C 60 80 45 */	lis r3, G_CM3D_F_ABS_MIN@ha
/* 80C32724  C0 03 11 80 */	lfs f0, G_CM3D_F_ABS_MIN@l(r3)
/* 80C32728  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C3272C  7C 00 00 26 */	mfcr r0
/* 80C32730  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 80C32734  40 82 00 9C */	bne lbl_80C327D0
/* 80C32738  38 7F 00 00 */	addi r3, r31, 0
/* 80C3273C  C0 23 00 24 */	lfs f1, 0x24(r3)
/* 80C32740  C0 43 00 20 */	lfs f2, 0x20(r3)
/* 80C32744  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 80C32748  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C3274C  FC 00 00 1E */	fctiwz f0, f0
/* 80C32750  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32754  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C32758  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C3275C  D0 3C 04 F8 */	stfs f1, 0x4f8(r28)
/* 80C32760  D0 3C 04 FC */	stfs f1, 0x4fc(r28)
/* 80C32764  D0 3C 05 00 */	stfs f1, 0x500(r28)
/* 80C32768  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C3276C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C32770  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C32774  7C 03 04 2E */	lfsx f0, r3, r0
/* 80C32778  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3277C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32780  7C 63 02 14 */	add r3, r3, r0
/* 80C32784  C0 03 00 04 */	lfs f0, 4(r3)
/* 80C32788  EC 02 00 32 */	fmuls f0, f2, f0
/* 80C3278C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32790  38 00 00 06 */	li r0, 6
/* 80C32794  90 1C 0B 44 */	stw r0, 0xb44(r28)
/* 80C32798  38 00 40 00 */	li r0, 0x4000
/* 80C3279C  B0 1C 0B 70 */	sth r0, 0xb70(r28)
/* 80C327A0  38 00 00 01 */	li r0, 1
/* 80C327A4  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 80C327A8  D0 3C 0B 68 */	stfs f1, 0xb68(r28)
/* 80C327AC  7F 83 E3 78 */	mr r3, r28
/* 80C327B0  4B 3E AA 4C */	b fopAcM_carryOffRevise__FP10fopAc_ac_c
/* 80C327B4  2C 03 00 00 */	cmpwi r3, 0
/* 80C327B8  41 82 03 84 */	beq lbl_80C32B3C
/* 80C327BC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C327C0  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C327C4  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C327C8  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C327CC  48 00 03 70 */	b lbl_80C32B3C
lbl_80C327D0:
/* 80C327D0  3B 40 00 00 */	li r26, 0
/* 80C327D4  3B 60 00 80 */	li r27, 0x80
/* 80C327D8  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C327DC  38 9C 0B 58 */	addi r4, r28, 0xb58
/* 80C327E0  4B 3E B0 B0 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80C327E4  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 80C327E8  C0 3C 0B 58 */	lfs f1, 0xb58(r28)
/* 80C327EC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C327F0  41 82 03 4C */	beq lbl_80C32B3C
/* 80C327F4  C0 1C 0B 54 */	lfs f0, 0xb54(r28)
/* 80C327F8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C327FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C32800  40 80 03 3C */	bge lbl_80C32B3C
/* 80C32804  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C32808  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C3280C  4C 40 13 82 */	cror 2, 0, 2
/* 80C32810  40 82 03 2C */	bne lbl_80C32B3C
/* 80C32814  88 1C 0B 9D */	lbz r0, 0xb9d(r28)
/* 80C32818  28 00 00 00 */	cmplwi r0, 0
/* 80C3281C  40 82 00 A0 */	bne lbl_80C328BC
/* 80C32820  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C32824  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 80C32828  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3282C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32830  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C32834  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C32838  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C3283C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32840  38 00 00 00 */	li r0, 0
/* 80C32844  98 1C 0B 9C */	stb r0, 0xb9c(r28)
/* 80C32848  38 00 00 01 */	li r0, 1
/* 80C3284C  98 1C 0B 9D */	stb r0, 0xb9d(r28)
/* 80C32850  88 1C 0B 9E */	lbz r0, 0xb9e(r28)
/* 80C32854  28 00 00 00 */	cmplwi r0, 0
/* 80C32858  40 82 00 1C */	bne lbl_80C32874
/* 80C3285C  88 1C 0B A1 */	lbz r0, 0xba1(r28)
/* 80C32860  28 00 00 00 */	cmplwi r0, 0
/* 80C32864  40 82 00 10 */	bne lbl_80C32874
/* 80C32868  88 1C 0B A0 */	lbz r0, 0xba0(r28)
/* 80C3286C  28 00 00 00 */	cmplwi r0, 0
/* 80C32870  41 82 00 40 */	beq lbl_80C328B0
lbl_80C32874:
/* 80C32874  7F 83 E3 78 */	mr r3, r28
/* 80C32878  48 00 10 E1 */	bl setWaterPrtcl__12daObj_Kago_cFv
/* 80C3287C  3B 40 00 01 */	li r26, 1
/* 80C32880  88 1C 0B 9E */	lbz r0, 0xb9e(r28)
/* 80C32884  28 00 00 00 */	cmplwi r0, 0
/* 80C32888  40 82 00 10 */	bne lbl_80C32898
/* 80C3288C  88 1C 0B A1 */	lbz r0, 0xba1(r28)
/* 80C32890  28 00 00 00 */	cmplwi r0, 0
/* 80C32894  41 82 00 1C */	beq lbl_80C328B0
lbl_80C32898:
/* 80C32898  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C3289C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C328A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C328A4  40 80 00 0C */	bge lbl_80C328B0
/* 80C328A8  C0 1F 00 94 */	lfs f0, 0x94(r31)
/* 80C328AC  D0 1C 0B 64 */	stfs f0, 0xb64(r28)
lbl_80C328B0:
/* 80C328B0  38 00 00 00 */	li r0, 0
/* 80C328B4  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 80C328B8  98 1C 0B A1 */	stb r0, 0xba1(r28)
lbl_80C328BC:
/* 80C328BC  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80C328C0  38 9C 07 E0 */	addi r4, r28, 0x7e0
/* 80C328C4  38 A1 00 38 */	addi r5, r1, 0x38
/* 80C328C8  38 C1 00 0C */	addi r6, r1, 0xc
/* 80C328CC  38 E0 00 00 */	li r7, 0
/* 80C328D0  4B 3E B0 D8 */	b fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 80C328D4  2C 03 00 00 */	cmpwi r3, 0
/* 80C328D8  41 82 00 FC */	beq lbl_80C329D4
/* 80C328DC  38 61 00 14 */	addi r3, r1, 0x14
/* 80C328E0  38 81 00 38 */	addi r4, r1, 0x38
/* 80C328E4  4B 63 46 64 */	b normalizeZP__4cXyzFv
/* 80C328E8  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C328EC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80C328F0  4B 63 4D 84 */	b cM_atan2s__Fff
/* 80C328F4  7C 64 1B 78 */	mr r4, r3
/* 80C328F8  38 7C 04 DE */	addi r3, r28, 0x4de
/* 80C328FC  38 A0 00 04 */	li r5, 4
/* 80C32900  38 C0 02 00 */	li r6, 0x200
/* 80C32904  4B 63 DD 04 */	b cLib_addCalcAngleS2__FPssss
/* 80C32908  2C 1A 00 00 */	cmpwi r26, 0
/* 80C3290C  41 82 00 14 */	beq lbl_80C32920
/* 80C32910  C0 21 00 38 */	lfs f1, 0x38(r1)
/* 80C32914  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80C32918  4B 63 4D 5C */	b cM_atan2s__Fff
/* 80C3291C  B0 7C 04 DE */	sth r3, 0x4de(r28)
lbl_80C32920:
/* 80C32920  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C32924  7C 1B 01 D6 */	mullw r0, r27, r0
/* 80C32928  7C 1B 07 34 */	extsh r27, r0
/* 80C3292C  38 7C 0B 2E */	addi r3, r28, 0xb2e
/* 80C32930  A8 1C 0B 2E */	lha r0, 0xb2e(r28)
/* 80C32934  2C 00 00 00 */	cmpwi r0, 0
/* 80C32938  7F 60 DB 78 */	mr r0, r27
/* 80C3293C  40 80 00 08 */	bge lbl_80C32944
/* 80C32940  7C 1B 00 D0 */	neg r0, r27
lbl_80C32944:
/* 80C32944  7C 04 07 34 */	extsh r4, r0
/* 80C32948  38 A0 00 10 */	li r5, 0x10
/* 80C3294C  4B 63 E2 44 */	b cLib_chaseAngleS__FPsss
/* 80C32950  88 1C 0B 9C */	lbz r0, 0xb9c(r28)
/* 80C32954  28 00 00 00 */	cmplwi r0, 0
/* 80C32958  41 82 00 40 */	beq lbl_80C32998
/* 80C3295C  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C32960  C0 5F 00 98 */	lfs f2, 0x98(r31)
/* 80C32964  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C32968  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80C3296C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C32970  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C32974  3C 00 43 30 */	lis r0, 0x4330
/* 80C32978  90 01 00 48 */	stw r0, 0x48(r1)
/* 80C3297C  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C32980  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C32984  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C32988  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C3298C  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80C32990  4B 63 D0 AC */	b cLib_addCalc2__FPffff
/* 80C32994  48 00 00 50 */	b lbl_80C329E4
lbl_80C32998:
/* 80C32998  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C3299C  C0 5F 00 A4 */	lfs f2, 0xa4(r31)
/* 80C329A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80C329A4  C8 3F 00 F0 */	lfd f1, 0xf0(r31)
/* 80C329A8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C329AC  90 01 00 4C */	stw r0, 0x4c(r1)
/* 80C329B0  3C 00 43 30 */	lis r0, 0x4330
/* 80C329B4  90 01 00 48 */	stw r0, 0x48(r1)
/* 80C329B8  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 80C329BC  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C329C0  EC 22 00 32 */	fmuls f1, f2, f0
/* 80C329C4  C0 5F 00 9C */	lfs f2, 0x9c(r31)
/* 80C329C8  C0 7F 00 A0 */	lfs f3, 0xa0(r31)
/* 80C329CC  4B 63 D0 70 */	b cLib_addCalc2__FPffff
/* 80C329D0  48 00 00 14 */	b lbl_80C329E4
lbl_80C329D4:
/* 80C329D4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80C329D8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C329DC  C0 5F 00 8C */	lfs f2, 0x8c(r31)
/* 80C329E0  4B 63 DD 60 */	b cLib_chaseF__FPfff
lbl_80C329E4:
/* 80C329E4  80 1C 0B 48 */	lwz r0, 0xb48(r28)
/* 80C329E8  2C 00 00 00 */	cmpwi r0, 0
/* 80C329EC  40 82 00 9C */	bne lbl_80C32A88
/* 80C329F0  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C329F4  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80C329F8  41 82 00 90 */	beq lbl_80C32A88
/* 80C329FC  7F 83 E3 78 */	mr r3, r28
/* 80C32A00  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C32A04  38 A1 00 08 */	addi r5, r1, 8
/* 80C32A08  48 00 0C 19 */	bl getWallAngle__12daObj_Kago_cFsPs
/* 80C32A0C  2C 03 00 00 */	cmpwi r3, 0
/* 80C32A10  41 82 00 30 */	beq lbl_80C32A40
/* 80C32A14  A8 01 00 08 */	lha r0, 8(r1)
/* 80C32A18  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C32A1C  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80C32A20  4B 63 4F 6C */	b cM_rndFX__Ff
/* 80C32A24  FC 00 08 1E */	fctiwz f0, f1
/* 80C32A28  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32A2C  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80C32A30  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C32A34  7C 00 1A 14 */	add r0, r0, r3
/* 80C32A38  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C32A3C  48 00 00 30 */	b lbl_80C32A6C
lbl_80C32A40:
/* 80C32A40  C0 3F 00 A8 */	lfs f1, 0xa8(r31)
/* 80C32A44  4B 63 4F 48 */	b cM_rndFX__Ff
/* 80C32A48  FC 00 08 1E */	fctiwz f0, f1
/* 80C32A4C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32A50  80 61 00 4C */	lwz r3, 0x4c(r1)
/* 80C32A54  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C32A58  7C 00 1A 14 */	add r0, r0, r3
/* 80C32A5C  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C32A60  A8 7C 04 DE */	lha r3, 0x4de(r28)
/* 80C32A64  38 03 80 00 */	addi r0, r3, -32768
/* 80C32A68  B0 1C 04 DE */	sth r0, 0x4de(r28)
lbl_80C32A6C:
/* 80C32A6C  A8 1C 0B 2E */	lha r0, 0xb2e(r28)
/* 80C32A70  7C 00 00 D0 */	neg r0, r0
/* 80C32A74  7C 00 0E 70 */	srawi r0, r0, 1
/* 80C32A78  7C 00 01 94 */	addze r0, r0
/* 80C32A7C  B0 1C 0B 2E */	sth r0, 0xb2e(r28)
/* 80C32A80  38 00 00 0A */	li r0, 0xa
/* 80C32A84  90 1C 0B 48 */	stw r0, 0xb48(r28)
lbl_80C32A88:
/* 80C32A88  88 1C 0B 9C */	lbz r0, 0xb9c(r28)
/* 80C32A8C  28 00 00 00 */	cmplwi r0, 0
/* 80C32A90  41 82 00 30 */	beq lbl_80C32AC0
/* 80C32A94  38 7C 04 D4 */	addi r3, r28, 0x4d4
/* 80C32A98  C0 1C 0B 58 */	lfs f0, 0xb58(r28)
/* 80C32A9C  EC 20 F8 28 */	fsubs f1, f0, f31
/* 80C32AA0  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80C32AA4  C0 7F 00 AC */	lfs f3, 0xac(r31)
/* 80C32AA8  4B 63 CF 94 */	b cLib_addCalc2__FPffff
/* 80C32AAC  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32AB0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32AB4  7F 83 E3 78 */	mr r3, r28
/* 80C32AB8  48 00 0F A1 */	bl setHamonPrtcl__12daObj_Kago_cFv
/* 80C32ABC  48 00 00 78 */	b lbl_80C32B34
lbl_80C32AC0:
/* 80C32AC0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C32AC4  EC 20 F8 2A */	fadds f1, f0, f31
/* 80C32AC8  C0 1C 0B 58 */	lfs f0, 0xb58(r28)
/* 80C32ACC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C32AD0  40 80 00 64 */	bge lbl_80C32B34
/* 80C32AD4  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80C32AD8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32ADC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C32AE0  40 80 00 20 */	bge lbl_80C32B00
/* 80C32AE4  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80C32AE8  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80C32AEC  C0 5F 00 B0 */	lfs f2, 0xb0(r31)
/* 80C32AF0  C0 7F 00 B4 */	lfs f3, 0xb4(r31)
/* 80C32AF4  C0 9F 00 B8 */	lfs f4, 0xb8(r31)
/* 80C32AF8  4B 63 CE 84 */	b cLib_addCalc__FPfffff
/* 80C32AFC  48 00 00 1C */	b lbl_80C32B18
lbl_80C32B00:
/* 80C32B00  38 7C 04 FC */	addi r3, r28, 0x4fc
/* 80C32B04  C0 3F 00 AC */	lfs f1, 0xac(r31)
/* 80C32B08  C0 5F 00 90 */	lfs f2, 0x90(r31)
/* 80C32B0C  FC 60 10 90 */	fmr f3, f2
/* 80C32B10  C0 9F 00 B8 */	lfs f4, 0xb8(r31)
/* 80C32B14  4B 63 CE 68 */	b cLib_addCalc__FPfffff
lbl_80C32B18:
/* 80C32B18  38 00 01 00 */	li r0, 0x100
/* 80C32B1C  B0 1C 0B 2E */	sth r0, 0xb2e(r28)
/* 80C32B20  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32B24  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 80C32B28  90 1C 05 A4 */	stw r0, 0x5a4(r28)
/* 80C32B2C  38 00 00 01 */	li r0, 1
/* 80C32B30  98 1C 0B 9C */	stb r0, 0xb9c(r28)
lbl_80C32B34:
/* 80C32B34  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32B38  D0 1C 05 30 */	stfs f0, 0x530(r28)
lbl_80C32B3C:
/* 80C32B3C  88 1C 0B 9C */	lbz r0, 0xb9c(r28)
/* 80C32B40  28 00 00 00 */	cmplwi r0, 0
/* 80C32B44  41 82 00 40 */	beq lbl_80C32B84
/* 80C32B48  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32B4C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C32B50  41 82 01 F0 */	beq lbl_80C32D40
/* 80C32B54  38 00 00 00 */	li r0, 0
/* 80C32B58  98 1C 0B 9C */	stb r0, 0xb9c(r28)
/* 80C32B5C  98 1C 0B 9D */	stb r0, 0xb9d(r28)
/* 80C32B60  B0 1C 0B 2C */	sth r0, 0xb2c(r28)
/* 80C32B64  B0 1C 0B 2E */	sth r0, 0xb2e(r28)
/* 80C32B68  B0 1C 0B 30 */	sth r0, 0xb30(r28)
/* 80C32B6C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32B70  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32B74  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C32B78  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32B7C  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C32B80  48 00 01 C0 */	b lbl_80C32D40
lbl_80C32B84:
/* 80C32B84  88 1C 0B 9D */	lbz r0, 0xb9d(r28)
/* 80C32B88  28 00 00 00 */	cmplwi r0, 0
/* 80C32B8C  40 82 01 B4 */	bne lbl_80C32D40
/* 80C32B90  88 1C 0B 9E */	lbz r0, 0xb9e(r28)
/* 80C32B94  28 00 00 00 */	cmplwi r0, 0
/* 80C32B98  41 82 01 04 */	beq lbl_80C32C9C
/* 80C32B9C  80 7C 05 A4 */	lwz r3, 0x5a4(r28)
/* 80C32BA0  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80C32BA4  41 82 00 94 */	beq lbl_80C32C38
/* 80C32BA8  7F 83 E3 78 */	mr r3, r28
/* 80C32BAC  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80C32BB0  38 A1 00 08 */	addi r5, r1, 8
/* 80C32BB4  48 00 0A 6D */	bl getWallAngle__12daObj_Kago_cFsPs
/* 80C32BB8  2C 03 00 00 */	cmpwi r3, 0
/* 80C32BBC  41 82 00 18 */	beq lbl_80C32BD4
/* 80C32BC0  A8 61 00 08 */	lha r3, 8(r1)
/* 80C32BC4  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C32BC8  7C 03 00 50 */	subf r0, r3, r0
/* 80C32BCC  7C 1A 07 34 */	extsh r26, r0
/* 80C32BD0  48 00 00 08 */	b lbl_80C32BD8
lbl_80C32BD4:
/* 80C32BD4  AB 5C 04 DE */	lha r26, 0x4de(r28)
lbl_80C32BD8:
/* 80C32BD8  C0 3F 00 BC */	lfs f1, 0xbc(r31)
/* 80C32BDC  4B 63 4D B0 */	b cM_rndFX__Ff
/* 80C32BE0  FC 00 08 1E */	fctiwz f0, f1
/* 80C32BE4  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32BE8  80 A1 00 4C */	lwz r5, 0x4c(r1)
/* 80C32BEC  7F 40 07 34 */	extsh r0, r26
/* 80C32BF0  54 04 08 3C */	slwi r4, r0, 1
/* 80C32BF4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80C32BF8  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80C32BFC  7C 04 00 50 */	subf r0, r4, r0
/* 80C32C00  7C 00 2A 14 */	add r0, r0, r5
/* 80C32C04  7C 03 07 34 */	extsh r3, r0
/* 80C32C08  A8 1C 04 DE */	lha r0, 0x4de(r28)
/* 80C32C0C  7C 00 1A 14 */	add r0, r0, r3
/* 80C32C10  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 80C32C14  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C32C18  C0 1F 00 90 */	lfs f0, 0x90(r31)
/* 80C32C1C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32C20  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32C24  38 00 00 00 */	li r0, 0
/* 80C32C28  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 80C32C2C  38 00 00 01 */	li r0, 1
/* 80C32C30  98 1C 0B A1 */	stb r0, 0xba1(r28)
/* 80C32C34  48 00 01 0C */	b lbl_80C32D40
lbl_80C32C38:
/* 80C32C38  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 80C32C3C  41 82 01 04 */	beq lbl_80C32D40
/* 80C32C40  C0 3C 0B 18 */	lfs f1, 0xb18(r28)
/* 80C32C44  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C32C48  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C32C4C  40 80 00 30 */	bge lbl_80C32C7C
/* 80C32C50  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C32C54  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80C32C58  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32C5C  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32C60  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80C32C64  C0 1C 0B 18 */	lfs f0, 0xb18(r28)
/* 80C32C68  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32C6C  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32C70  7F 83 E3 78 */	mr r3, r28
/* 80C32C74  48 00 0C 5D */	bl setSmokePrtcl__12daObj_Kago_cFv
/* 80C32C78  48 00 00 C8 */	b lbl_80C32D40
lbl_80C32C7C:
/* 80C32C7C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32C80  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32C84  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C32C88  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32C8C  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C32C90  38 00 00 00 */	li r0, 0
/* 80C32C94  98 1C 0B 9E */	stb r0, 0xb9e(r28)
/* 80C32C98  48 00 00 A8 */	b lbl_80C32D40
lbl_80C32C9C:
/* 80C32C9C  88 1C 0B A1 */	lbz r0, 0xba1(r28)
/* 80C32CA0  28 00 00 00 */	cmplwi r0, 0
/* 80C32CA4  41 82 00 6C */	beq lbl_80C32D10
/* 80C32CA8  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32CAC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C32CB0  41 82 00 90 */	beq lbl_80C32D40
/* 80C32CB4  C0 3C 0B 18 */	lfs f1, 0xb18(r28)
/* 80C32CB8  C0 1F 00 C0 */	lfs f0, 0xc0(r31)
/* 80C32CBC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C32CC0  40 80 00 30 */	bge lbl_80C32CF0
/* 80C32CC4  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80C32CC8  C0 1F 00 C4 */	lfs f0, 0xc4(r31)
/* 80C32CCC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32CD0  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32CD4  C0 3F 00 C8 */	lfs f1, 0xc8(r31)
/* 80C32CD8  C0 1C 0B 18 */	lfs f0, 0xb18(r28)
/* 80C32CDC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C32CE0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32CE4  7F 83 E3 78 */	mr r3, r28
/* 80C32CE8  48 00 0B E9 */	bl setSmokePrtcl__12daObj_Kago_cFv
/* 80C32CEC  48 00 00 54 */	b lbl_80C32D40
lbl_80C32CF0:
/* 80C32CF0  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32CF4  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80C32CF8  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80C32CFC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80C32D00  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80C32D04  38 00 00 00 */	li r0, 0
/* 80C32D08  98 1C 0B A1 */	stb r0, 0xba1(r28)
/* 80C32D0C  48 00 00 34 */	b lbl_80C32D40
lbl_80C32D10:
/* 80C32D10  88 1C 0B A0 */	lbz r0, 0xba0(r28)
/* 80C32D14  28 00 00 00 */	cmplwi r0, 0
/* 80C32D18  40 82 00 28 */	bne lbl_80C32D40
/* 80C32D1C  80 1C 05 A4 */	lwz r0, 0x5a4(r28)
/* 80C32D20  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C32D24  40 82 00 1C */	bne lbl_80C32D40
/* 80C32D28  C0 3C 0B 54 */	lfs f1, 0xb54(r28)
/* 80C32D2C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C32D30  EC 01 00 28 */	fsubs f0, f1, f0
/* 80C32D34  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
/* 80C32D38  38 00 00 01 */	li r0, 1
/* 80C32D3C  98 1C 0B A1 */	stb r0, 0xba1(r28)
lbl_80C32D40:
/* 80C32D40  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C32D44  28 00 00 00 */	cmplwi r0, 0
/* 80C32D48  40 82 00 40 */	bne lbl_80C32D88
/* 80C32D4C  88 1C 0B 9F */	lbz r0, 0xb9f(r28)
/* 80C32D50  28 00 00 00 */	cmplwi r0, 0
/* 80C32D54  40 82 00 34 */	bne lbl_80C32D88
/* 80C32D58  88 1C 0B 9E */	lbz r0, 0xb9e(r28)
/* 80C32D5C  28 00 00 00 */	cmplwi r0, 0
/* 80C32D60  40 82 00 28 */	bne lbl_80C32D88
/* 80C32D64  88 1C 0B A1 */	lbz r0, 0xba1(r28)
/* 80C32D68  28 00 00 00 */	cmplwi r0, 0
/* 80C32D6C  40 82 00 1C */	bne lbl_80C32D88
/* 80C32D70  80 1C 05 5C */	lwz r0, 0x55c(r28)
/* 80C32D74  60 00 00 10 */	ori r0, r0, 0x10
/* 80C32D78  90 1C 05 5C */	stw r0, 0x55c(r28)
/* 80C32D7C  88 1C 04 9A */	lbz r0, 0x49a(r28)
/* 80C32D80  60 00 00 80 */	ori r0, r0, 0x80
/* 80C32D84  98 1C 04 9A */	stb r0, 0x49a(r28)
lbl_80C32D88:
/* 80C32D88  C0 1C 04 F8 */	lfs f0, 0x4f8(r28)
/* 80C32D8C  D0 1C 0B 14 */	stfs f0, 0xb14(r28)
/* 80C32D90  C0 1C 04 FC */	lfs f0, 0x4fc(r28)
/* 80C32D94  D0 1C 0B 18 */	stfs f0, 0xb18(r28)
/* 80C32D98  C0 1C 05 00 */	lfs f0, 0x500(r28)
/* 80C32D9C  D0 1C 0B 1C */	stfs f0, 0xb1c(r28)
/* 80C32DA0  88 1C 0B 9D */	lbz r0, 0xb9d(r28)
/* 80C32DA4  28 00 00 00 */	cmplwi r0, 0
/* 80C32DA8  41 82 00 2C */	beq lbl_80C32DD4
/* 80C32DAC  38 7C 0B 64 */	addi r3, r28, 0xb64
/* 80C32DB0  34 1C 07 50 */	addic. r0, r28, 0x750
/* 80C32DB4  41 82 00 0C */	beq lbl_80C32DC0
/* 80C32DB8  C0 3F 00 CC */	lfs f1, 0xcc(r31)
/* 80C32DBC  48 00 00 08 */	b lbl_80C32DC4
lbl_80C32DC0:
/* 80C32DC0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
lbl_80C32DC4:
/* 80C32DC4  C0 5F 00 D4 */	lfs f2, 0xd4(r31)
/* 80C32DC8  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C32DCC  4B 63 CC 70 */	b cLib_addCalc2__FPffff
/* 80C32DD0  48 00 00 18 */	b lbl_80C32DE8
lbl_80C32DD4:
/* 80C32DD4  38 7C 0B 64 */	addi r3, r28, 0xb64
/* 80C32DD8  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C32DDC  C0 5F 00 D8 */	lfs f2, 0xd8(r31)
/* 80C32DE0  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C32DE4  4B 63 CC 58 */	b cLib_addCalc2__FPffff
lbl_80C32DE8:
/* 80C32DE8  A8 1C 0B 6C */	lha r0, 0xb6c(r28)
/* 80C32DEC  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C32DF0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C32DF4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C32DF8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C32DFC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C32E00  C0 1C 0B 64 */	lfs f0, 0xb64(r28)
/* 80C32E04  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C32E08  FC 00 00 1E */	fctiwz f0, f0
/* 80C32E0C  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 80C32E10  80 01 00 4C */	lwz r0, 0x4c(r1)
/* 80C32E14  B0 1C 04 E4 */	sth r0, 0x4e4(r28)
/* 80C32E18  3B C3 00 04 */	addi r30, r3, 4
/* 80C32E1C  A8 1C 0B 6C */	lha r0, 0xb6c(r28)
/* 80C32E20  1C 00 03 E8 */	mulli r0, r0, 0x3e8
/* 80C32E24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C32E28  7C 3E 04 2E */	lfsx f1, r30, r0
/* 80C32E2C  C0 1C 0B 64 */	lfs f0, 0xb64(r28)
/* 80C32E30  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C32E34  FC 00 00 1E */	fctiwz f0, f0
/* 80C32E38  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 80C32E3C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80C32E40  B0 1C 04 E8 */	sth r0, 0x4e8(r28)
/* 80C32E44  38 7C 0B 2E */	addi r3, r28, 0xb2e
/* 80C32E48  38 80 00 00 */	li r4, 0
/* 80C32E4C  38 A0 00 0A */	li r5, 0xa
/* 80C32E50  4B 63 DD 40 */	b cLib_chaseAngleS__FPsss
/* 80C32E54  A8 7C 04 E6 */	lha r3, 0x4e6(r28)
/* 80C32E58  A8 1C 0B 2E */	lha r0, 0xb2e(r28)
/* 80C32E5C  7C 03 02 14 */	add r0, r3, r0
/* 80C32E60  B0 1C 04 E6 */	sth r0, 0x4e6(r28)
/* 80C32E64  A8 7C 0B 6C */	lha r3, 0xb6c(r28)
/* 80C32E68  38 03 00 01 */	addi r0, r3, 1
/* 80C32E6C  B0 1C 0B 6C */	sth r0, 0xb6c(r28)
/* 80C32E70  88 1C 0B 9C */	lbz r0, 0xb9c(r28)
/* 80C32E74  28 00 00 00 */	cmplwi r0, 0
/* 80C32E78  41 82 01 04 */	beq lbl_80C32F7C
/* 80C32E7C  C0 1C 07 50 */	lfs f0, 0x750(r28)
/* 80C32E80  EC 20 00 32 */	fmuls f1, f0, f0
/* 80C32E84  C0 1C 07 58 */	lfs f0, 0x758(r28)
/* 80C32E88  EC 00 00 32 */	fmuls f0, f0, f0
/* 80C32E8C  EF E1 00 2A */	fadds f31, f1, f0
/* 80C32E90  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32E94  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C32E98  40 81 00 0C */	ble lbl_80C32EA4
/* 80C32E9C  FC 00 F8 34 */	frsqrte f0, f31
/* 80C32EA0  EF E0 07 F2 */	fmuls f31, f0, f31
lbl_80C32EA4:
/* 80C32EA4  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80C32EA8  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C32EAC  40 80 00 D8 */	bge lbl_80C32F84
/* 80C32EB0  3B 20 00 00 */	li r25, 0
/* 80C32EB4  3B 00 00 00 */	li r24, 0
/* 80C32EB8  3B 60 00 00 */	li r27, 0
lbl_80C32EBC:
/* 80C32EBC  3B 5B 08 08 */	addi r26, r27, 0x808
/* 80C32EC0  7F 5C D2 14 */	add r26, r28, r26
/* 80C32EC4  7F 43 D3 78 */	mr r3, r26
/* 80C32EC8  4B 45 17 90 */	b ChkCoHit__12dCcD_GObjInfFv
/* 80C32ECC  28 03 00 00 */	cmplwi r3, 0
/* 80C32ED0  41 82 00 28 */	beq lbl_80C32EF8
/* 80C32ED4  38 7A 00 E8 */	addi r3, r26, 0xe8
/* 80C32ED8  4B 45 07 B0 */	b GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80C32EDC  7C 79 1B 78 */	mr r25, r3
/* 80C32EE0  28 03 00 00 */	cmplwi r3, 0
/* 80C32EE4  41 82 00 10 */	beq lbl_80C32EF4
/* 80C32EE8  A8 03 00 08 */	lha r0, 8(r3)
/* 80C32EEC  2C 00 00 FD */	cmpwi r0, 0xfd
/* 80C32EF0  41 82 00 18 */	beq lbl_80C32F08
lbl_80C32EF4:
/* 80C32EF4  3B 20 00 00 */	li r25, 0
lbl_80C32EF8:
/* 80C32EF8  3B 18 00 01 */	addi r24, r24, 1
/* 80C32EFC  2C 18 00 02 */	cmpwi r24, 2
/* 80C32F00  3B 7B 01 3C */	addi r27, r27, 0x13c
/* 80C32F04  41 80 FF B8 */	blt lbl_80C32EBC
lbl_80C32F08:
/* 80C32F08  28 19 00 00 */	cmplwi r25, 0
/* 80C32F0C  41 82 00 10 */	beq lbl_80C32F1C
/* 80C32F10  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 80C32F14  B0 1C 0B 76 */	sth r0, 0xb76(r28)
/* 80C32F18  48 00 00 14 */	b lbl_80C32F2C
lbl_80C32F1C:
/* 80C32F1C  C0 3C 07 50 */	lfs f1, 0x750(r28)
/* 80C32F20  C0 5C 07 58 */	lfs f2, 0x758(r28)
/* 80C32F24  4B 63 47 50 */	b cM_atan2s__Fff
/* 80C32F28  B0 7C 0B 76 */	sth r3, 0xb76(r28)
lbl_80C32F2C:
/* 80C32F2C  28 19 00 00 */	cmplwi r25, 0
/* 80C32F30  40 82 00 10 */	bne lbl_80C32F40
/* 80C32F34  80 1C 0B 4C */	lwz r0, 0xb4c(r28)
/* 80C32F38  2C 00 00 00 */	cmpwi r0, 0
/* 80C32F3C  40 82 00 48 */	bne lbl_80C32F84
lbl_80C32F40:
/* 80C32F40  C0 1F 00 DC */	lfs f0, 0xdc(r31)
/* 80C32F44  FC 00 F8 40 */	fcmpo cr0, f0, f31
/* 80C32F48  40 80 00 0C */	bge lbl_80C32F54
/* 80C32F4C  FF E0 00 90 */	fmr f31, f0
/* 80C32F50  48 00 00 14 */	b lbl_80C32F64
lbl_80C32F54:
/* 80C32F54  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32F58  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C32F5C  40 80 00 08 */	bge lbl_80C32F64
/* 80C32F60  FF E0 00 90 */	fmr f31, f0
lbl_80C32F64:
/* 80C32F64  D3 FC 0B 50 */	stfs f31, 0xb50(r28)
/* 80C32F68  38 00 02 00 */	li r0, 0x200
/* 80C32F6C  B0 1C 0B 2E */	sth r0, 0xb2e(r28)
/* 80C32F70  38 00 00 0A */	li r0, 0xa
/* 80C32F74  90 1C 0B 4C */	stw r0, 0xb4c(r28)
/* 80C32F78  48 00 00 0C */	b lbl_80C32F84
lbl_80C32F7C:
/* 80C32F7C  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32F80  D0 1C 0B 50 */	stfs f0, 0xb50(r28)
lbl_80C32F84:
/* 80C32F84  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80C32F88  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80C32F8C  C0 5F 00 E0 */	lfs f2, 0xe0(r31)
/* 80C32F90  C0 7F 00 78 */	lfs f3, 0x78(r31)
/* 80C32F94  4B 63 CA A8 */	b cLib_addCalc2__FPffff
/* 80C32F98  7F 83 E3 78 */	mr r3, r28
/* 80C32F9C  4B 3E 76 70 */	b fopAcM_calcSpeed__FP10fopAc_ac_c
/* 80C32FA0  88 1C 0B 9C */	lbz r0, 0xb9c(r28)
/* 80C32FA4  28 00 00 00 */	cmplwi r0, 0
/* 80C32FA8  41 82 00 64 */	beq lbl_80C3300C
/* 80C32FAC  A8 1C 0B 76 */	lha r0, 0xb76(r28)
/* 80C32FB0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C32FB4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80C32FB8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80C32FBC  7C 23 04 2E */	lfsx f1, r3, r0
/* 80C32FC0  C0 1C 0B 50 */	lfs f0, 0xb50(r28)
/* 80C32FC4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C32FC8  D0 1C 0B 20 */	stfs f0, 0xb20(r28)
/* 80C32FCC  A8 1C 0B 76 */	lha r0, 0xb76(r28)
/* 80C32FD0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80C32FD4  7C 3E 04 2E */	lfsx f1, r30, r0
/* 80C32FD8  C0 1C 0B 50 */	lfs f0, 0xb50(r28)
/* 80C32FDC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C32FE0  D0 1C 0B 28 */	stfs f0, 0xb28(r28)
/* 80C32FE4  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C32FE8  D0 1C 0B 24 */	stfs f0, 0xb24(r28)
/* 80C32FEC  38 7C 04 F8 */	addi r3, r28, 0x4f8
/* 80C32FF0  38 9C 0B 20 */	addi r4, r28, 0xb20
/* 80C32FF4  7C 65 1B 78 */	mr r5, r3
/* 80C32FF8  4B 71 40 98 */	b PSVECAdd
/* 80C32FFC  7F 83 E3 78 */	mr r3, r28
/* 80C33000  38 80 00 00 */	li r4, 0
/* 80C33004  4B 3E 76 5C */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
/* 80C33008  48 00 00 10 */	b lbl_80C33018
lbl_80C3300C:
/* 80C3300C  7F 83 E3 78 */	mr r3, r28
/* 80C33010  38 9C 07 50 */	addi r4, r28, 0x750
/* 80C33014  4B 3E 76 4C */	b fopAcM_posMove__FP10fopAc_ac_cPC4cXyz
lbl_80C33018:
/* 80C33018  38 7C 05 78 */	addi r3, r28, 0x578
/* 80C3301C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80C33020  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80C33024  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80C33028  4B 44 3A 84 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80C3302C  80 1C 06 54 */	lwz r0, 0x654(r28)
/* 80C33030  90 1C 07 CC */	stw r0, 0x7cc(r28)
/* 80C33034  80 1C 06 58 */	lwz r0, 0x658(r28)
/* 80C33038  90 1C 07 D0 */	stw r0, 0x7d0(r28)
/* 80C3303C  80 1C 06 5C */	lwz r0, 0x65c(r28)
/* 80C33040  90 1C 07 D4 */	stw r0, 0x7d4(r28)
/* 80C33044  88 1C 06 60 */	lbz r0, 0x660(r28)
/* 80C33048  98 1C 07 D8 */	stb r0, 0x7d8(r28)
/* 80C3304C  A0 1C 06 68 */	lhz r0, 0x668(r28)
/* 80C33050  B0 1C 07 E0 */	sth r0, 0x7e0(r28)
/* 80C33054  A0 1C 06 6A */	lhz r0, 0x66a(r28)
/* 80C33058  B0 1C 07 E2 */	sth r0, 0x7e2(r28)
/* 80C3305C  80 1C 06 6C */	lwz r0, 0x66c(r28)
/* 80C33060  90 1C 07 E4 */	stw r0, 0x7e4(r28)
/* 80C33064  80 1C 06 70 */	lwz r0, 0x670(r28)
/* 80C33068  90 1C 07 E8 */	stw r0, 0x7e8(r28)
/* 80C3306C  C0 1C 06 78 */	lfs f0, 0x678(r28)
/* 80C33070  D0 1C 07 F0 */	stfs f0, 0x7f0(r28)
/* 80C33074  C0 1C 06 7C */	lfs f0, 0x67c(r28)
/* 80C33078  D0 1C 07 F4 */	stfs f0, 0x7f4(r28)
/* 80C3307C  C0 1C 06 80 */	lfs f0, 0x680(r28)
/* 80C33080  D0 1C 07 F8 */	stfs f0, 0x7f8(r28)
/* 80C33084  80 1C 06 84 */	lwz r0, 0x684(r28)
/* 80C33088  90 1C 07 FC */	stw r0, 0x7fc(r28)
/* 80C3308C  C0 1C 06 88 */	lfs f0, 0x688(r28)
/* 80C33090  D0 1C 08 00 */	stfs f0, 0x800(r28)
/* 80C33094  80 1C 06 8C */	lwz r0, 0x68c(r28)
/* 80C33098  90 1C 08 04 */	stw r0, 0x804(r28)
/* 80C3309C  C0 1C 06 10 */	lfs f0, 0x610(r28)
/* 80C330A0  D0 1C 0B 54 */	stfs f0, 0xb54(r28)
/* 80C330A4  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 80C330A8  C0 1C 0B 54 */	lfs f0, 0xb54(r28)
/* 80C330AC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C330B0  41 82 00 24 */	beq lbl_80C330D4
/* 80C330B4  38 7C 07 E0 */	addi r3, r28, 0x7e0
/* 80C330B8  A8 9C 04 E6 */	lha r4, 0x4e6(r28)
/* 80C330BC  4B 52 24 B0 */	b daNpcF_getGroundAngle__FP13cBgS_PolyInfos
/* 80C330C0  B0 7C 0B 6E */	sth r3, 0xb6e(r28)
/* 80C330C4  7F 83 E3 78 */	mr r3, r28
/* 80C330C8  48 00 03 ED */	bl setEnvTevColor__12daObj_Kago_cFv
/* 80C330CC  7F 83 E3 78 */	mr r3, r28
/* 80C330D0  48 00 04 41 */	bl setRoomNo__12daObj_Kago_cFv
lbl_80C330D4:
/* 80C330D4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C330D8  D0 1C 05 50 */	stfs f0, 0x550(r28)
/* 80C330DC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C330E0  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80C330E4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C330E8  D0 1C 05 58 */	stfs f0, 0x558(r28)
/* 80C330EC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80C330F0  D0 1C 05 38 */	stfs f0, 0x538(r28)
/* 80C330F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80C330F8  D0 1C 05 3C */	stfs f0, 0x53c(r28)
/* 80C330FC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80C33100  D0 1C 05 40 */	stfs f0, 0x540(r28)
/* 80C33104  88 1C 0B A2 */	lbz r0, 0xba2(r28)
/* 80C33108  28 00 00 00 */	cmplwi r0, 0
/* 80C3310C  40 82 00 0C */	bne lbl_80C33118
/* 80C33110  7F 83 E3 78 */	mr r3, r28
/* 80C33114  48 00 04 89 */	bl setMtx__12daObj_Kago_cFv
lbl_80C33118:
/* 80C33118  88 1C 0B 9F */	lbz r0, 0xb9f(r28)
/* 80C3311C  28 00 00 00 */	cmplwi r0, 0
/* 80C33120  40 82 01 40 */	bne lbl_80C33260
/* 80C33124  88 1C 0B 10 */	lbz r0, 0xb10(r28)
/* 80C33128  28 00 00 00 */	cmplwi r0, 0
/* 80C3312C  41 82 00 0C */	beq lbl_80C33138
/* 80C33130  28 00 00 01 */	cmplwi r0, 1
/* 80C33134  40 82 00 D8 */	bne lbl_80C3320C
lbl_80C33138:
/* 80C33138  C0 1F 00 E4 */	lfs f0, 0xe4(r31)
/* 80C3313C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C33140  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C33144  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C33148  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C3314C  80 7C 05 74 */	lwz r3, 0x574(r28)
/* 80C33150  38 63 00 24 */	addi r3, r3, 0x24
/* 80C33154  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C33158  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C3315C  4B 71 33 54 */	b PSMTXCopy
/* 80C33160  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C33164  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C33168  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C3316C  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C33170  4B 71 3B FC */	b PSMTXMultVec
/* 80C33174  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33178  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80C3317C  4B 63 C0 84 */	b SetR__8cM3dGCylFf
/* 80C33180  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33184  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80C33188  4B 63 C0 70 */	b SetH__8cM3dGCylFf
/* 80C3318C  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33190  38 81 00 20 */	addi r4, r1, 0x20
/* 80C33194  4B 63 C0 48 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C33198  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C3319C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C331A0  3B 43 23 3C */	addi r26, r3, 0x233c
/* 80C331A4  7F 43 D3 78 */	mr r3, r26
/* 80C331A8  38 9C 08 08 */	addi r4, r28, 0x808
/* 80C331AC  4B 63 19 FC */	b Set__4cCcSFP8cCcD_Obj
/* 80C331B0  C0 1F 00 E8 */	lfs f0, 0xe8(r31)
/* 80C331B4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C331B8  C0 1F 00 84 */	lfs f0, 0x84(r31)
/* 80C331BC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80C331C0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80C331C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C331C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C331CC  38 81 00 2C */	addi r4, r1, 0x2c
/* 80C331D0  38 A1 00 20 */	addi r5, r1, 0x20
/* 80C331D4  4B 71 3B 98 */	b PSMTXMultVec
/* 80C331D8  38 7C 0A 68 */	addi r3, r28, 0xa68
/* 80C331DC  C0 3F 00 DC */	lfs f1, 0xdc(r31)
/* 80C331E0  4B 63 C0 20 */	b SetR__8cM3dGCylFf
/* 80C331E4  38 7C 0A 68 */	addi r3, r28, 0xa68
/* 80C331E8  C0 3F 00 80 */	lfs f1, 0x80(r31)
/* 80C331EC  4B 63 C0 0C */	b SetH__8cM3dGCylFf
/* 80C331F0  38 7C 0A 68 */	addi r3, r28, 0xa68
/* 80C331F4  38 81 00 20 */	addi r4, r1, 0x20
/* 80C331F8  4B 63 BF E4 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C331FC  7F 43 D3 78 */	mr r3, r26
/* 80C33200  38 9C 09 44 */	addi r4, r28, 0x944
/* 80C33204  4B 63 19 A4 */	b Set__4cCcSFP8cCcD_Obj
/* 80C33208  48 00 00 58 */	b lbl_80C33260
lbl_80C3320C:
/* 80C3320C  38 7C 08 08 */	addi r3, r28, 0x808
/* 80C33210  81 9C 08 44 */	lwz r12, 0x844(r28)
/* 80C33214  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C33218  7D 89 03 A6 */	mtctr r12
/* 80C3321C  4E 80 04 21 */	bctrl 
/* 80C33220  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33224  38 9F 00 00 */	addi r4, r31, 0
/* 80C33228  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80C3322C  4B 63 BF D4 */	b SetR__8cM3dGCylFf
/* 80C33230  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33234  38 9F 00 00 */	addi r4, r31, 0
/* 80C33238  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 80C3323C  4B 63 BF BC */	b SetH__8cM3dGCylFf
/* 80C33240  38 7C 09 2C */	addi r3, r28, 0x92c
/* 80C33244  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 80C33248  4B 63 BF 94 */	b SetC__8cM3dGCylFRC4cXyz
/* 80C3324C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C33250  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C33254  38 63 23 3C */	addi r3, r3, 0x233c
/* 80C33258  38 9C 08 08 */	addi r4, r28, 0x808
/* 80C3325C  4B 63 19 4C */	b Set__4cCcSFP8cCcD_Obj
lbl_80C33260:
/* 80C33260  38 7C 08 08 */	addi r3, r28, 0x808
/* 80C33264  81 9C 08 44 */	lwz r12, 0x844(r28)
/* 80C33268  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C3326C  7D 89 03 A6 */	mtctr r12
/* 80C33270  4E 80 04 21 */	bctrl 
/* 80C33274  38 7C 09 44 */	addi r3, r28, 0x944
/* 80C33278  81 9C 09 80 */	lwz r12, 0x980(r28)
/* 80C3327C  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80C33280  7D 89 03 A6 */	mtctr r12
/* 80C33284  4E 80 04 21 */	bctrl 
/* 80C33288  30 1D FF FF */	addic r0, r29, -1
/* 80C3328C  7C 00 E9 10 */	subfe r0, r0, r29
/* 80C33290  98 1C 0B A0 */	stb r0, 0xba0(r28)
/* 80C33294  38 7C 0B 48 */	addi r3, r28, 0xb48
/* 80C33298  48 00 08 ED */	bl func_80C33B84
/* 80C3329C  38 7C 0B 4C */	addi r3, r28, 0xb4c
/* 80C332A0  48 00 08 E5 */	bl func_80C33B84
/* 80C332A4  38 00 00 00 */	li r0, 0
/* 80C332A8  98 1C 0B A2 */	stb r0, 0xba2(r28)
/* 80C332AC  38 60 00 01 */	li r3, 1
/* 80C332B0  E3 E1 00 88 */	psq_l f31, 136(r1), 0, 0 /* qr0 */
/* 80C332B4  CB E1 00 80 */	lfd f31, 0x80(r1)
/* 80C332B8  39 61 00 80 */	addi r11, r1, 0x80
/* 80C332BC  4B 72 EF 58 */	b _restgpr_24
/* 80C332C0  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C332C4  7C 08 03 A6 */	mtlr r0
/* 80C332C8  38 21 00 90 */	addi r1, r1, 0x90
/* 80C332CC  4E 80 00 20 */	blr 
