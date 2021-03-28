lbl_8050284C:
/* 8050284C  94 21 FF 30 */	stwu r1, -0xd0(r1)
/* 80502850  7C 08 02 A6 */	mflr r0
/* 80502854  90 01 00 D4 */	stw r0, 0xd4(r1)
/* 80502858  39 61 00 D0 */	addi r11, r1, 0xd0
/* 8050285C  4B E5 F9 70 */	b _savegpr_25
/* 80502860  7C 79 1B 78 */	mr r25, r3
/* 80502864  3C 60 80 50 */	lis r3, lit_3999@ha
/* 80502868  3B 63 46 DC */	addi r27, r3, lit_3999@l
/* 8050286C  7F 3F CB 78 */	mr r31, r25
/* 80502870  38 61 00 0C */	addi r3, r1, 0xc
/* 80502874  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80502878  38 BF 04 BC */	addi r5, r31, 0x4bc
/* 8050287C  4B D6 42 B8 */	b __mi__4cXyzCFRC3Vec
/* 80502880  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80502884  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80502888  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8050288C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80502890  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80502894  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80502898  C0 1B 00 04 */	lfs f0, 4(r27)
/* 8050289C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805028A0  38 61 00 18 */	addi r3, r1, 0x18
/* 805028A4  4B E4 48 94 */	b PSVECSquareMag
/* 805028A8  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805028AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805028B0  40 81 00 58 */	ble lbl_80502908
/* 805028B4  FC 00 08 34 */	frsqrte f0, f1
/* 805028B8  C8 9B 00 08 */	lfd f4, 8(r27)
/* 805028BC  FC 44 00 32 */	fmul f2, f4, f0
/* 805028C0  C8 7B 00 10 */	lfd f3, 0x10(r27)
/* 805028C4  FC 00 00 32 */	fmul f0, f0, f0
/* 805028C8  FC 01 00 32 */	fmul f0, f1, f0
/* 805028CC  FC 03 00 28 */	fsub f0, f3, f0
/* 805028D0  FC 02 00 32 */	fmul f0, f2, f0
/* 805028D4  FC 44 00 32 */	fmul f2, f4, f0
/* 805028D8  FC 00 00 32 */	fmul f0, f0, f0
/* 805028DC  FC 01 00 32 */	fmul f0, f1, f0
/* 805028E0  FC 03 00 28 */	fsub f0, f3, f0
/* 805028E4  FC 02 00 32 */	fmul f0, f2, f0
/* 805028E8  FC 44 00 32 */	fmul f2, f4, f0
/* 805028EC  FC 00 00 32 */	fmul f0, f0, f0
/* 805028F0  FC 01 00 32 */	fmul f0, f1, f0
/* 805028F4  FC 03 00 28 */	fsub f0, f3, f0
/* 805028F8  FC 02 00 32 */	fmul f0, f2, f0
/* 805028FC  FC 21 00 32 */	fmul f1, f1, f0
/* 80502900  FC 20 08 18 */	frsp f1, f1
/* 80502904  48 00 00 88 */	b lbl_8050298C
lbl_80502908:
/* 80502908  C8 1B 00 18 */	lfd f0, 0x18(r27)
/* 8050290C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502910  40 80 00 10 */	bge lbl_80502920
/* 80502914  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80502918  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8050291C  48 00 00 70 */	b lbl_8050298C
lbl_80502920:
/* 80502920  D0 21 00 08 */	stfs f1, 8(r1)
/* 80502924  80 81 00 08 */	lwz r4, 8(r1)
/* 80502928  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8050292C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80502930  7C 03 00 00 */	cmpw r3, r0
/* 80502934  41 82 00 14 */	beq lbl_80502948
/* 80502938  40 80 00 40 */	bge lbl_80502978
/* 8050293C  2C 03 00 00 */	cmpwi r3, 0
/* 80502940  41 82 00 20 */	beq lbl_80502960
/* 80502944  48 00 00 34 */	b lbl_80502978
lbl_80502948:
/* 80502948  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8050294C  41 82 00 0C */	beq lbl_80502958
/* 80502950  38 00 00 01 */	li r0, 1
/* 80502954  48 00 00 28 */	b lbl_8050297C
lbl_80502958:
/* 80502958  38 00 00 02 */	li r0, 2
/* 8050295C  48 00 00 20 */	b lbl_8050297C
lbl_80502960:
/* 80502960  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80502964  41 82 00 0C */	beq lbl_80502970
/* 80502968  38 00 00 05 */	li r0, 5
/* 8050296C  48 00 00 10 */	b lbl_8050297C
lbl_80502970:
/* 80502970  38 00 00 03 */	li r0, 3
/* 80502974  48 00 00 08 */	b lbl_8050297C
lbl_80502978:
/* 80502978  38 00 00 04 */	li r0, 4
lbl_8050297C:
/* 8050297C  2C 00 00 01 */	cmpwi r0, 1
/* 80502980  40 82 00 0C */	bne lbl_8050298C
/* 80502984  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80502988  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8050298C:
/* 8050298C  C0 1B 00 04 */	lfs f0, 4(r27)
/* 80502990  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80502994  40 81 01 24 */	ble lbl_80502AB8
/* 80502998  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8050299C  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 805029A0  4B D6 4C D4 */	b cM_atan2s__Fff
/* 805029A4  7C 64 1B 78 */	mr r4, r3
/* 805029A8  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 805029AC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 805029B0  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 805029B4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805029B8  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 805029BC  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 805029C0  C0 3B 00 AC */	lfs f1, 0xac(r27)
/* 805029C4  C0 19 05 94 */	lfs f0, 0x594(r25)
/* 805029C8  EC 01 00 2A */	fadds f0, f1, f0
/* 805029CC  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 805029D0  C0 1B 00 04 */	lfs f0, 4(r27)
/* 805029D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805029D8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805029DC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805029E0  80 63 00 00 */	lwz r3, 0(r3)
/* 805029E4  4B B0 99 F8 */	b mDoMtx_YrotS__FPA4_fs
/* 805029E8  3B 20 00 00 */	li r25, 0
/* 805029EC  3B C0 00 00 */	li r30, 0
/* 805029F0  3C 60 80 50 */	lis r3, l_HIO@ha
/* 805029F4  3B 63 49 60 */	addi r27, r3, l_HIO@l
/* 805029F8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805029FC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80502A00  3B 43 0F 38 */	addi r26, r3, 0xf38
/* 80502A04  3C 60 80 50 */	lis r3, c_x@ha
/* 80502A08  3B 83 47 FC */	addi r28, r3, c_x@l
/* 80502A0C  3C 60 80 50 */	lis r3, c_z@ha
/* 80502A10  3B A3 48 08 */	addi r29, r3, c_z@l
lbl_80502A14:
/* 80502A14  C0 5F 04 EC */	lfs f2, 0x4ec(r31)
/* 80502A18  C0 3B 00 08 */	lfs f1, 8(r27)
/* 80502A1C  7C 1C F4 2E */	lfsx f0, r28, r30
/* 80502A20  EC 01 00 32 */	fmuls f0, f1, f0
/* 80502A24  EC 02 00 32 */	fmuls f0, f2, f0
/* 80502A28  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80502A2C  7C 1D F4 2E */	lfsx f0, r29, r30
/* 80502A30  EC 01 00 32 */	fmuls f0, f1, f0
/* 80502A34  EC 02 00 32 */	fmuls f0, f2, f0
/* 80502A38  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80502A3C  38 61 00 18 */	addi r3, r1, 0x18
/* 80502A40  38 81 00 24 */	addi r4, r1, 0x24
/* 80502A44  4B D6 E4 A8 */	b MtxPosition__FP4cXyzP4cXyz
/* 80502A48  38 61 00 24 */	addi r3, r1, 0x24
/* 80502A4C  38 81 00 30 */	addi r4, r1, 0x30
/* 80502A50  7C 65 1B 78 */	mr r5, r3
/* 80502A54  4B E4 46 3C */	b PSVECAdd
/* 80502A58  38 61 00 3C */	addi r3, r1, 0x3c
/* 80502A5C  4B B7 52 0C */	b __ct__11dBgS_LinChkFv
/* 80502A60  38 61 00 3C */	addi r3, r1, 0x3c
/* 80502A64  38 81 00 30 */	addi r4, r1, 0x30
/* 80502A68  38 A1 00 24 */	addi r5, r1, 0x24
/* 80502A6C  7F E6 FB 78 */	mr r6, r31
/* 80502A70  4B B7 52 F4 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80502A74  7F 43 D3 78 */	mr r3, r26
/* 80502A78  38 81 00 3C */	addi r4, r1, 0x3c
/* 80502A7C  4B B7 19 38 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80502A80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80502A84  41 82 00 18 */	beq lbl_80502A9C
/* 80502A88  38 61 00 3C */	addi r3, r1, 0x3c
/* 80502A8C  38 80 FF FF */	li r4, -1
/* 80502A90  4B B7 52 4C */	b __dt__11dBgS_LinChkFv
/* 80502A94  38 60 00 01 */	li r3, 1
/* 80502A98  48 00 00 24 */	b lbl_80502ABC
lbl_80502A9C:
/* 80502A9C  38 61 00 3C */	addi r3, r1, 0x3c
/* 80502AA0  38 80 FF FF */	li r4, -1
/* 80502AA4  4B B7 52 38 */	b __dt__11dBgS_LinChkFv
/* 80502AA8  3B 39 00 01 */	addi r25, r25, 1
/* 80502AAC  2C 19 00 03 */	cmpwi r25, 3
/* 80502AB0  3B DE 00 04 */	addi r30, r30, 4
/* 80502AB4  41 80 FF 60 */	blt lbl_80502A14
lbl_80502AB8:
/* 80502AB8  38 60 00 00 */	li r3, 0
lbl_80502ABC:
/* 80502ABC  39 61 00 D0 */	addi r11, r1, 0xd0
/* 80502AC0  4B E5 F7 58 */	b _restgpr_25
/* 80502AC4  80 01 00 D4 */	lwz r0, 0xd4(r1)
/* 80502AC8  7C 08 03 A6 */	mtlr r0
/* 80502ACC  38 21 00 D0 */	addi r1, r1, 0xd0
/* 80502AD0  4E 80 00 20 */	blr 
