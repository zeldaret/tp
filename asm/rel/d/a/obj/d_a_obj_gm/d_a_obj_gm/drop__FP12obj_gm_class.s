lbl_80BFC168:
/* 80BFC168  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80BFC16C  7C 08 02 A6 */	mflr r0
/* 80BFC170  90 01 00 64 */	stw r0, 0x64(r1)
/* 80BFC174  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80BFC178  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80BFC17C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFC180  4B 76 60 5D */	bl _savegpr_29
/* 80BFC184  7C 7D 1B 78 */	mr r29, r3
/* 80BFC188  3C 60 80 C0 */	lis r3, lit_3686@ha /* 0x80BFD32C@ha */
/* 80BFC18C  3B E3 D3 2C */	addi r31, r3, lit_3686@l /* 0x80BFD32C@l */
/* 80BFC190  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC194  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC198  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC19C  A8 9D 07 20 */	lha r4, 0x720(r29)
/* 80BFC1A0  4B 41 02 3D */	bl mDoMtx_YrotS__FPA4_fs
/* 80BFC1A4  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFC1A8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFC1AC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80BFC1B0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BFC1B4  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80BFC1B8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFC1BC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BFC1C0  38 61 00 24 */	addi r3, r1, 0x24
/* 80BFC1C4  38 81 00 18 */	addi r4, r1, 0x18
/* 80BFC1C8  4B 67 4D 25 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BFC1CC  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BFC1D0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80BFC1D4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC1D8  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80BFC1DC  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80BFC1E0  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80BFC1E4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC1E8  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80BFC1EC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BFC1F0  C0 1D 04 FC */	lfs f0, 0x4fc(r29)
/* 80BFC1F4  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC1F8  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BFC1FC  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80BFC200  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BFC204  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFC208  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80BFC20C  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BFC210  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC214  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC218  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC21C  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC220  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC224  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFC228  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BFC22C  C0 3D 04 C0 */	lfs f1, 0x4c0(r29)
/* 80BFC230  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC234  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC238  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC23C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80BFC240  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80BFC244  C3 FD 04 FC */	lfs f31, 0x4fc(r29)
/* 80BFC248  38 7D 07 70 */	addi r3, r29, 0x770
/* 80BFC24C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFC250  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFC254  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 80BFC258  7F C4 F3 78 */	mr r4, r30
/* 80BFC25C  4B 47 A8 51 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 80BFC260  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80BFC264  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC268  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC26C  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC270  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC274  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC278  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC27C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80BFC280  C0 3D 04 C0 */	lfs f1, 0x4c0(r29)
/* 80BFC284  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC288  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC28C  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC290  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC294  D0 1D 04 C0 */	stfs f0, 0x4c0(r29)
/* 80BFC298  80 1D 07 9C */	lwz r0, 0x79c(r29)
/* 80BFC29C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80BFC2A0  41 82 01 0C */	beq lbl_80BFC3AC
/* 80BFC2A4  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC2A8  28 00 00 01 */	cmplwi r0, 1
/* 80BFC2AC  41 81 00 10 */	bgt lbl_80BFC2BC
/* 80BFC2B0  38 00 00 01 */	li r0, 1
/* 80BFC2B4  98 1D 07 2C */	stb r0, 0x72c(r29)
/* 80BFC2B8  48 00 01 00 */	b lbl_80BFC3B8
lbl_80BFC2BC:
/* 80BFC2BC  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80BFC2C0  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80BFC2C4  40 80 00 10 */	bge lbl_80BFC2D4
/* 80BFC2C8  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 80BFC2CC  EC 00 07 F2 */	fmuls f0, f0, f31
/* 80BFC2D0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
lbl_80BFC2D4:
/* 80BFC2D4  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC2D8  28 00 00 04 */	cmplwi r0, 4
/* 80BFC2DC  41 82 00 18 */	beq lbl_80BFC2F4
/* 80BFC2E0  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80BFC2E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80BFC2E8  FC 40 08 90 */	fmr f2, f1
/* 80BFC2EC  4B 67 37 95 */	bl cLib_addCalc0__FPfff
/* 80BFC2F0  48 00 00 0C */	b lbl_80BFC2FC
lbl_80BFC2F4:
/* 80BFC2F4  38 00 00 01 */	li r0, 1
/* 80BFC2F8  98 1D 07 2C */	stb r0, 0x72c(r29)
lbl_80BFC2FC:
/* 80BFC2FC  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80BFC300  7C 00 07 75 */	extsb. r0, r0
/* 80BFC304  40 82 00 B4 */	bne lbl_80BFC3B8
/* 80BFC308  38 00 00 01 */	li r0, 1
/* 80BFC30C  98 1D 07 26 */	stb r0, 0x726(r29)
/* 80BFC310  38 7D 0A E8 */	addi r3, r29, 0xae8
/* 80BFC314  38 9D 0A EC */	addi r4, r29, 0xaec
/* 80BFC318  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80BFC31C  38 C0 00 00 */	li r6, 0
/* 80BFC320  C0 3F 00 60 */	lfs f1, 0x60(r31)
/* 80BFC324  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC328  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC32C  3C E0 80 C0 */	lis r7, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC330  38 E7 D3 E8 */	addi r7, r7, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC334  7C 07 04 2E */	lfsx f0, r7, r0
/* 80BFC338  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFC33C  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80BFC340  39 00 00 01 */	li r8, 1
/* 80BFC344  4B 42 0C DD */	bl fopAcM_effSmokeSet1__FPUlPUlPC4cXyzPC5csXyzfPC12dKy_tevstr_ci
/* 80BFC348  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC34C  28 00 00 03 */	cmplwi r0, 3
/* 80BFC350  41 80 00 68 */	blt lbl_80BFC3B8
/* 80BFC354  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007009C@ha */
/* 80BFC358  38 03 00 9C */	addi r0, r3, 0x009C /* 0x0007009C@l */
/* 80BFC35C  90 01 00 08 */	stw r0, 8(r1)
/* 80BFC360  38 7D 05 78 */	addi r3, r29, 0x578
/* 80BFC364  38 81 00 08 */	addi r4, r1, 8
/* 80BFC368  38 A0 00 00 */	li r5, 0
/* 80BFC36C  38 C0 FF FF */	li r6, -1
/* 80BFC370  81 9D 05 78 */	lwz r12, 0x578(r29)
/* 80BFC374  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80BFC378  7D 89 03 A6 */	mtctr r12
/* 80BFC37C  4E 80 04 21 */	bctrl 
/* 80BFC380  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80BFC384  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 80BFC388  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80BFC38C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80BFC390  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80BFC394  38 7E 4C 9C */	addi r3, r30, 0x4c9c
/* 80BFC398  38 80 00 05 */	li r4, 5
/* 80BFC39C  38 A0 00 0F */	li r5, 0xf
/* 80BFC3A0  38 C1 00 0C */	addi r6, r1, 0xc
/* 80BFC3A4  4B 47 36 81 */	bl StartShock__12dVibration_cFii4cXyz
/* 80BFC3A8  48 00 00 10 */	b lbl_80BFC3B8
lbl_80BFC3AC:
/* 80BFC3AC  80 1D 09 88 */	lwz r0, 0x988(r29)
/* 80BFC3B0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80BFC3B4  90 1D 09 88 */	stw r0, 0x988(r29)
lbl_80BFC3B8:
/* 80BFC3B8  A8 1D 06 0E */	lha r0, 0x60e(r29)
/* 80BFC3BC  2C 00 00 00 */	cmpwi r0, 0
/* 80BFC3C0  40 82 00 9C */	bne lbl_80BFC45C
/* 80BFC3C4  80 1D 07 9C */	lwz r0, 0x79c(r29)
/* 80BFC3C8  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 80BFC3CC  41 82 00 90 */	beq lbl_80BFC45C
/* 80BFC3D0  38 00 00 0A */	li r0, 0xa
/* 80BFC3D4  B0 1D 06 0E */	sth r0, 0x60e(r29)
/* 80BFC3D8  7F A3 EB 78 */	mr r3, r29
/* 80BFC3DC  4B FF EE 3D */	bl wall_angle_get__FP12obj_gm_class
/* 80BFC3E0  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BFC3E4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80BFC3E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80BFC3EC  40 81 00 60 */	ble lbl_80BFC44C
/* 80BFC3F0  7C 60 07 34 */	extsh r0, r3
/* 80BFC3F4  2C 00 00 23 */	cmpwi r0, 0x23
/* 80BFC3F8  41 82 00 54 */	beq lbl_80BFC44C
/* 80BFC3FC  A8 BD 07 20 */	lha r5, 0x720(r29)
/* 80BFC400  7C 03 28 50 */	subf r0, r3, r5
/* 80BFC404  7C 00 07 34 */	extsh r0, r0
/* 80BFC408  54 04 08 3C */	slwi r4, r0, 1
/* 80BFC40C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 80BFC410  38 03 80 00 */	addi r0, r3, 0x8000 /* 0x00008000@l */
/* 80BFC414  7C 04 00 50 */	subf r0, r4, r0
/* 80BFC418  7C 00 07 34 */	extsh r0, r0
/* 80BFC41C  7C 05 02 14 */	add r0, r5, r0
/* 80BFC420  B0 1D 07 20 */	sth r0, 0x720(r29)
/* 80BFC424  A8 1D 07 22 */	lha r0, 0x722(r29)
/* 80BFC428  1C 00 FF FF */	mulli r0, r0, -1
/* 80BFC42C  B0 1D 07 22 */	sth r0, 0x722(r29)
/* 80BFC430  38 00 00 0A */	li r0, 0xa
/* 80BFC434  B0 1D 06 0E */	sth r0, 0x60e(r29)
/* 80BFC438  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BFC43C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 80BFC440  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFC444  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80BFC448  48 00 00 14 */	b lbl_80BFC45C
lbl_80BFC44C:
/* 80BFC44C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BFC450  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 80BFC454  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFC458  D0 1D 05 2C */	stfs f0, 0x52c(r29)
lbl_80BFC45C:
/* 80BFC45C  88 1D 07 26 */	lbz r0, 0x726(r29)
/* 80BFC460  7C 00 07 75 */	extsb. r0, r0
/* 80BFC464  41 82 00 40 */	beq lbl_80BFC4A4
/* 80BFC468  A8 9D 07 22 */	lha r4, 0x722(r29)
/* 80BFC46C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80BFC470  C0 1D 07 28 */	lfs f0, 0x728(r29)
/* 80BFC474  EC 21 00 32 */	fmuls f1, f1, f0
/* 80BFC478  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC47C  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC480  3C 60 80 C0 */	lis r3, spin_sp@ha /* 0x80BFD430@ha */
/* 80BFC484  38 63 D4 30 */	addi r3, r3, spin_sp@l /* 0x80BFD430@l */
/* 80BFC488  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC48C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80BFC490  FC 00 00 1E */	fctiwz f0, f0
/* 80BFC494  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 80BFC498  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80BFC49C  7C 04 02 14 */	add r0, r4, r0
/* 80BFC4A0  B0 1D 07 22 */	sth r0, 0x722(r29)
lbl_80BFC4A4:
/* 80BFC4A4  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80BFC4A8  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 80BFC4AC  C0 7D 04 D8 */	lfs f3, 0x4d8(r29)
/* 80BFC4B0  38 60 00 00 */	li r3, 0
/* 80BFC4B4  4B 67 49 A9 */	bl MtxTrans__FfffUc
/* 80BFC4B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC4BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC4C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC4C4  A8 9D 07 20 */	lha r4, 0x720(r29)
/* 80BFC4C8  4B 40 FF 6D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFC4CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC4D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC4D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC4D8  A8 9D 07 22 */	lha r4, 0x722(r29)
/* 80BFC4DC  4B 40 FE C1 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BFC4E0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC4E4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC4E8  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC4EC  A8 1D 07 20 */	lha r0, 0x720(r29)
/* 80BFC4F0  7C 00 00 D0 */	neg r0, r0
/* 80BFC4F4  7C 04 07 34 */	extsh r4, r0
/* 80BFC4F8  4B 40 FF 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFC4FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC500  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC504  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC508  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80BFC50C  4B 40 FF 29 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFC510  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC514  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC518  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC51C  A8 9D 04 DC */	lha r4, 0x4dc(r29)
/* 80BFC520  4B 40 FE 7D */	bl mDoMtx_XrotM__FPA4_fs
/* 80BFC524  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC528  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC52C  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC530  A8 9D 06 4C */	lha r4, 0x64c(r29)
/* 80BFC534  4B 40 FF 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFC538  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC53C  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC540  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC544  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC548  7C 23 04 2E */	lfsx f1, r3, r0
/* 80BFC54C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFC550  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFC554  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BFC558  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BFC55C  38 61 00 24 */	addi r3, r1, 0x24
/* 80BFC560  38 9D 06 54 */	addi r4, r29, 0x654
/* 80BFC564  4B 67 49 89 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BFC568  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80BFC56C  54 00 10 3A */	slwi r0, r0, 2
/* 80BFC570  3C 60 80 C0 */	lis r3, obj_size@ha /* 0x80BFD3E8@ha */
/* 80BFC574  38 63 D3 E8 */	addi r3, r3, obj_size@l /* 0x80BFD3E8@l */
/* 80BFC578  7C 03 04 2E */	lfsx f0, r3, r0
/* 80BFC57C  FC 20 00 50 */	fneg f1, f0
/* 80BFC580  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80BFC584  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80BFC588  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80BFC58C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80BFC590  38 61 00 24 */	addi r3, r1, 0x24
/* 80BFC594  38 9D 06 60 */	addi r4, r29, 0x660
/* 80BFC598  4B 67 49 55 */	bl MtxPosition__FP4cXyzP4cXyz
/* 80BFC59C  7F A3 EB 78 */	mr r3, r29
/* 80BFC5A0  4B FF EE 71 */	bl ito_pos_set__FP12obj_gm_class
/* 80BFC5A4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC5A8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC5AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC5B0  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80BFC5B4  4B 40 FE 81 */	bl mDoMtx_YrotM__FPA4_fs
/* 80BFC5B8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC5BC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC5C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC5C4  A8 9D 04 E4 */	lha r4, 0x4e4(r29)
/* 80BFC5C8  4B 40 FD D5 */	bl mDoMtx_XrotM__FPA4_fs
/* 80BFC5CC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 80BFC5D0  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 80BFC5D4  80 63 00 00 */	lwz r3, 0(r3)
/* 80BFC5D8  80 9D 05 74 */	lwz r4, 0x574(r29)
/* 80BFC5DC  38 84 00 24 */	addi r4, r4, 0x24
/* 80BFC5E0  4B 74 9E D1 */	bl PSMTXCopy
/* 80BFC5E4  38 7D 0A AC */	addi r3, r29, 0xaac
/* 80BFC5E8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80BFC5EC  4B 67 30 5D */	bl SetC__8cM3dGSphFRC4cXyz
/* 80BFC5F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BFC5F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BFC5F8  38 63 23 3C */	addi r3, r3, 0x233c
/* 80BFC5FC  38 9D 09 88 */	addi r4, r29, 0x988
/* 80BFC600  4B 66 85 A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 80BFC604  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80BFC608  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80BFC60C  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80BFC610  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BFC614  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80BFC618  D0 1D 05 40 */	stfs f0, 0x540(r29)
/* 80BFC61C  C0 3D 05 3C */	lfs f1, 0x53c(r29)
/* 80BFC620  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80BFC624  EC 01 00 2A */	fadds f0, f1, f0
/* 80BFC628  D0 1D 05 3C */	stfs f0, 0x53c(r29)
/* 80BFC62C  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80BFC630  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80BFC634  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80BFC638  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80BFC63C  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80BFC640  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80BFC644  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80BFC648  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80BFC64C  39 61 00 50 */	addi r11, r1, 0x50
/* 80BFC650  4B 76 5B D9 */	bl _restgpr_29
/* 80BFC654  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80BFC658  7C 08 03 A6 */	mtlr r0
/* 80BFC65C  38 21 00 60 */	addi r1, r1, 0x60
/* 80BFC660  4E 80 00 20 */	blr 
