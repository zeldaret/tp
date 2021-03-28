lbl_801AC2E8:
/* 801AC2E8  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 801AC2EC  7C 08 02 A6 */	mflr r0
/* 801AC2F0  90 01 00 84 */	stw r0, 0x84(r1)
/* 801AC2F4  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 801AC2F8  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 801AC2FC  39 61 00 70 */	addi r11, r1, 0x70
/* 801AC300  48 1B 5E DD */	bl _savegpr_29
/* 801AC304  7C 7E 1B 78 */	mr r30, r3
/* 801AC308  3C 60 80 43 */	lis r3, g_env_light@ha
/* 801AC30C  3B E3 CA 54 */	addi r31, r3, g_env_light@l
/* 801AC310  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 801AC314  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 801AC318  83 A3 5D 74 */	lwz r29, 0x5d74(r3)
/* 801AC31C  C0 1E 05 38 */	lfs f0, 0x538(r30)
/* 801AC320  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 801AC324  C0 5E 05 3C */	lfs f2, 0x53c(r30)
/* 801AC328  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 801AC32C  C0 1E 05 40 */	lfs f0, 0x540(r30)
/* 801AC330  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 801AC334  88 03 4F AD */	lbz r0, 0x4fad(r3)
/* 801AC338  28 00 00 00 */	cmplwi r0, 0
/* 801AC33C  41 82 02 20 */	beq lbl_801AC55C
/* 801AC340  88 1E 04 86 */	lbz r0, 0x486(r30)
/* 801AC344  28 00 00 0A */	cmplwi r0, 0xa
/* 801AC348  41 81 02 14 */	bgt lbl_801AC55C
/* 801AC34C  C0 3D 00 DC */	lfs f1, 0xdc(r29)
/* 801AC350  EC 02 08 28 */	fsubs f0, f2, f1
/* 801AC354  FC 00 02 10 */	fabs f0, f0
/* 801AC358  FC 40 00 18 */	frsp f2, f0
/* 801AC35C  C0 02 A3 F8 */	lfs f0, lit_10273(r2)
/* 801AC360  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801AC364  40 80 00 08 */	bge lbl_801AC36C
/* 801AC368  D0 21 00 28 */	stfs f1, 0x28(r1)
lbl_801AC36C:
/* 801AC36C  38 61 00 24 */	addi r3, r1, 0x24
/* 801AC370  38 9D 00 D8 */	addi r4, r29, 0xd8
/* 801AC374  48 19 B0 29 */	bl PSVECSquareDistance
/* 801AC378  C0 02 A2 0C */	lfs f0, lit_4409(r2)
/* 801AC37C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AC380  40 81 00 58 */	ble lbl_801AC3D8
/* 801AC384  FC 00 08 34 */	frsqrte f0, f1
/* 801AC388  C8 82 A2 10 */	lfd f4, lit_4410(r2)
/* 801AC38C  FC 44 00 32 */	fmul f2, f4, f0
/* 801AC390  C8 62 A2 18 */	lfd f3, lit_4411(r2)
/* 801AC394  FC 00 00 32 */	fmul f0, f0, f0
/* 801AC398  FC 01 00 32 */	fmul f0, f1, f0
/* 801AC39C  FC 03 00 28 */	fsub f0, f3, f0
/* 801AC3A0  FC 02 00 32 */	fmul f0, f2, f0
/* 801AC3A4  FC 44 00 32 */	fmul f2, f4, f0
/* 801AC3A8  FC 00 00 32 */	fmul f0, f0, f0
/* 801AC3AC  FC 01 00 32 */	fmul f0, f1, f0
/* 801AC3B0  FC 03 00 28 */	fsub f0, f3, f0
/* 801AC3B4  FC 02 00 32 */	fmul f0, f2, f0
/* 801AC3B8  FC 44 00 32 */	fmul f2, f4, f0
/* 801AC3BC  FC 00 00 32 */	fmul f0, f0, f0
/* 801AC3C0  FC 01 00 32 */	fmul f0, f1, f0
/* 801AC3C4  FC 03 00 28 */	fsub f0, f3, f0
/* 801AC3C8  FC 02 00 32 */	fmul f0, f2, f0
/* 801AC3CC  FF E1 00 32 */	fmul f31, f1, f0
/* 801AC3D0  FF E0 F8 18 */	frsp f31, f31
/* 801AC3D4  48 00 00 90 */	b lbl_801AC464
lbl_801AC3D8:
/* 801AC3D8  C8 02 A2 20 */	lfd f0, lit_4412(r2)
/* 801AC3DC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801AC3E0  40 80 00 10 */	bge lbl_801AC3F0
/* 801AC3E4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801AC3E8  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 801AC3EC  48 00 00 78 */	b lbl_801AC464
lbl_801AC3F0:
/* 801AC3F0  D0 21 00 08 */	stfs f1, 8(r1)
/* 801AC3F4  80 81 00 08 */	lwz r4, 8(r1)
/* 801AC3F8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 801AC3FC  3C 00 7F 80 */	lis r0, 0x7f80
/* 801AC400  7C 03 00 00 */	cmpw r3, r0
/* 801AC404  41 82 00 14 */	beq lbl_801AC418
/* 801AC408  40 80 00 40 */	bge lbl_801AC448
/* 801AC40C  2C 03 00 00 */	cmpwi r3, 0
/* 801AC410  41 82 00 20 */	beq lbl_801AC430
/* 801AC414  48 00 00 34 */	b lbl_801AC448
lbl_801AC418:
/* 801AC418  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AC41C  41 82 00 0C */	beq lbl_801AC428
/* 801AC420  38 00 00 01 */	li r0, 1
/* 801AC424  48 00 00 28 */	b lbl_801AC44C
lbl_801AC428:
/* 801AC428  38 00 00 02 */	li r0, 2
/* 801AC42C  48 00 00 20 */	b lbl_801AC44C
lbl_801AC430:
/* 801AC430  54 80 02 7F */	clrlwi. r0, r4, 9
/* 801AC434  41 82 00 0C */	beq lbl_801AC440
/* 801AC438  38 00 00 05 */	li r0, 5
/* 801AC43C  48 00 00 10 */	b lbl_801AC44C
lbl_801AC440:
/* 801AC440  38 00 00 03 */	li r0, 3
/* 801AC444  48 00 00 08 */	b lbl_801AC44C
lbl_801AC448:
/* 801AC448  38 00 00 04 */	li r0, 4
lbl_801AC44C:
/* 801AC44C  2C 00 00 01 */	cmpwi r0, 1
/* 801AC450  40 82 00 10 */	bne lbl_801AC460
/* 801AC454  3C 60 80 45 */	lis r3, __float_nan@ha
/* 801AC458  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 801AC45C  48 00 00 08 */	b lbl_801AC464
lbl_801AC460:
/* 801AC460  FF E0 08 90 */	fmr f31, f1
lbl_801AC464:
/* 801AC464  C0 02 A1 EC */	lfs f0, lit_4356(r2)
/* 801AC468  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801AC46C  40 80 00 F0 */	bge lbl_801AC55C
/* 801AC470  C0 1F 12 68 */	lfs f0, 0x1268(r31)
/* 801AC474  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 801AC478  40 80 00 E4 */	bge lbl_801AC55C
/* 801AC47C  38 7E 05 38 */	addi r3, r30, 0x538
/* 801AC480  38 81 00 30 */	addi r4, r1, 0x30
/* 801AC484  4B E6 8E 8D */	bl mDoLib_project__FP3VecP3Vec
/* 801AC488  C0 41 00 30 */	lfs f2, 0x30(r1)
/* 801AC48C  C0 22 A2 0C */	lfs f1, lit_4409(r2)
/* 801AC490  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801AC494  4C 41 13 82 */	cror 2, 1, 2
/* 801AC498  40 82 00 C4 */	bne lbl_801AC55C
/* 801AC49C  C0 02 A3 FC */	lfs f0, lit_10274(r2)
/* 801AC4A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801AC4A4  40 80 00 B8 */	bge lbl_801AC55C
/* 801AC4A8  C0 41 00 34 */	lfs f2, 0x34(r1)
/* 801AC4AC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 801AC4B0  4C 41 13 82 */	cror 2, 1, 2
/* 801AC4B4  40 82 00 A8 */	bne lbl_801AC55C
/* 801AC4B8  C0 02 A3 D0 */	lfs f0, lit_9722(r2)
/* 801AC4BC  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 801AC4C0  40 80 00 9C */	bge lbl_801AC55C
/* 801AC4C4  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 801AC4C8  38 9D 00 E4 */	addi r4, r29, 0xe4
/* 801AC4CC  38 A1 00 18 */	addi r5, r1, 0x18
/* 801AC4D0  4B EA F2 91 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801AC4D4  38 7D 00 D8 */	addi r3, r29, 0xd8
/* 801AC4D8  38 9E 05 38 */	addi r4, r30, 0x538
/* 801AC4DC  38 A1 00 0C */	addi r5, r1, 0xc
/* 801AC4E0  4B EA F2 81 */	bl dKyr_get_vectle_calc__FP4cXyzP4cXyzP4cXyz
/* 801AC4E4  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 801AC4E8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 801AC4EC  48 0B B1 89 */	bl cM_atan2s__Fff
/* 801AC4F0  7C 7E 1B 78 */	mr r30, r3
/* 801AC4F4  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 801AC4F8  C0 41 00 14 */	lfs f2, 0x14(r1)
/* 801AC4FC  48 0B B1 79 */	bl cM_atan2s__Fff
/* 801AC500  7C 60 07 34 */	extsh r0, r3
/* 801AC504  C8 42 A2 30 */	lfd f2, lit_4444(r2)
/* 801AC508  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AC50C  90 01 00 44 */	stw r0, 0x44(r1)
/* 801AC510  3C 60 43 30 */	lis r3, 0x4330
/* 801AC514  90 61 00 40 */	stw r3, 0x40(r1)
/* 801AC518  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 801AC51C  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AC520  7F C0 07 34 */	extsh r0, r30
/* 801AC524  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AC528  90 01 00 4C */	stw r0, 0x4c(r1)
/* 801AC52C  90 61 00 48 */	stw r3, 0x48(r1)
/* 801AC530  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 801AC534  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AC538  EC 01 00 28 */	fsubs f0, f1, f0
/* 801AC53C  FC 00 02 10 */	fabs f0, f0
/* 801AC540  FC 00 00 18 */	frsp f0, f0
/* 801AC544  FC 00 00 1E */	fctiwz f0, f0
/* 801AC548  D8 01 00 50 */	stfd f0, 0x50(r1)
/* 801AC54C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 801AC550  7C 00 07 35 */	extsh. r0, r0
/* 801AC554  40 81 00 08 */	ble lbl_801AC55C
/* 801AC558  D3 FF 12 68 */	stfs f31, 0x1268(r31)
lbl_801AC55C:
/* 801AC55C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 801AC560  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 801AC564  39 61 00 70 */	addi r11, r1, 0x70
/* 801AC568  48 1B 5C C1 */	bl _restgpr_29
/* 801AC56C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801AC570  7C 08 03 A6 */	mtlr r0
/* 801AC574  38 21 00 80 */	addi r1, r1, 0x80
/* 801AC578  4E 80 00 20 */	blr 
