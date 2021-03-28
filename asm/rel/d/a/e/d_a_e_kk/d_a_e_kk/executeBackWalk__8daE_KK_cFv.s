lbl_806FC370:
/* 806FC370  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 806FC374  7C 08 02 A6 */	mflr r0
/* 806FC378  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 806FC37C  93 E1 00 BC */	stw r31, 0xbc(r1)
/* 806FC380  93 C1 00 B8 */	stw r30, 0xb8(r1)
/* 806FC384  7C 7E 1B 78 */	mr r30, r3
/* 806FC388  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FC38C  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FC390  38 61 00 34 */	addi r3, r1, 0x34
/* 806FC394  4B 97 B8 D4 */	b __ct__11dBgS_LinChkFv
/* 806FC398  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806FC39C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806FC3A0  80 63 00 00 */	lwz r3, 0(r3)
/* 806FC3A4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 806FC3A8  4B 91 00 34 */	b mDoMtx_YrotS__FPA4_fs
/* 806FC3AC  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FC3B0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FC3B4  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FC3B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FC3BC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 806FC3C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806FC3C4  38 61 00 28 */	addi r3, r1, 0x28
/* 806FC3C8  38 81 00 1C */	addi r4, r1, 0x1c
/* 806FC3CC  4B B7 4B 20 */	b MtxPosition__FP4cXyzP4cXyz
/* 806FC3D0  38 61 00 10 */	addi r3, r1, 0x10
/* 806FC3D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 806FC3D8  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 806FC3DC  4B B6 A7 08 */	b __pl__4cXyzCFRC3Vec
/* 806FC3E0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806FC3E4  D0 1E 06 A4 */	stfs f0, 0x6a4(r30)
/* 806FC3E8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 806FC3EC  D0 1E 06 A8 */	stfs f0, 0x6a8(r30)
/* 806FC3F0  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 806FC3F4  D0 1E 06 AC */	stfs f0, 0x6ac(r30)
/* 806FC3F8  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 806FC3FC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806FC400  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 806FC404  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 806FC408  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 806FC40C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 806FC410  C0 1F 00 00 */	lfs f0, 0(r31)
/* 806FC414  EC 01 00 2A */	fadds f0, f1, f0
/* 806FC418  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 806FC41C  38 61 00 34 */	addi r3, r1, 0x34
/* 806FC420  38 81 00 28 */	addi r4, r1, 0x28
/* 806FC424  38 BE 06 A4 */	addi r5, r30, 0x6a4
/* 806FC428  7F C6 F3 78 */	mr r6, r30
/* 806FC42C  4B 97 B9 38 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806FC430  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FC434  2C 00 00 02 */	cmpwi r0, 2
/* 806FC438  41 82 00 F0 */	beq lbl_806FC528
/* 806FC43C  40 80 00 14 */	bge lbl_806FC450
/* 806FC440  2C 00 00 00 */	cmpwi r0, 0
/* 806FC444  41 82 00 18 */	beq lbl_806FC45C
/* 806FC448  40 80 00 C0 */	bge lbl_806FC508
/* 806FC44C  48 00 02 60 */	b lbl_806FC6AC
lbl_806FC450:
/* 806FC450  2C 00 00 04 */	cmpwi r0, 4
/* 806FC454  40 80 02 58 */	bge lbl_806FC6AC
/* 806FC458  48 00 01 5C */	b lbl_806FC5B4
lbl_806FC45C:
/* 806FC45C  7F C3 F3 78 */	mr r3, r30
/* 806FC460  38 80 00 07 */	li r4, 7
/* 806FC464  38 A0 00 02 */	li r5, 2
/* 806FC468  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FC46C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FC470  4B FF E5 F9 */	bl setBck__8daE_KK_cFiUcff
/* 806FC474  88 1E 07 6C */	lbz r0, 0x76c(r30)
/* 806FC478  28 00 00 00 */	cmplwi r0, 0
/* 806FC47C  40 82 00 1C */	bne lbl_806FC498
/* 806FC480  3C 60 80 70 */	lis r3, l_HIO@ha
/* 806FC484  38 63 F8 90 */	addi r3, r3, l_HIO@l
/* 806FC488  A8 03 00 18 */	lha r0, 0x18(r3)
/* 806FC48C  B0 1E 06 70 */	sth r0, 0x670(r30)
/* 806FC490  38 00 00 01 */	li r0, 1
/* 806FC494  98 1E 07 6C */	stb r0, 0x76c(r30)
lbl_806FC498:
/* 806FC498  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC49C  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FC4A0  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC4A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FC4A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FC4AC  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FC4B0  38 81 00 34 */	addi r4, r1, 0x34
/* 806FC4B4  4B 97 7F 00 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806FC4B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FC4BC  40 82 00 10 */	bne lbl_806FC4CC
/* 806FC4C0  38 00 00 01 */	li r0, 1
/* 806FC4C4  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FC4C8  48 00 01 E4 */	b lbl_806FC6AC
lbl_806FC4CC:
/* 806FC4CC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 806FC4D0  4B B6 B4 84 */	b cM_rndF__Ff
/* 806FC4D4  C0 1F 00 6C */	lfs f0, 0x6c(r31)
/* 806FC4D8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806FC4DC  40 80 00 14 */	bge lbl_806FC4F0
/* 806FC4E0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806FC4E4  38 03 40 00 */	addi r0, r3, 0x4000
/* 806FC4E8  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806FC4EC  48 00 00 10 */	b lbl_806FC4FC
lbl_806FC4F0:
/* 806FC4F0  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 806FC4F4  38 03 C0 00 */	addi r0, r3, -16384
/* 806FC4F8  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806FC4FC:
/* 806FC4FC  38 00 00 02 */	li r0, 2
/* 806FC500  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FC504  48 00 01 A8 */	b lbl_806FC6AC
lbl_806FC508:
/* 806FC508  7F C3 F3 78 */	mr r3, r30
/* 806FC50C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FC510  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FC514  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FC518  4B 91 E1 F8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FC51C  3C 63 00 01 */	addis r3, r3, 1
/* 806FC520  38 03 80 00 */	addi r0, r3, -32768
/* 806FC524  B0 1E 04 DE */	sth r0, 0x4de(r30)
lbl_806FC528:
/* 806FC528  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 806FC52C  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FC530  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 806FC534  2C 00 00 00 */	cmpwi r0, 0
/* 806FC538  41 82 00 30 */	beq lbl_806FC568
/* 806FC53C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FC540  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FC544  38 63 0F 38 */	addi r3, r3, 0xf38
/* 806FC548  38 81 00 34 */	addi r4, r1, 0x34
/* 806FC54C  4B 97 7E 68 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806FC550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FC554  40 82 00 14 */	bne lbl_806FC568
/* 806FC558  7F C3 F3 78 */	mr r3, r30
/* 806FC55C  4B FF EF 99 */	bl way_gake_check__8daE_KK_cFv
/* 806FC560  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806FC564  41 82 01 48 */	beq lbl_806FC6AC
lbl_806FC568:
/* 806FC568  7F C3 F3 78 */	mr r3, r30
/* 806FC56C  38 80 00 13 */	li r4, 0x13
/* 806FC570  38 A0 00 00 */	li r5, 0
/* 806FC574  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC578  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FC57C  4B FF E4 ED */	bl setBck__8daE_KK_cFiUcff
/* 806FC580  7F C3 F3 78 */	mr r3, r30
/* 806FC584  38 80 00 1E */	li r4, 0x1e
/* 806FC588  38 A0 00 00 */	li r5, 0
/* 806FC58C  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC590  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FC594  4B FF E5 81 */	bl setWeaponBck__8daE_KK_cFiUcff
/* 806FC598  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 806FC59C  B0 1E 04 DE */	sth r0, 0x4de(r30)
/* 806FC5A0  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FC5A4  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FC5A8  38 00 00 03 */	li r0, 3
/* 806FC5AC  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FC5B0  48 00 00 FC */	b lbl_806FC6AC
lbl_806FC5B4:
/* 806FC5B4  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FC5B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC5BC  FC 00 00 1E */	fctiwz f0, f0
/* 806FC5C0  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FC5C4  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FC5C8  2C 00 00 22 */	cmpwi r0, 0x22
/* 806FC5CC  41 80 00 54 */	blt lbl_806FC620
/* 806FC5D0  88 1E 06 7D */	lbz r0, 0x67d(r30)
/* 806FC5D4  28 00 00 00 */	cmplwi r0, 0
/* 806FC5D8  41 82 00 30 */	beq lbl_806FC608
/* 806FC5DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070382@ha */
/* 806FC5E0  38 03 03 82 */	addi r0, r3, 0x0382 /* 0x00070382@l */
/* 806FC5E4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806FC5E8  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC5EC  38 81 00 0C */	addi r4, r1, 0xc
/* 806FC5F0  38 A0 00 00 */	li r5, 0
/* 806FC5F4  38 C0 FF FF */	li r6, -1
/* 806FC5F8  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC5FC  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC600  7D 89 03 A6 */	mtctr r12
/* 806FC604  4E 80 04 21 */	bctrl 
lbl_806FC608:
/* 806FC608  38 60 00 00 */	li r3, 0
/* 806FC60C  98 7E 06 7D */	stb r3, 0x67d(r30)
/* 806FC610  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC614  60 00 00 04 */	ori r0, r0, 4
/* 806FC618  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC61C  98 7E 07 6C */	stb r3, 0x76c(r30)
lbl_806FC620:
/* 806FC620  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC624  38 80 00 01 */	li r4, 1
/* 806FC628  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC62C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC630  40 82 00 18 */	bne lbl_806FC648
/* 806FC634  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC638  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC63C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC640  41 82 00 08 */	beq lbl_806FC648
/* 806FC644  38 80 00 00 */	li r4, 0
lbl_806FC648:
/* 806FC648  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC64C  41 82 00 60 */	beq lbl_806FC6AC
/* 806FC650  80 7E 05 B8 */	lwz r3, 0x5b8(r30)
/* 806FC654  38 80 00 01 */	li r4, 1
/* 806FC658  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FC65C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FC660  40 82 00 18 */	bne lbl_806FC678
/* 806FC664  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FC668  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FC66C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FC670  41 82 00 08 */	beq lbl_806FC678
/* 806FC674  38 80 00 00 */	li r4, 0
lbl_806FC678:
/* 806FC678  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FC67C  41 82 00 30 */	beq lbl_806FC6AC
/* 806FC680  38 00 00 00 */	li r0, 0
/* 806FC684  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 806FC688  98 1E 07 6C */	stb r0, 0x76c(r30)
/* 806FC68C  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FC690  60 00 00 04 */	ori r0, r0, 4
/* 806FC694  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FC698  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FC69C  38 03 00 01 */	addi r0, r3, 1
/* 806FC6A0  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FC6A4  7F C3 F3 78 */	mr r3, r30
/* 806FC6A8  4B FF EC 45 */	bl nextActionCheck__8daE_KK_cFv
lbl_806FC6AC:
/* 806FC6AC  7F C3 F3 78 */	mr r3, r30
/* 806FC6B0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806FC6B4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806FC6B8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806FC6BC  4B 91 E0 54 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806FC6C0  7C 64 1B 78 */	mr r4, r3
/* 806FC6C4  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 806FC6C8  38 A0 00 02 */	li r5, 2
/* 806FC6CC  38 C0 02 00 */	li r6, 0x200
/* 806FC6D0  4B B7 3F 38 */	b cLib_addCalcAngleS2__FPssss
/* 806FC6D4  80 1E 07 64 */	lwz r0, 0x764(r30)
/* 806FC6D8  2C 00 00 07 */	cmpwi r0, 7
/* 806FC6DC  40 82 00 5C */	bne lbl_806FC738
/* 806FC6E0  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FC6E4  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FC6E8  FC 00 00 1E */	fctiwz f0, f0
/* 806FC6EC  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FC6F0  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FC6F4  2C 00 00 09 */	cmpwi r0, 9
/* 806FC6F8  41 82 00 14 */	beq lbl_806FC70C
/* 806FC6FC  D8 01 00 A8 */	stfd f0, 0xa8(r1)
/* 806FC700  80 01 00 AC */	lwz r0, 0xac(r1)
/* 806FC704  2C 00 00 13 */	cmpwi r0, 0x13
/* 806FC708  40 82 00 30 */	bne lbl_806FC738
lbl_806FC70C:
/* 806FC70C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007037D@ha */
/* 806FC710  38 03 03 7D */	addi r0, r3, 0x037D /* 0x0007037D@l */
/* 806FC714  90 01 00 08 */	stw r0, 8(r1)
/* 806FC718  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FC71C  38 81 00 08 */	addi r4, r1, 8
/* 806FC720  38 A0 00 00 */	li r5, 0
/* 806FC724  38 C0 FF FF */	li r6, -1
/* 806FC728  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FC72C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FC730  7D 89 03 A6 */	mtctr r12
/* 806FC734  4E 80 04 21 */	bctrl 
lbl_806FC738:
/* 806FC738  38 61 00 34 */	addi r3, r1, 0x34
/* 806FC73C  38 80 FF FF */	li r4, -1
/* 806FC740  4B 97 B5 9C */	b __dt__11dBgS_LinChkFv
/* 806FC744  83 E1 00 BC */	lwz r31, 0xbc(r1)
/* 806FC748  83 C1 00 B8 */	lwz r30, 0xb8(r1)
/* 806FC74C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 806FC750  7C 08 03 A6 */	mtlr r0
/* 806FC754  38 21 00 C0 */	addi r1, r1, 0xc0
/* 806FC758  4E 80 00 20 */	blr 
