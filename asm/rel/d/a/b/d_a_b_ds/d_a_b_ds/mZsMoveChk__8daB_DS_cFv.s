lbl_805CC1C4:
/* 805CC1C4  94 21 FF 10 */	stwu r1, -0xf0(r1)
/* 805CC1C8  7C 08 02 A6 */	mflr r0
/* 805CC1CC  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 805CC1D0  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805CC1D4  4B D9 5F EC */	b _savegpr_22
/* 805CC1D8  7C 79 1B 78 */	mr r25, r3
/* 805CC1DC  3C 60 80 5E */	lis r3, lit_3932@ha
/* 805CC1E0  3B A3 CA 54 */	addi r29, r3, lit_3932@l
/* 805CC1E4  3B 40 00 00 */	li r26, 0
/* 805CC1E8  3B 00 00 00 */	li r24, 0
/* 805CC1EC  3A C0 00 00 */	li r22, 0
/* 805CC1F0  3B 60 00 00 */	li r27, 0
/* 805CC1F4  7F 7C DB 78 */	mr r28, r27
/* 805CC1F8  3B E1 00 24 */	addi r31, r1, 0x24
/* 805CC1FC  7F 77 DB 78 */	mr r23, r27
lbl_805CC200:
/* 805CC200  7F 9F C1 2E */	stwx r28, r31, r24
/* 805CC204  3B DB 2D 3C */	addi r30, r27, 0x2d3c
/* 805CC208  7C 79 F0 2E */	lwzx r3, r25, r30
/* 805CC20C  28 03 00 00 */	cmplwi r3, 0
/* 805CC210  41 82 00 28 */	beq lbl_805CC238
/* 805CC214  38 81 00 08 */	addi r4, r1, 8
/* 805CC218  4B A4 D7 A4 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CC21C  2C 03 00 00 */	cmpwi r3, 0
/* 805CC220  40 82 00 0C */	bne lbl_805CC22C
/* 805CC224  7E F9 F1 2E */	stwx r23, r25, r30
/* 805CC228  48 00 00 10 */	b lbl_805CC238
lbl_805CC22C:
/* 805CC22C  7E DF C1 2E */	stwx r22, r31, r24
/* 805CC230  3B 5A 00 01 */	addi r26, r26, 1
/* 805CC234  3B 18 00 04 */	addi r24, r24, 4
lbl_805CC238:
/* 805CC238  3A D6 00 01 */	addi r22, r22, 1
/* 805CC23C  2C 16 00 0F */	cmpwi r22, 0xf
/* 805CC240  3B 7B 00 04 */	addi r27, r27, 4
/* 805CC244  41 80 FF BC */	blt lbl_805CC200
/* 805CC248  2C 1A 00 00 */	cmpwi r26, 0
/* 805CC24C  41 82 01 F0 */	beq lbl_805CC43C
/* 805CC250  38 61 00 60 */	addi r3, r1, 0x60
/* 805CC254  4B AA B3 28 */	b __ct__11dBgS_GndChkFv
/* 805CC258  7F 23 CB 78 */	mr r3, r25
/* 805CC25C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 805CC260  3B C4 61 C0 */	addi r30, r4, g_dComIfG_gameInfo@l
/* 805CC264  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805CC268  4B A4 E4 A8 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC26C  7C 64 1B 78 */	mr r4, r3
/* 805CC270  3B 60 00 00 */	li r27, 0
/* 805CC274  3B 00 00 00 */	li r24, 0
/* 805CC278  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 805CC27C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 805CC280  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 805CC284  3B E1 00 24 */	addi r31, r1, 0x24
/* 805CC288  48 00 01 38 */	b lbl_805CC3C0
lbl_805CC28C:
/* 805CC28C  7E FF C0 2E */	lwzx r23, r31, r24
/* 805CC290  2C 17 00 00 */	cmpwi r23, 0
/* 805CC294  41 82 01 24 */	beq lbl_805CC3B8
/* 805CC298  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805CC29C  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805CC2A0  80 63 00 00 */	lwz r3, 0(r3)
/* 805CC2A4  4B A4 01 38 */	b mDoMtx_YrotS__FPA4_fs
/* 805CC2A8  C0 1D 00 04 */	lfs f0, 4(r29)
/* 805CC2AC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 805CC2B0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 805CC2B4  C0 1D 00 6C */	lfs f0, 0x6c(r29)
/* 805CC2B8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805CC2BC  C0 3D 00 70 */	lfs f1, 0x70(r29)
/* 805CC2C0  4B C9 B6 94 */	b cM_rndF__Ff
/* 805CC2C4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 805CC2C8  EC 00 08 2A */	fadds f0, f0, f1
/* 805CC2CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805CC2D0  38 61 00 18 */	addi r3, r1, 0x18
/* 805CC2D4  38 81 00 0C */	addi r4, r1, 0xc
/* 805CC2D8  4B CA 4C 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 805CC2DC  38 61 00 0C */	addi r3, r1, 0xc
/* 805CC2E0  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 805CC2E4  7C 65 1B 78 */	mr r5, r3
/* 805CC2E8  4B D7 AD A8 */	b PSVECAdd
/* 805CC2EC  C0 21 00 10 */	lfs f1, 0x10(r1)
/* 805CC2F0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 805CC2F4  EC 01 00 2A */	fadds f0, f1, f0
/* 805CC2F8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805CC2FC  38 61 00 60 */	addi r3, r1, 0x60
/* 805CC300  38 81 00 0C */	addi r4, r1, 0xc
/* 805CC304  4B C9 BA 24 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 805CC308  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 805CC30C  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CC310  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805CC314  41 82 00 18 */	beq lbl_805CC32C
/* 805CC318  7F 83 E3 78 */	mr r3, r28
/* 805CC31C  38 81 00 60 */	addi r4, r1, 0x60
/* 805CC320  4B AA 81 80 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 805CC324  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 805CC328  48 00 00 18 */	b lbl_805CC340
lbl_805CC32C:
/* 805CC32C  C0 39 04 D4 */	lfs f1, 0x4d4(r25)
/* 805CC330  C0 1D 00 60 */	lfs f0, 0x60(r29)
/* 805CC334  EC 01 00 2A */	fadds f0, f1, f0
/* 805CC338  D0 19 04 D4 */	stfs f0, 0x4d4(r25)
/* 805CC33C  D0 01 00 10 */	stfs f0, 0x10(r1)
lbl_805CC340:
/* 805CC340  56 E3 10 3A */	slwi r3, r23, 2
/* 805CC344  38 03 2D 3C */	addi r0, r3, 0x2d3c
/* 805CC348  7C 79 00 2E */	lwzx r3, r25, r0
/* 805CC34C  28 03 00 00 */	cmplwi r3, 0
/* 805CC350  41 82 00 40 */	beq lbl_805CC390
/* 805CC354  38 81 00 08 */	addi r4, r1, 8
/* 805CC358  4B A4 D6 64 */	b fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 805CC35C  2C 03 00 00 */	cmpwi r3, 0
/* 805CC360  41 82 00 30 */	beq lbl_805CC390
/* 805CC364  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC368  28 03 00 00 */	cmplwi r3, 0
/* 805CC36C  41 82 00 24 */	beq lbl_805CC390
/* 805CC370  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805CC374  D0 03 04 A8 */	stfs f0, 0x4a8(r3)
/* 805CC378  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805CC37C  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC380  D0 03 04 AC */	stfs f0, 0x4ac(r3)
/* 805CC384  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805CC388  80 61 00 08 */	lwz r3, 8(r1)
/* 805CC38C  D0 03 04 B0 */	stfs f0, 0x4b0(r3)
lbl_805CC390:
/* 805CC390  7F 23 CB 78 */	mr r3, r25
/* 805CC394  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805CC398  4B A4 E3 78 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC39C  7C 77 1B 78 */	mr r23, r3
/* 805CC3A0  C0 3D 00 74 */	lfs f1, 0x74(r29)
/* 805CC3A4  4B C9 B5 E8 */	b cM_rndFX__Ff
/* 805CC3A8  FC 00 08 1E */	fctiwz f0, f1
/* 805CC3AC  D8 01 00 B8 */	stfd f0, 0xb8(r1)
/* 805CC3B0  80 01 00 BC */	lwz r0, 0xbc(r1)
/* 805CC3B4  7C 97 02 14 */	add r4, r23, r0
lbl_805CC3B8:
/* 805CC3B8  3B 7B 00 01 */	addi r27, r27, 1
/* 805CC3BC  3B 18 00 04 */	addi r24, r24, 4
lbl_805CC3C0:
/* 805CC3C0  7C 1B D0 00 */	cmpw r27, r26
/* 805CC3C4  41 80 FE C8 */	blt lbl_805CC28C
/* 805CC3C8  80 7E 5D AC */	lwz r3, 0x5dac(r30)
/* 805CC3CC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 805CC3D0  81 8C 01 98 */	lwz r12, 0x198(r12)
/* 805CC3D4  7D 89 03 A6 */	mtctr r12
/* 805CC3D8  4E 80 04 21 */	bctrl 
/* 805CC3DC  28 03 00 00 */	cmplwi r3, 0
/* 805CC3E0  41 82 00 30 */	beq lbl_805CC410
/* 805CC3E4  80 19 06 80 */	lwz r0, 0x680(r25)
/* 805CC3E8  2C 00 00 03 */	cmpwi r0, 3
/* 805CC3EC  41 82 00 24 */	beq lbl_805CC410
/* 805CC3F0  7F 23 CB 78 */	mr r3, r25
/* 805CC3F4  80 9E 5D AC */	lwz r4, 0x5dac(r30)
/* 805CC3F8  4B A4 E3 E8 */	b fopAcM_searchActorDistance__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 805CC3FC  3C 60 80 5E */	lis r3, l_HIO@ha
/* 805CC400  38 63 DA BC */	addi r3, r3, l_HIO@l
/* 805CC404  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 805CC408  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805CC40C  40 81 00 1C */	ble lbl_805CC428
lbl_805CC410:
/* 805CC410  38 00 00 00 */	li r0, 0
/* 805CC414  98 19 08 54 */	stb r0, 0x854(r25)
/* 805CC418  38 61 00 60 */	addi r3, r1, 0x60
/* 805CC41C  38 80 FF FF */	li r4, -1
/* 805CC420  4B AA B1 D0 */	b __dt__11dBgS_GndChkFv
/* 805CC424  48 00 00 18 */	b lbl_805CC43C
lbl_805CC428:
/* 805CC428  38 00 00 01 */	li r0, 1
/* 805CC42C  98 19 08 54 */	stb r0, 0x854(r25)
/* 805CC430  38 61 00 60 */	addi r3, r1, 0x60
/* 805CC434  38 80 FF FF */	li r4, -1
/* 805CC438  4B AA B1 B8 */	b __dt__11dBgS_GndChkFv
lbl_805CC43C:
/* 805CC43C  39 61 00 F0 */	addi r11, r1, 0xf0
/* 805CC440  4B D9 5D CC */	b _restgpr_22
/* 805CC444  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 805CC448  7C 08 03 A6 */	mtlr r0
/* 805CC44C  38 21 00 F0 */	addi r1, r1, 0xf0
/* 805CC450  4E 80 00 20 */	blr 
