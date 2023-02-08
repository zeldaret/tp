lbl_805A037C:
/* 805A037C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A0380  7C 08 02 A6 */	mflr r0
/* 805A0384  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A0388  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A038C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A0390  7C 7E 1B 78 */	mr r30, r3
/* 805A0394  3C 80 80 5A */	lis r4, lit_3769@ha /* 0x805A1158@ha */
/* 805A0398  3B E4 11 58 */	addi r31, r4, lit_3769@l /* 0x805A1158@l */
/* 805A039C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 805A03A0  D0 03 05 30 */	stfs f0, 0x530(r3)
/* 805A03A4  38 00 00 00 */	li r0, 0
/* 805A03A8  98 03 05 E4 */	stb r0, 0x5e4(r3)
/* 805A03AC  80 03 08 F0 */	lwz r0, 0x8f0(r3)
/* 805A03B0  60 00 00 01 */	ori r0, r0, 1
/* 805A03B4  90 03 08 F0 */	stw r0, 0x8f0(r3)
/* 805A03B8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A03BC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A03C0  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 805A03C4  4B A7 A4 1D */	bl fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805A03C8  D0 3E 05 D4 */	stfs f1, 0x5d4(r30)
/* 805A03CC  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 805A03D0  38 80 00 00 */	li r4, 0
/* 805A03D4  38 A0 00 02 */	li r5, 2
/* 805A03D8  38 C0 20 00 */	li r6, 0x2000
/* 805A03DC  4B CD 02 2D */	bl cLib_addCalcAngleS2__FPssss
/* 805A03E0  38 00 00 00 */	li r0, 0
/* 805A03E4  B0 1E 04 E0 */	sth r0, 0x4e0(r30)
/* 805A03E8  98 1E 06 1E */	stb r0, 0x61e(r30)
/* 805A03EC  C0 3E 06 0C */	lfs f1, 0x60c(r30)
/* 805A03F0  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A03F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A03F8  40 80 00 CC */	bge lbl_805A04C4
/* 805A03FC  A8 1E 05 F8 */	lha r0, 0x5f8(r30)
/* 805A0400  2C 00 00 03 */	cmpwi r0, 3
/* 805A0404  41 82 00 60 */	beq lbl_805A0464
/* 805A0408  40 80 00 1C */	bge lbl_805A0424
/* 805A040C  2C 00 00 01 */	cmpwi r0, 1
/* 805A0410  41 82 00 34 */	beq lbl_805A0444
/* 805A0414  40 80 00 44 */	bge lbl_805A0458
/* 805A0418  2C 00 00 00 */	cmpwi r0, 0
/* 805A041C  40 80 00 14 */	bge lbl_805A0430
/* 805A0420  48 00 00 60 */	b lbl_805A0480
lbl_805A0424:
/* 805A0424  2C 00 00 07 */	cmpwi r0, 7
/* 805A0428  41 82 00 48 */	beq lbl_805A0470
/* 805A042C  48 00 00 54 */	b lbl_805A0480
lbl_805A0430:
/* 805A0430  7F C3 F3 78 */	mr r3, r30
/* 805A0434  4B FF F6 35 */	bl sq_normal__FP8sq_class
/* 805A0438  38 00 00 01 */	li r0, 1
/* 805A043C  98 1E 06 1E */	stb r0, 0x61e(r30)
/* 805A0440  48 00 00 40 */	b lbl_805A0480
lbl_805A0444:
/* 805A0444  7F C3 F3 78 */	mr r3, r30
/* 805A0448  4B FF FA 09 */	bl sq_away__FP8sq_class
/* 805A044C  38 00 00 01 */	li r0, 1
/* 805A0450  98 1E 06 1E */	stb r0, 0x61e(r30)
/* 805A0454  48 00 00 2C */	b lbl_805A0480
lbl_805A0458:
/* 805A0458  7F C3 F3 78 */	mr r3, r30
/* 805A045C  4B FF FB C9 */	bl sq_carry__FP8sq_class
/* 805A0460  48 00 00 20 */	b lbl_805A0480
lbl_805A0464:
/* 805A0464  7F C3 F3 78 */	mr r3, r30
/* 805A0468  4B FF FC F9 */	bl sq_fly__FP8sq_class
/* 805A046C  48 00 00 14 */	b lbl_805A0480
lbl_805A0470:
/* 805A0470  7F C3 F3 78 */	mr r3, r30
/* 805A0474  4B FF FD A9 */	bl sq_message__FP8sq_class
/* 805A0478  38 00 00 02 */	li r0, 2
/* 805A047C  98 1E 06 1E */	stb r0, 0x61e(r30)
lbl_805A0480:
/* 805A0480  88 1E 06 1E */	lbz r0, 0x61e(r30)
/* 805A0484  2C 00 00 01 */	cmpwi r0, 1
/* 805A0488  40 82 00 3C */	bne lbl_805A04C4
/* 805A048C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A0490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A0494  80 63 5D B4 */	lwz r3, 0x5db4(r3)
/* 805A0498  80 03 05 74 */	lwz r0, 0x574(r3)
/* 805A049C  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 805A04A0  41 82 00 24 */	beq lbl_805A04C4
/* 805A04A4  C0 3E 05 D4 */	lfs f1, 0x5d4(r30)
/* 805A04A8  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 805A04AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A04B0  40 80 00 14 */	bge lbl_805A04C4
/* 805A04B4  38 00 00 07 */	li r0, 7
/* 805A04B8  B0 1E 05 F8 */	sth r0, 0x5f8(r30)
/* 805A04BC  38 00 00 00 */	li r0, 0
/* 805A04C0  B0 1E 05 FA */	sth r0, 0x5fa(r30)
lbl_805A04C4:
/* 805A04C4  88 1E 05 E4 */	lbz r0, 0x5e4(r30)
/* 805A04C8  7C 00 07 75 */	extsb. r0, r0
/* 805A04CC  41 82 00 60 */	beq lbl_805A052C
/* 805A04D0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805A04D4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805A04D8  80 63 00 00 */	lwz r3, 0(r3)
/* 805A04DC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805A04E0  4B A6 BE FD */	bl mDoMtx_YrotS__FPA4_fs
/* 805A04E4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805A04E8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805A04EC  80 63 00 00 */	lwz r3, 0(r3)
/* 805A04F0  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805A04F4  4B A6 BE A9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805A04F8  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805A04FC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805A0500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A0504  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805A0508  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A050C  38 61 00 14 */	addi r3, r1, 0x14
/* 805A0510  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 805A0514  4B CD 09 D9 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805A0518  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A051C  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 805A0520  7C 65 1B 78 */	mr r5, r3
/* 805A0524  4B DA 6B 6D */	bl PSVECAdd
/* 805A0528  48 00 00 C8 */	b lbl_805A05F0
lbl_805A052C:
/* 805A052C  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805A0530  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805A0534  80 63 00 00 */	lwz r3, 0(r3)
/* 805A0538  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805A053C  4B A6 BE A1 */	bl mDoMtx_YrotS__FPA4_fs
/* 805A0540  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805A0544  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805A0548  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A054C  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 805A0550  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A0554  38 61 00 14 */	addi r3, r1, 0x14
/* 805A0558  38 81 00 08 */	addi r4, r1, 8
/* 805A055C  4B CD 09 91 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805A0560  C0 01 00 08 */	lfs f0, 8(r1)
/* 805A0564  D0 1E 04 F8 */	stfs f0, 0x4f8(r30)
/* 805A0568  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805A056C  D0 1E 05 00 */	stfs f0, 0x500(r30)
/* 805A0570  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 805A0574  C0 1E 05 30 */	lfs f0, 0x530(r30)
/* 805A0578  EC 01 00 2A */	fadds f0, f1, f0
/* 805A057C  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805A0580  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A0584  38 9E 04 F8 */	addi r4, r30, 0x4f8
/* 805A0588  7C 65 1B 78 */	mr r5, r3
/* 805A058C  4B DA 6B 05 */	bl PSVECAdd
/* 805A0590  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 805A0594  C0 1F 00 80 */	lfs f0, 0x80(r31)
/* 805A0598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A059C  40 80 00 08 */	bge lbl_805A05A4
/* 805A05A0  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_805A05A4:
/* 805A05A4  34 7E 08 88 */	addic. r3, r30, 0x888
/* 805A05A8  41 82 00 34 */	beq lbl_805A05DC
/* 805A05AC  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 805A05B0  C0 03 00 00 */	lfs f0, 0(r3)
/* 805A05B4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A05B8  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 805A05BC  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 805A05C0  C0 03 00 04 */	lfs f0, 4(r3)
/* 805A05C4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A05C8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 805A05CC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 805A05D0  C0 03 00 08 */	lfs f0, 8(r3)
/* 805A05D4  EC 01 00 2A */	fadds f0, f1, f0
/* 805A05D8  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_805A05DC:
/* 805A05DC  38 7E 06 B0 */	addi r3, r30, 0x6b0
/* 805A05E0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 805A05E4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 805A05E8  38 84 0F 38 */	addi r4, r4, 0xf38
/* 805A05EC  4B AD 64 C1 */	bl CrrPos__9dBgS_AcchFR4dBgS
lbl_805A05F0:
/* 805A05F0  C0 3E 06 0C */	lfs f1, 0x60c(r30)
/* 805A05F4  C0 1F 00 08 */	lfs f0, 8(r31)
/* 805A05F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A05FC  40 81 00 60 */	ble lbl_805A065C
/* 805A0600  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805A0604  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 805A0608  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805A060C  FC 00 08 50 */	fneg f0, f1
/* 805A0610  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805A0614  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805A0618  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805A061C  80 63 00 00 */	lwz r3, 0(r3)
/* 805A0620  A8 9E 06 10 */	lha r4, 0x610(r30)
/* 805A0624  4B A6 BD B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 805A0628  38 61 00 14 */	addi r3, r1, 0x14
/* 805A062C  38 81 00 08 */	addi r4, r1, 8
/* 805A0630  4B CD 08 BD */	bl MtxPosition__FP4cXyzP4cXyz
/* 805A0634  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 805A0638  38 81 00 08 */	addi r4, r1, 8
/* 805A063C  7C 65 1B 78 */	mr r5, r3
/* 805A0640  4B DA 6A 51 */	bl PSVECAdd
/* 805A0644  38 7E 06 0C */	addi r3, r30, 0x60c
/* 805A0648  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805A064C  C0 5F 00 50 */	lfs f2, 0x50(r31)
/* 805A0650  4B CC F4 31 */	bl cLib_addCalc0__FPfff
/* 805A0654  C0 1F 00 20 */	lfs f0, 0x20(r31)
/* 805A0658  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_805A065C:
/* 805A065C  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805A0660  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805A0664  38 A0 00 02 */	li r5, 2
/* 805A0668  38 C0 40 00 */	li r6, 0x4000
/* 805A066C  4B CC FF 9D */	bl cLib_addCalcAngleS2__FPssss
/* 805A0670  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805A0674  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805A0678  38 A0 00 02 */	li r5, 2
/* 805A067C  38 C0 40 00 */	li r6, 0x4000
/* 805A0680  4B CC FF 89 */	bl cLib_addCalcAngleS2__FPssss
/* 805A0684  A8 1E 04 E0 */	lha r0, 0x4e0(r30)
/* 805A0688  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805A068C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A0690  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A0694  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A0698  7C 08 03 A6 */	mtlr r0
/* 805A069C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A06A0  4E 80 00 20 */	blr 
