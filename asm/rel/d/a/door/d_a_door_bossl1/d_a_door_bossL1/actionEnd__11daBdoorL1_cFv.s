lbl_804E44EC:
/* 804E44EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E44F0  7C 08 02 A6 */	mflr r0
/* 804E44F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E44F8  39 61 00 50 */	addi r11, r1, 0x50
/* 804E44FC  4B E7 DC E1 */	bl _savegpr_29
/* 804E4500  7C 7F 1B 78 */	mr r31, r3
/* 804E4504  3C 60 80 4E */	lis r3, l_staff_name@ha /* 0x804E4A14@ha */
/* 804E4508  3B C3 4A 14 */	addi r30, r3, l_staff_name@l /* 0x804E4A14@l */
/* 804E450C  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 804E4510  4B D8 3C C5 */	bl ChkUsed__9cBgW_BgIdCFv
/* 804E4514  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804E4518  40 82 00 1C */	bne lbl_804E4534
/* 804E451C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E4520  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E4524  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804E4528  80 9F 05 90 */	lwz r4, 0x590(r31)
/* 804E452C  7F E5 FB 78 */	mr r5, r31
/* 804E4530  4B B9 04 D9 */	bl Regist__4dBgSFP9dBgW_BaseP10fopAc_ac_c
lbl_804E4534:
/* 804E4534  38 00 00 00 */	li r0, 0
/* 804E4538  98 1F 05 99 */	stb r0, 0x599(r31)
/* 804E453C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 804E4540  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 804E4544  A8 1F 04 B6 */	lha r0, 0x4b6(r31)
/* 804E4548  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804E454C  7C 64 02 14 */	add r3, r4, r0
/* 804E4550  C0 23 00 04 */	lfs f1, 4(r3)
/* 804E4554  7C 04 04 2E */	lfsx f0, r4, r0
/* 804E4558  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804E455C  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804E4560  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804E4564  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 804E4568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E456C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E4570  83 A3 5D AC */	lwz r29, 0x5dac(r3)
/* 804E4574  38 61 00 08 */	addi r3, r1, 8
/* 804E4578  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 804E457C  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804E4580  4B D8 25 B5 */	bl __mi__4cXyzCFRC3Vec
/* 804E4584  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E4588  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804E458C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 804E4590  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804E4594  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804E4598  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E459C  C0 C1 00 2C */	lfs f6, 0x2c(r1)
/* 804E45A0  EC 21 01 B2 */	fmuls f1, f1, f6
/* 804E45A4  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 804E45A8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804E45AC  EC 81 00 2A */	fadds f4, f1, f0
/* 804E45B0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804E45B4  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804E45B8  40 80 00 0C */	bge lbl_804E45C4
/* 804E45BC  C0 BE 00 C0 */	lfs f5, 0xc0(r30)
/* 804E45C0  48 00 00 08 */	b lbl_804E45C8
lbl_804E45C4:
/* 804E45C4  C0 BE 00 C4 */	lfs f5, 0xc4(r30)
lbl_804E45C8:
/* 804E45C8  C0 3F 04 D8 */	lfs f1, 0x4d8(r31)
/* 804E45CC  EC 05 00 B2 */	fmuls f0, f5, f2
/* 804E45D0  EC 61 00 28 */	fsubs f3, f1, f0
/* 804E45D4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804E45D8  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804E45DC  EC 05 01 B2 */	fmuls f0, f5, f6
/* 804E45E0  EC 01 00 28 */	fsubs f0, f1, f0
/* 804E45E4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E45E8  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 804E45EC  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 804E45F0  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 804E45F4  7C 06 07 74 */	extsb r6, r0
/* 804E45F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804E45FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804E4600  38 63 0D B4 */	addi r3, r3, 0xdb4
/* 804E4604  38 81 00 14 */	addi r4, r1, 0x14
/* 804E4608  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804E460C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 804E4610  40 81 00 0C */	ble lbl_804E461C
/* 804E4614  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 804E4618  48 00 00 14 */	b lbl_804E462C
lbl_804E461C:
/* 804E461C  A8 BF 04 DE */	lha r5, 0x4de(r31)
/* 804E4620  3C A5 00 01 */	addis r5, r5, 1
/* 804E4624  38 05 80 00 */	addi r0, r5, -32768
/* 804E4628  7C 05 07 34 */	extsh r5, r0
lbl_804E462C:
/* 804E462C  4B B5 09 55 */	bl setRoom__13dSv_restart_cFRC4cXyzsSc
/* 804E4630  38 60 00 01 */	li r3, 1
/* 804E4634  39 61 00 50 */	addi r11, r1, 0x50
/* 804E4638  4B E7 DB F1 */	bl _restgpr_29
/* 804E463C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E4640  7C 08 03 A6 */	mtlr r0
/* 804E4644  38 21 00 50 */	addi r1, r1, 0x50
/* 804E4648  4E 80 00 20 */	blr 
