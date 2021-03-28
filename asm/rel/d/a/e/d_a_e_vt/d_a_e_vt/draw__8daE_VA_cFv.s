lbl_807C3264:
/* 807C3264  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 807C3268  7C 08 02 A6 */	mflr r0
/* 807C326C  90 01 00 54 */	stw r0, 0x54(r1)
/* 807C3270  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 807C3274  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 807C3278  39 61 00 40 */	addi r11, r1, 0x40
/* 807C327C  4B B9 EF 50 */	b _savegpr_25
/* 807C3280  7C 7F 1B 78 */	mr r31, r3
/* 807C3284  3C 60 80 7D */	lis r3, lit_3907@ha
/* 807C3288  3B A3 EC A8 */	addi r29, r3, lit_3907@l
/* 807C328C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 807C3290  83 23 00 04 */	lwz r25, 4(r3)
/* 807C3294  7F 3A CB 78 */	mr r26, r25
/* 807C3298  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807C329C  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807C32A0  38 80 00 00 */	li r4, 0
/* 807C32A4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 807C32A8  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807C32AC  4B 9E 05 18 */	b settingTevStruct__18dScnKy_env_light_cFiP4cXyzP12dKy_tevstr_c
/* 807C32B0  88 1F 13 8A */	lbz r0, 0x138a(r31)
/* 807C32B4  28 00 00 00 */	cmplwi r0, 0
/* 807C32B8  40 82 02 9C */	bne lbl_807C3554
/* 807C32BC  88 1F 13 87 */	lbz r0, 0x1387(r31)
/* 807C32C0  28 00 00 00 */	cmplwi r0, 0
/* 807C32C4  40 82 02 CC */	bne lbl_807C3590
/* 807C32C8  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807C32CC  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807C32D0  80 99 00 04 */	lwz r4, 4(r25)
/* 807C32D4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807C32D8  4B 9E 1A C8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807C32DC  83 99 00 04 */	lwz r28, 4(r25)
/* 807C32E0  3B 20 00 00 */	li r25, 0
/* 807C32E4  3C 60 80 43 */	lis r3, j3dZModeTable@ha
/* 807C32E8  3B C3 71 60 */	addi r30, r3, j3dZModeTable@l
/* 807C32EC  48 00 02 48 */	b lbl_807C3534
lbl_807C32F0:
/* 807C32F0  80 7C 00 60 */	lwz r3, 0x60(r28)
/* 807C32F4  57 20 13 BA */	rlwinm r0, r25, 2, 0xe, 0x1d
/* 807C32F8  7F 63 00 2E */	lwzx r27, r3, r0
/* 807C32FC  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 807C3300  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3304  81 8C 00 54 */	lwz r12, 0x54(r12)
/* 807C3308  7D 89 03 A6 */	mtctr r12
/* 807C330C  4E 80 04 21 */	bctrl 
/* 807C3310  A0 03 00 00 */	lhz r0, 0(r3)
/* 807C3314  1C 00 00 03 */	mulli r0, r0, 3
/* 807C3318  7C 9E 02 14 */	add r4, r30, r0
/* 807C331C  88 04 00 01 */	lbz r0, 1(r4)
/* 807C3320  54 05 08 3C */	slwi r5, r0, 1
/* 807C3324  88 04 00 00 */	lbz r0, 0(r4)
/* 807C3328  54 04 20 36 */	slwi r4, r0, 4
/* 807C332C  38 04 00 01 */	addi r0, r4, 1
/* 807C3330  7C 05 02 14 */	add r0, r5, r0
/* 807C3334  B0 03 00 00 */	sth r0, 0(r3)
/* 807C3338  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 807C333C  38 80 00 01 */	li r4, 1
/* 807C3340  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3344  81 8C 00 5C */	lwz r12, 0x5c(r12)
/* 807C3348  7D 89 03 A6 */	mtctr r12
/* 807C334C  4E 80 04 21 */	bctrl 
/* 807C3350  38 00 00 04 */	li r0, 4
/* 807C3354  90 1B 00 10 */	stw r0, 0x10(r27)
/* 807C3358  57 20 04 3F */	clrlwi. r0, r25, 0x10
/* 807C335C  40 82 00 28 */	bne lbl_807C3384
/* 807C3360  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C3364  38 80 00 03 */	li r4, 3
/* 807C3368  81 83 00 00 */	lwz r12, 0(r3)
/* 807C336C  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 807C3370  7D 89 03 A6 */	mtctr r12
/* 807C3374  4E 80 04 21 */	bctrl 
/* 807C3378  88 1F 13 7A */	lbz r0, 0x137a(r31)
/* 807C337C  98 03 00 03 */	stb r0, 3(r3)
/* 807C3380  48 00 01 7C */	b lbl_807C34FC
lbl_807C3384:
/* 807C3384  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C3388  38 80 00 00 */	li r4, 0
/* 807C338C  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3390  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 807C3394  7D 89 03 A6 */	mtctr r12
/* 807C3398  4E 80 04 21 */	bctrl 
/* 807C339C  88 1F 13 7C */	lbz r0, 0x137c(r31)
/* 807C33A0  98 03 00 00 */	stb r0, 0(r3)
/* 807C33A4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C33A8  38 80 00 00 */	li r4, 0
/* 807C33AC  81 83 00 00 */	lwz r12, 0(r3)
/* 807C33B0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 807C33B4  7D 89 03 A6 */	mtctr r12
/* 807C33B8  4E 80 04 21 */	bctrl 
/* 807C33BC  88 1F 13 7D */	lbz r0, 0x137d(r31)
/* 807C33C0  98 03 00 01 */	stb r0, 1(r3)
/* 807C33C4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C33C8  38 80 00 00 */	li r4, 0
/* 807C33CC  81 83 00 00 */	lwz r12, 0(r3)
/* 807C33D0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 807C33D4  7D 89 03 A6 */	mtctr r12
/* 807C33D8  4E 80 04 21 */	bctrl 
/* 807C33DC  88 1F 13 7E */	lbz r0, 0x137e(r31)
/* 807C33E0  98 03 00 02 */	stb r0, 2(r3)
/* 807C33E4  C0 3F 13 18 */	lfs f1, 0x1318(r31)
/* 807C33E8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C33EC  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 807C33F0  40 82 00 68 */	bne lbl_807C3458
/* 807C33F4  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C33F8  38 80 00 00 */	li r4, 0
/* 807C33FC  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3400  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C3404  7D 89 03 A6 */	mtctr r12
/* 807C3408  4E 80 04 21 */	bctrl 
/* 807C340C  88 1F 13 80 */	lbz r0, 0x1380(r31)
/* 807C3410  B0 03 00 00 */	sth r0, 0(r3)
/* 807C3414  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C3418  38 80 00 00 */	li r4, 0
/* 807C341C  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3420  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C3424  7D 89 03 A6 */	mtctr r12
/* 807C3428  4E 80 04 21 */	bctrl 
/* 807C342C  88 1F 13 80 */	lbz r0, 0x1380(r31)
/* 807C3430  B0 03 00 02 */	sth r0, 2(r3)
/* 807C3434  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C3438  38 80 00 00 */	li r4, 0
/* 807C343C  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3440  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C3444  7D 89 03 A6 */	mtctr r12
/* 807C3448  4E 80 04 21 */	bctrl 
/* 807C344C  88 1F 13 80 */	lbz r0, 0x1380(r31)
/* 807C3450  B0 03 00 04 */	sth r0, 4(r3)
/* 807C3454  48 00 00 88 */	b lbl_807C34DC
lbl_807C3458:
/* 807C3458  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C345C  38 80 00 00 */	li r4, 0
/* 807C3460  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3464  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C3468  7D 89 03 A6 */	mtctr r12
/* 807C346C  4E 80 04 21 */	bctrl 
/* 807C3470  C0 1F 13 18 */	lfs f0, 0x1318(r31)
/* 807C3474  FC 00 00 1E */	fctiwz f0, f0
/* 807C3478  D8 01 00 08 */	stfd f0, 8(r1)
/* 807C347C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 807C3480  B0 03 00 00 */	sth r0, 0(r3)
/* 807C3484  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C3488  38 80 00 00 */	li r4, 0
/* 807C348C  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3490  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C3494  7D 89 03 A6 */	mtctr r12
/* 807C3498  4E 80 04 21 */	bctrl 
/* 807C349C  C0 1F 13 18 */	lfs f0, 0x1318(r31)
/* 807C34A0  FC 00 00 1E */	fctiwz f0, f0
/* 807C34A4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 807C34A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807C34AC  B0 03 00 02 */	sth r0, 2(r3)
/* 807C34B0  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C34B4  38 80 00 00 */	li r4, 0
/* 807C34B8  81 83 00 00 */	lwz r12, 0(r3)
/* 807C34BC  81 8C 00 68 */	lwz r12, 0x68(r12)
/* 807C34C0  7D 89 03 A6 */	mtctr r12
/* 807C34C4  4E 80 04 21 */	bctrl 
/* 807C34C8  C0 1F 13 18 */	lfs f0, 0x1318(r31)
/* 807C34CC  FC 00 00 1E */	fctiwz f0, f0
/* 807C34D0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 807C34D4  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 807C34D8  B0 03 00 04 */	sth r0, 4(r3)
lbl_807C34DC:
/* 807C34DC  80 7B 00 2C */	lwz r3, 0x2c(r27)
/* 807C34E0  38 80 00 03 */	li r4, 3
/* 807C34E4  81 83 00 00 */	lwz r12, 0(r3)
/* 807C34E8  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 807C34EC  7D 89 03 A6 */	mtctr r12
/* 807C34F0  4E 80 04 21 */	bctrl 
/* 807C34F4  88 1F 13 78 */	lbz r0, 0x1378(r31)
/* 807C34F8  98 03 00 03 */	stb r0, 3(r3)
lbl_807C34FC:
/* 807C34FC  80 7B 00 34 */	lwz r3, 0x34(r27)
/* 807C3500  81 83 00 00 */	lwz r12, 0(r3)
/* 807C3504  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 807C3508  7D 89 03 A6 */	mtctr r12
/* 807C350C  4E 80 04 21 */	bctrl 
/* 807C3510  80 1F 13 70 */	lwz r0, 0x1370(r31)
/* 807C3514  2C 00 00 02 */	cmpwi r0, 2
/* 807C3518  41 80 00 10 */	blt lbl_807C3528
/* 807C351C  38 00 00 05 */	li r0, 5
/* 807C3520  98 03 00 02 */	stb r0, 2(r3)
/* 807C3524  48 00 00 0C */	b lbl_807C3530
lbl_807C3528:
/* 807C3528  38 00 00 01 */	li r0, 1
/* 807C352C  98 03 00 02 */	stb r0, 2(r3)
lbl_807C3530:
/* 807C3530  3B 39 00 01 */	addi r25, r25, 1
lbl_807C3534:
/* 807C3534  57 23 04 3E */	clrlwi r3, r25, 0x10
/* 807C3538  A0 1C 00 5C */	lhz r0, 0x5c(r28)
/* 807C353C  7C 03 00 40 */	cmplw r3, r0
/* 807C3540  41 80 FD B0 */	blt lbl_807C32F0
/* 807C3544  38 7F 12 44 */	addi r3, r31, 0x1244
/* 807C3548  38 80 00 00 */	li r4, 0
/* 807C354C  4B 84 B2 74 */	b entryDL__21mDoExt_invisibleModelFP4cXyz
/* 807C3550  48 00 00 40 */	b lbl_807C3590
lbl_807C3554:
/* 807C3554  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807C3558  83 23 00 04 */	lwz r25, 4(r3)
/* 807C355C  7F 3A CB 78 */	mr r26, r25
/* 807C3560  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807C3564  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807C3568  80 99 00 04 */	lwz r4, 4(r25)
/* 807C356C  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807C3570  4B 9E 18 30 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807C3574  80 99 00 04 */	lwz r4, 4(r25)
/* 807C3578  80 7F 12 50 */	lwz r3, 0x1250(r31)
/* 807C357C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807C3580  38 84 00 58 */	addi r4, r4, 0x58
/* 807C3584  4B 84 A2 24 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807C3588  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 807C358C  4B 84 DC 34 */	b entryDL__16mDoExt_McaMorfSOFv
lbl_807C3590:
/* 807C3590  C3 FF 04 50 */	lfs f31, 0x450(r31)
/* 807C3594  80 1F 13 70 */	lwz r0, 0x1370(r31)
/* 807C3598  2C 00 00 02 */	cmpwi r0, 2
/* 807C359C  40 82 00 B8 */	bne lbl_807C3654
/* 807C35A0  C0 3D 00 3C */	lfs f1, 0x3c(r29)
/* 807C35A4  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 807C35A8  EC 01 00 28 */	fsubs f0, f1, f0
/* 807C35AC  EC 40 08 24 */	fdivs f2, f0, f1
/* 807C35B0  C0 1D 00 04 */	lfs f0, 4(r29)
/* 807C35B4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C35B8  40 80 00 08 */	bge lbl_807C35C0
/* 807C35BC  FC 40 00 90 */	fmr f2, f0
lbl_807C35C0:
/* 807C35C0  C0 1D 00 08 */	lfs f0, 8(r29)
/* 807C35C4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 807C35C8  40 81 00 08 */	ble lbl_807C35D0
/* 807C35CC  FC 40 00 90 */	fmr f2, f0
lbl_807C35D0:
/* 807C35D0  88 1F 13 78 */	lbz r0, 0x1378(r31)
/* 807C35D4  C8 3D 00 90 */	lfd f1, 0x90(r29)
/* 807C35D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 807C35DC  3C 00 43 30 */	lis r0, 0x4330
/* 807C35E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 807C35E4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 807C35E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 807C35EC  EC 3F 00 32 */	fmuls f1, f31, f0
/* 807C35F0  C0 1D 00 84 */	lfs f0, 0x84(r29)
/* 807C35F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 807C35F8  EC 02 00 32 */	fmuls f0, f2, f0
/* 807C35FC  D0 1F 04 50 */	stfs f0, 0x450(r31)
/* 807C3600  C0 3F 04 50 */	lfs f1, 0x450(r31)
/* 807C3604  C0 1D 00 88 */	lfs f0, 0x88(r29)
/* 807C3608  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 807C360C  40 81 00 08 */	ble lbl_807C3614
/* 807C3610  D0 1F 04 50 */	stfs f0, 0x450(r31)
lbl_807C3614:
/* 807C3614  80 7F 13 2C */	lwz r3, 0x132c(r31)
/* 807C3618  38 80 00 00 */	li r4, 0
/* 807C361C  7F 45 D3 78 */	mr r5, r26
/* 807C3620  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807C3624  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 807C3628  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807C362C  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807C3630  C0 9F 15 90 */	lfs f4, 0x1590(r31)
/* 807C3634  38 FF 15 E8 */	addi r7, r31, 0x15e8
/* 807C3638  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807C363C  39 20 00 00 */	li r9, 0
/* 807C3640  C0 BD 00 08 */	lfs f5, 8(r29)
/* 807C3644  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807C3648  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807C364C  4B 86 B2 C4 */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807C3650  90 7F 13 2C */	stw r3, 0x132c(r31)
lbl_807C3654:
/* 807C3654  80 9F 05 BC */	lwz r4, 0x5bc(r31)
/* 807C3658  28 04 00 00 */	cmplwi r4, 0
/* 807C365C  41 82 00 C0 */	beq lbl_807C371C
/* 807C3660  88 1F 12 40 */	lbz r0, 0x1240(r31)
/* 807C3664  28 00 00 02 */	cmplwi r0, 2
/* 807C3668  41 82 00 B4 */	beq lbl_807C371C
/* 807C366C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807C3670  38 63 CA 54 */	addi r3, r3, g_env_light@l
/* 807C3674  80 84 00 04 */	lwz r4, 4(r4)
/* 807C3678  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807C367C  4B 9E 17 24 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807C3680  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807C3684  80 83 00 04 */	lwz r4, 4(r3)
/* 807C3688  80 7F 12 4C */	lwz r3, 0x124c(r31)
/* 807C368C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 807C3690  38 84 00 58 */	addi r4, r4, 0x58
/* 807C3694  4B 84 A1 14 */	b entry__13mDoExt_brkAnmFP16J3DMaterialTablef
/* 807C3698  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807C369C  80 83 00 04 */	lwz r4, 4(r3)
/* 807C36A0  7F E3 FB 78 */	mr r3, r31
/* 807C36A4  4B 85 9D 88 */	b fopAcM_setEffectMtx__FPC10fopAc_ac_cPC12J3DModelData
/* 807C36A8  80 7F 05 BC */	lwz r3, 0x5bc(r31)
/* 807C36AC  4B 84 A6 18 */	b mDoExt_modelUpdateDL__FP8J3DModel
/* 807C36B0  80 1F 13 70 */	lwz r0, 0x1370(r31)
/* 807C36B4  2C 00 00 02 */	cmpwi r0, 2
/* 807C36B8  40 82 00 20 */	bne lbl_807C36D8
/* 807C36BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C36C0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807C36C4  38 63 61 C0 */	addi r3, r3, 0x61c0
/* 807C36C8  80 9F 13 2C */	lwz r4, 0x132c(r31)
/* 807C36CC  80 BF 05 BC */	lwz r5, 0x5bc(r31)
/* 807C36D0  4B 89 28 4C */	b addReal__21dDlst_shadowControl_cFUlP8J3DModel
/* 807C36D4  48 00 00 48 */	b lbl_807C371C
lbl_807C36D8:
/* 807C36D8  D3 FF 04 50 */	stfs f31, 0x450(r31)
/* 807C36DC  80 7F 13 2C */	lwz r3, 0x132c(r31)
/* 807C36E0  38 80 00 01 */	li r4, 1
/* 807C36E4  80 BF 05 BC */	lwz r5, 0x5bc(r31)
/* 807C36E8  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 807C36EC  C0 3D 00 8C */	lfs f1, 0x8c(r29)
/* 807C36F0  C0 5D 00 04 */	lfs f2, 4(r29)
/* 807C36F4  C0 7F 04 D4 */	lfs f3, 0x4d4(r31)
/* 807C36F8  C0 9F 15 90 */	lfs f4, 0x1590(r31)
/* 807C36FC  38 FF 15 E8 */	addi r7, r31, 0x15e8
/* 807C3700  39 1F 01 0C */	addi r8, r31, 0x10c
/* 807C3704  39 20 00 00 */	li r9, 0
/* 807C3708  C0 BD 00 08 */	lfs f5, 8(r29)
/* 807C370C  3D 40 80 42 */	lis r10, mSimpleTexObj__21dDlst_shadowControl_c@ha
/* 807C3710  39 4A 48 D0 */	addi r10, r10, mSimpleTexObj__21dDlst_shadowControl_c@l
/* 807C3714  4B 86 B1 FC */	b dComIfGd_setShadow__FUlScP8J3DModelP4cXyzffffR13cBgS_PolyInfoP12dKy_tevstr_csfP9_GXTexObj
/* 807C3718  90 7F 13 2C */	stw r3, 0x132c(r31)
lbl_807C371C:
/* 807C371C  88 1F 13 87 */	lbz r0, 0x1387(r31)
/* 807C3720  28 00 00 00 */	cmplwi r0, 0
/* 807C3724  41 82 00 B0 */	beq lbl_807C37D4
/* 807C3728  88 1F 11 00 */	lbz r0, 0x1100(r31)
/* 807C372C  28 00 00 00 */	cmplwi r0, 0
/* 807C3730  41 82 00 54 */	beq lbl_807C3784
/* 807C3734  38 7F 09 58 */	addi r3, r31, 0x958
/* 807C3738  38 80 00 6E */	li r4, 0x6e
/* 807C373C  3C A0 80 7D */	lis r5, l_color@ha
/* 807C3740  38 A5 F1 70 */	addi r5, r5, l_color@l
/* 807C3744  38 DF 01 0C */	addi r6, r31, 0x10c
/* 807C3748  4B 85 08 68 */	b update__19mDoExt_3DlineMat1_cFiR8_GXColorP12dKy_tevstr_c
/* 807C374C  38 7F 09 58 */	addi r3, r31, 0x958
/* 807C3750  81 9F 09 58 */	lwz r12, 0x958(r31)
/* 807C3754  81 8C 00 08 */	lwz r12, 8(r12)
/* 807C3758  7D 89 03 A6 */	mtctr r12
/* 807C375C  4E 80 04 21 */	bctrl 
/* 807C3760  1C 83 00 14 */	mulli r4, r3, 0x14
/* 807C3764  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807C3768  38 03 61 C0 */	addi r0, r3, g_dComIfG_gameInfo@l
/* 807C376C  7C 60 22 14 */	add r3, r0, r4
/* 807C3770  3C 63 00 01 */	addis r3, r3, 1
/* 807C3774  38 63 61 54 */	addi r3, r3, 0x6154
/* 807C3778  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 807C377C  38 9F 09 58 */	addi r4, r31, 0x958
/* 807C3780  4B 85 0F B8 */	b setMat__26mDoExt_3DlineMatSortPacketFP18mDoExt_3DlineMat_c
lbl_807C3784:
/* 807C3784  3B 80 00 00 */	li r28, 0
/* 807C3788  3B 20 00 00 */	li r25, 0
/* 807C378C  3C 60 80 43 */	lis r3, g_env_light@ha
/* 807C3790  3B 43 CA 54 */	addi r26, r3, g_env_light@l
lbl_807C3794:
/* 807C3794  38 1C 09 30 */	addi r0, r28, 0x930
/* 807C3798  7C 1F 00 AE */	lbzx r0, r31, r0
/* 807C379C  54 00 06 31 */	rlwinm. r0, r0, 0, 0x18, 0x18
/* 807C37A0  40 82 00 24 */	bne lbl_807C37C4
/* 807C37A4  7F 43 D3 78 */	mr r3, r26
/* 807C37A8  3B 79 05 C0 */	addi r27, r25, 0x5c0
/* 807C37AC  7C 9F D8 2E */	lwzx r4, r31, r27
/* 807C37B0  80 84 00 04 */	lwz r4, 4(r4)
/* 807C37B4  38 BF 01 0C */	addi r5, r31, 0x10c
/* 807C37B8  4B 9E 15 E8 */	b setLightTevColorType_MAJI__18dScnKy_env_light_cFP12J3DModelDataP12dKy_tevstr_c
/* 807C37BC  7C 7F D8 2E */	lwzx r3, r31, r27
/* 807C37C0  4B 84 A5 04 */	b mDoExt_modelUpdateDL__FP8J3DModel
lbl_807C37C4:
/* 807C37C4  3B 9C 00 01 */	addi r28, r28, 1
/* 807C37C8  2C 1C 00 28 */	cmpwi r28, 0x28
/* 807C37CC  3B 39 00 04 */	addi r25, r25, 4
/* 807C37D0  41 80 FF C4 */	blt lbl_807C3794
lbl_807C37D4:
/* 807C37D4  38 60 00 01 */	li r3, 1
/* 807C37D8  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 807C37DC  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 807C37E0  39 61 00 40 */	addi r11, r1, 0x40
/* 807C37E4  4B B9 EA 34 */	b _restgpr_25
/* 807C37E8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 807C37EC  7C 08 03 A6 */	mtlr r0
/* 807C37F0  38 21 00 50 */	addi r1, r1, 0x50
/* 807C37F4  4E 80 00 20 */	blr 
