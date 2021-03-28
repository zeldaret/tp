lbl_806C0224:
/* 806C0224  94 21 FE 40 */	stwu r1, -0x1c0(r1)
/* 806C0228  7C 08 02 A6 */	mflr r0
/* 806C022C  90 01 01 C4 */	stw r0, 0x1c4(r1)
/* 806C0230  DB E1 01 B0 */	stfd f31, 0x1b0(r1)
/* 806C0234  F3 E1 01 B8 */	psq_st f31, 440(r1), 0, 0 /* qr0 */
/* 806C0238  DB C1 01 A0 */	stfd f30, 0x1a0(r1)
/* 806C023C  F3 C1 01 A8 */	psq_st f30, 424(r1), 0, 0 /* qr0 */
/* 806C0240  DB A1 01 90 */	stfd f29, 0x190(r1)
/* 806C0244  F3 A1 01 98 */	psq_st f29, 408(r1), 0, 0 /* qr0 */
/* 806C0248  DB 81 01 80 */	stfd f28, 0x180(r1)
/* 806C024C  F3 81 01 88 */	psq_st f28, 392(r1), 0, 0 /* qr0 */
/* 806C0250  39 61 01 80 */	addi r11, r1, 0x180
/* 806C0254  4B CA 1F 70 */	b _savegpr_23
/* 806C0258  7C 7D 1B 78 */	mr r29, r3
/* 806C025C  3C 60 80 6C */	lis r3, lit_3803@ha
/* 806C0260  3B E3 19 38 */	addi r31, r3, lit_3803@l
/* 806C0264  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0268  28 00 00 01 */	cmplwi r0, 1
/* 806C026C  40 82 00 24 */	bne lbl_806C0290
/* 806C0270  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 806C0274  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806C0278  41 82 00 18 */	beq lbl_806C0290
/* 806C027C  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806C0280  54 00 04 A0 */	rlwinm r0, r0, 0, 0x12, 0x10
/* 806C0284  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 806C0288  38 00 00 00 */	li r0, 0
/* 806C028C  98 1D 07 14 */	stb r0, 0x714(r29)
lbl_806C0290:
/* 806C0290  7F A3 EB 78 */	mr r3, r29
/* 806C0294  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C0298  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806C029C  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 806C02A0  4B 95 CB 5C */	b fopAcM_otherBgCheck__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 806C02A4  2C 03 00 00 */	cmpwi r3, 0
/* 806C02A8  40 82 00 14 */	bne lbl_806C02BC
/* 806C02AC  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 806C02B0  60 00 00 04 */	ori r0, r0, 4
/* 806C02B4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 806C02B8  48 00 00 1C */	b lbl_806C02D4
lbl_806C02BC:
/* 806C02BC  80 1D 04 9C */	lwz r0, 0x49c(r29)
/* 806C02C0  54 00 00 3E */	slwi r0, r0, 0
/* 806C02C4  90 1D 04 9C */	stw r0, 0x49c(r29)
/* 806C02C8  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 806C02CC  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806C02D0  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_806C02D4:
/* 806C02D4  3B 00 00 00 */	li r24, 0
/* 806C02D8  7F A3 EB 78 */	mr r3, r29
/* 806C02DC  4B FF EA 59 */	bl damage_check__8daE_FZ_cFv
/* 806C02E0  80 1D 06 F4 */	lwz r0, 0x6f4(r29)
/* 806C02E4  2C 00 00 02 */	cmpwi r0, 2
/* 806C02E8  41 82 00 40 */	beq lbl_806C0328
/* 806C02EC  40 80 00 14 */	bge lbl_806C0300
/* 806C02F0  2C 00 00 00 */	cmpwi r0, 0
/* 806C02F4  41 82 00 1C */	beq lbl_806C0310
/* 806C02F8  40 80 00 24 */	bge lbl_806C031C
/* 806C02FC  48 00 00 54 */	b lbl_806C0350
lbl_806C0300:
/* 806C0300  2C 00 00 04 */	cmpwi r0, 4
/* 806C0304  41 82 00 40 */	beq lbl_806C0344
/* 806C0308  40 80 00 48 */	bge lbl_806C0350
/* 806C030C  48 00 00 2C */	b lbl_806C0338
lbl_806C0310:
/* 806C0310  7F A3 EB 78 */	mr r3, r29
/* 806C0314  4B FF F2 79 */	bl executeWait__8daE_FZ_cFv
/* 806C0318  48 00 00 38 */	b lbl_806C0350
lbl_806C031C:
/* 806C031C  7F A3 EB 78 */	mr r3, r29
/* 806C0320  4B FF F5 C9 */	bl executeMove__8daE_FZ_cFv
/* 806C0324  48 00 00 2C */	b lbl_806C0350
lbl_806C0328:
/* 806C0328  7F A3 EB 78 */	mr r3, r29
/* 806C032C  4B FF F7 39 */	bl executeAttack__8daE_FZ_cFv
/* 806C0330  3B 00 00 01 */	li r24, 1
/* 806C0334  48 00 00 1C */	b lbl_806C0350
lbl_806C0338:
/* 806C0338  7F A3 EB 78 */	mr r3, r29
/* 806C033C  4B FF F8 25 */	bl executeDamage__8daE_FZ_cFv
/* 806C0340  48 00 00 10 */	b lbl_806C0350
lbl_806C0344:
/* 806C0344  7F A3 EB 78 */	mr r3, r29
/* 806C0348  4B FF FC 4D */	bl executeRollMove__8daE_FZ_cFv
/* 806C034C  3B 00 00 01 */	li r24, 1
lbl_806C0350:
/* 806C0350  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806C0354  30 18 FF FF */	addic r0, r24, -1
/* 806C0358  7C 00 C1 10 */	subfe r0, r0, r24
/* 806C035C  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 806C0360  4B C0 18 1C */	b setLinkSearch__15Z2CreatureEnemyFb
/* 806C0364  7F A3 EB 78 */	mr r3, r29
/* 806C0368  38 9D 09 44 */	addi r4, r29, 0x944
/* 806C036C  4B 95 A3 60 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806C0370  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0374  28 00 00 03 */	cmplwi r0, 3
/* 806C0378  40 82 00 18 */	bne lbl_806C0390
/* 806C037C  38 7D 07 2C */	addi r3, r29, 0x72c
/* 806C0380  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806C0384  C0 5F 00 60 */	lfs f2, 0x60(r31)
/* 806C0388  4B 9B 5B D0 */	b SetWall__12dBgS_AcchCirFff
/* 806C038C  48 00 00 14 */	b lbl_806C03A0
lbl_806C0390:
/* 806C0390  38 7D 07 2C */	addi r3, r29, 0x72c
/* 806C0394  C0 3F 00 98 */	lfs f1, 0x98(r31)
/* 806C0398  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 806C039C  4B 9B 5B BC */	b SetWall__12dBgS_AcchCirFff
lbl_806C03A0:
/* 806C03A0  38 7D 07 6C */	addi r3, r29, 0x76c
/* 806C03A4  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806C03A8  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806C03AC  3B C4 0F 38 */	addi r30, r4, 0xf38
/* 806C03B0  7F C4 F3 78 */	mr r4, r30
/* 806C03B4  4B 9B 66 F8 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 806C03B8  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806C03BC  2C 00 00 01 */	cmpwi r0, 1
/* 806C03C0  40 81 02 E4 */	ble lbl_806C06A4
/* 806C03C4  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 806C03C8  4B CA 1C E4 */	b __cvt_fp2unsigned
/* 806C03CC  7C 65 1B 78 */	mr r5, r3
/* 806C03D0  28 05 00 01 */	cmplwi r5, 1
/* 806C03D4  40 80 00 08 */	bge lbl_806C03DC
/* 806C03D8  38 A0 00 01 */	li r5, 1
lbl_806C03DC:
/* 806C03DC  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070323@ha */
/* 806C03E0  38 03 03 23 */	addi r0, r3, 0x0323 /* 0x00070323@l */
/* 806C03E4  90 01 00 08 */	stw r0, 8(r1)
/* 806C03E8  38 7D 05 C0 */	addi r3, r29, 0x5c0
/* 806C03EC  38 81 00 08 */	addi r4, r1, 8
/* 806C03F0  38 C0 FF FF */	li r6, -1
/* 806C03F4  81 9D 05 C0 */	lwz r12, 0x5c0(r29)
/* 806C03F8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 806C03FC  7D 89 03 A6 */	mtctr r12
/* 806C0400  4E 80 04 21 */	bctrl 
/* 806C0404  3A E0 00 00 */	li r23, 0
/* 806C0408  3B 80 00 00 */	li r28, 0
/* 806C040C  3B 60 00 00 */	li r27, 0
/* 806C0410  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806C0414  3B 43 07 68 */	addi r26, r3, calc_mtx@l
/* 806C0418  C3 9F 00 04 */	lfs f28, 4(r31)
/* 806C041C  C3 BF 00 00 */	lfs f29, 0(r31)
/* 806C0420  C3 DF 00 60 */	lfs f30, 0x60(r31)
/* 806C0424  C3 FF 00 50 */	lfs f31, 0x50(r31)
lbl_806C0428:
/* 806C0428  80 7A 00 00 */	lwz r3, 0(r26)
/* 806C042C  A8 1D 04 DE */	lha r0, 0x4de(r29)
/* 806C0430  54 00 00 22 */	rlwinm r0, r0, 0, 0, 0x11
/* 806C0434  7C 00 DA 14 */	add r0, r0, r27
/* 806C0438  7C 04 07 34 */	extsh r4, r0
/* 806C043C  4B 94 BF A0 */	b mDoMtx_YrotS__FPA4_fs
/* 806C0440  D3 81 00 18 */	stfs f28, 0x18(r1)
/* 806C0444  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 806C0448  D3 C1 00 20 */	stfs f30, 0x20(r1)
/* 806C044C  38 61 00 18 */	addi r3, r1, 0x18
/* 806C0450  7F 1D E2 14 */	add r24, r29, r28
/* 806C0454  3B 38 06 7C */	addi r25, r24, 0x67c
/* 806C0458  7F 24 CB 78 */	mr r4, r25
/* 806C045C  4B BB 0A 90 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C0460  7F 23 CB 78 */	mr r3, r25
/* 806C0464  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806C0468  7F 25 CB 78 */	mr r5, r25
/* 806C046C  4B C8 6C 24 */	b PSVECAdd
/* 806C0470  D3 81 00 18 */	stfs f28, 0x18(r1)
/* 806C0474  D3 A1 00 1C */	stfs f29, 0x1c(r1)
/* 806C0478  D3 E1 00 20 */	stfs f31, 0x20(r1)
/* 806C047C  38 61 00 18 */	addi r3, r1, 0x18
/* 806C0480  3B 18 06 AC */	addi r24, r24, 0x6ac
/* 806C0484  7F 04 C3 78 */	mr r4, r24
/* 806C0488  4B BB 0A 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 806C048C  7F 03 C3 78 */	mr r3, r24
/* 806C0490  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806C0494  7F 05 C3 78 */	mr r5, r24
/* 806C0498  4B C8 6B F8 */	b PSVECAdd
/* 806C049C  3A F7 00 01 */	addi r23, r23, 1
/* 806C04A0  2C 17 00 04 */	cmpwi r23, 4
/* 806C04A4  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806C04A8  3B 7B 40 00 */	addi r27, r27, 0x4000
/* 806C04AC  41 80 FF 7C */	blt lbl_806C0428
/* 806C04B0  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806C04B4  2C 00 00 01 */	cmpwi r0, 1
/* 806C04B8  40 81 00 D8 */	ble lbl_806C0590
/* 806C04BC  80 1D 07 3C */	lwz r0, 0x73c(r29)
/* 806C04C0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 806C04C4  41 82 00 CC */	beq lbl_806C0590
/* 806C04C8  7F C3 F3 78 */	mr r3, r30
/* 806C04CC  A0 9D 07 2E */	lhz r4, 0x72e(r29)
/* 806C04D0  4B 9B 41 48 */	b GetActorPointer__4cBgSCFi
/* 806C04D4  A8 03 00 08 */	lha r0, 8(r3)
/* 806C04D8  2C 00 02 DC */	cmpwi r0, 0x2dc
/* 806C04DC  41 82 00 B4 */	beq lbl_806C0590
/* 806C04E0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806C04E4  4B 9B 77 84 */	b __ct__11dBgS_LinChkFv
/* 806C04E8  38 61 00 78 */	addi r3, r1, 0x78
/* 806C04EC  4B 9B 77 7C */	b __ct__11dBgS_LinChkFv
/* 806C04F0  3B 00 00 00 */	li r24, 0
/* 806C04F4  3B 80 00 00 */	li r28, 0
lbl_806C04F8:
/* 806C04F8  7C BD E2 14 */	add r5, r29, r28
/* 806C04FC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806C0500  38 85 06 7C */	addi r4, r5, 0x67c
/* 806C0504  38 A5 06 AC */	addi r5, r5, 0x6ac
/* 806C0508  7F A6 EB 78 */	mr r6, r29
/* 806C050C  4B 9B 78 58 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806C0510  38 18 00 02 */	addi r0, r24, 2
/* 806C0514  1C 00 00 0C */	mulli r0, r0, 0xc
/* 806C0518  7C BD 02 14 */	add r5, r29, r0
/* 806C051C  38 61 00 78 */	addi r3, r1, 0x78
/* 806C0520  38 85 06 7C */	addi r4, r5, 0x67c
/* 806C0524  38 A5 06 AC */	addi r5, r5, 0x6ac
/* 806C0528  7F A6 EB 78 */	mr r6, r29
/* 806C052C  4B 9B 78 38 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 806C0530  7F C3 F3 78 */	mr r3, r30
/* 806C0534  38 81 00 E8 */	addi r4, r1, 0xe8
/* 806C0538  4B 9B 3E 7C */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806C053C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C0540  41 82 00 28 */	beq lbl_806C0568
/* 806C0544  7F C3 F3 78 */	mr r3, r30
/* 806C0548  38 81 00 78 */	addi r4, r1, 0x78
/* 806C054C  4B 9B 3E 68 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 806C0550  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 806C0554  41 82 00 14 */	beq lbl_806C0568
/* 806C0558  7F A3 EB 78 */	mr r3, r29
/* 806C055C  38 80 00 00 */	li r4, 0
/* 806C0560  4B FF E6 A9 */	bl deadnextSet__8daE_FZ_cFb
/* 806C0564  48 00 00 14 */	b lbl_806C0578
lbl_806C0568:
/* 806C0568  3B 18 00 01 */	addi r24, r24, 1
/* 806C056C  2C 18 00 02 */	cmpwi r24, 2
/* 806C0570  3B 9C 00 0C */	addi r28, r28, 0xc
/* 806C0574  41 80 FF 84 */	blt lbl_806C04F8
lbl_806C0578:
/* 806C0578  38 61 00 78 */	addi r3, r1, 0x78
/* 806C057C  38 80 FF FF */	li r4, -1
/* 806C0580  4B 9B 77 5C */	b __dt__11dBgS_LinChkFv
/* 806C0584  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806C0588  38 80 FF FF */	li r4, -1
/* 806C058C  4B 9B 77 50 */	b __dt__11dBgS_LinChkFv
lbl_806C0590:
/* 806C0590  88 1D 07 14 */	lbz r0, 0x714(r29)
/* 806C0594  28 00 00 03 */	cmplwi r0, 3
/* 806C0598  41 82 01 0C */	beq lbl_806C06A4
/* 806C059C  A8 1D 05 62 */	lha r0, 0x562(r29)
/* 806C05A0  2C 00 00 01 */	cmpwi r0, 1
/* 806C05A4  40 81 00 F8 */	ble lbl_806C069C
/* 806C05A8  80 1D 07 98 */	lwz r0, 0x798(r29)
/* 806C05AC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806C05B0  40 82 00 EC */	bne lbl_806C069C
/* 806C05B4  38 61 00 24 */	addi r3, r1, 0x24
/* 806C05B8  4B 9B 6F C4 */	b __ct__11dBgS_GndChkFv
/* 806C05BC  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 806C05C0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806C05C4  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806C05C8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806C05CC  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 806C05D0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806C05D4  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 806C05D8  EC 01 00 2A */	fadds f0, f1, f0
/* 806C05DC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806C05E0  38 61 00 24 */	addi r3, r1, 0x24
/* 806C05E4  38 81 00 0C */	addi r4, r1, 0xc
/* 806C05E8  4B BA 77 40 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 806C05EC  7F C3 F3 78 */	mr r3, r30
/* 806C05F0  38 81 00 24 */	addi r4, r1, 0x24
/* 806C05F4  4B 9B 3E AC */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 806C05F8  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 806C05FC  C0 5F 00 64 */	lfs f2, 0x64(r31)
/* 806C0600  FC 00 08 18 */	frsp f0, f1
/* 806C0604  FC 02 00 00 */	fcmpu cr0, f2, f0
/* 806C0608  41 82 00 3C */	beq lbl_806C0644
/* 806C060C  38 00 00 00 */	li r0, 0
/* 806C0610  98 1D 07 10 */	stb r0, 0x710(r29)
/* 806C0614  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806C0618  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 806C061C  EC 21 00 28 */	fsubs f1, f1, f0
/* 806C0620  C0 1F 00 8C */	lfs f0, 0x8c(r31)
/* 806C0624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806C0628  40 81 00 34 */	ble lbl_806C065C
/* 806C062C  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 806C0630  28 00 00 00 */	cmplwi r0, 0
/* 806C0634  40 82 00 28 */	bne lbl_806C065C
/* 806C0638  38 00 00 01 */	li r0, 1
/* 806C063C  98 1D 07 13 */	stb r0, 0x713(r29)
/* 806C0640  48 00 00 1C */	b lbl_806C065C
lbl_806C0644:
/* 806C0644  38 00 00 FA */	li r0, 0xfa
/* 806C0648  98 1D 07 10 */	stb r0, 0x710(r29)
/* 806C064C  7F A3 EB 78 */	mr r3, r29
/* 806C0650  38 80 00 03 */	li r4, 3
/* 806C0654  38 A0 00 06 */	li r5, 6
/* 806C0658  4B FF E4 A1 */	bl setActionMode__8daE_FZ_cFii
lbl_806C065C:
/* 806C065C  88 7D 07 13 */	lbz r3, 0x713(r29)
/* 806C0660  28 03 00 00 */	cmplwi r3, 0
/* 806C0664  41 82 00 28 */	beq lbl_806C068C
/* 806C0668  38 03 00 01 */	addi r0, r3, 1
/* 806C066C  98 1D 07 13 */	stb r0, 0x713(r29)
/* 806C0670  88 1D 07 13 */	lbz r0, 0x713(r29)
/* 806C0674  28 00 00 0A */	cmplwi r0, 0xa
/* 806C0678  40 81 00 14 */	ble lbl_806C068C
/* 806C067C  7F A3 EB 78 */	mr r3, r29
/* 806C0680  38 80 00 03 */	li r4, 3
/* 806C0684  38 A0 00 06 */	li r5, 6
/* 806C0688  4B FF E4 71 */	bl setActionMode__8daE_FZ_cFii
lbl_806C068C:
/* 806C068C  38 61 00 24 */	addi r3, r1, 0x24
/* 806C0690  38 80 FF FF */	li r4, -1
/* 806C0694  4B 9B 6F 5C */	b __dt__11dBgS_GndChkFv
/* 806C0698  48 00 00 0C */	b lbl_806C06A4
lbl_806C069C:
/* 806C069C  38 00 00 00 */	li r0, 0
/* 806C06A0  98 1D 07 13 */	stb r0, 0x713(r29)
lbl_806C06A4:
/* 806C06A4  E3 E1 01 B8 */	psq_l f31, 440(r1), 0, 0 /* qr0 */
/* 806C06A8  CB E1 01 B0 */	lfd f31, 0x1b0(r1)
/* 806C06AC  E3 C1 01 A8 */	psq_l f30, 424(r1), 0, 0 /* qr0 */
/* 806C06B0  CB C1 01 A0 */	lfd f30, 0x1a0(r1)
/* 806C06B4  E3 A1 01 98 */	psq_l f29, 408(r1), 0, 0 /* qr0 */
/* 806C06B8  CB A1 01 90 */	lfd f29, 0x190(r1)
/* 806C06BC  E3 81 01 88 */	psq_l f28, 392(r1), 0, 0 /* qr0 */
/* 806C06C0  CB 81 01 80 */	lfd f28, 0x180(r1)
/* 806C06C4  39 61 01 80 */	addi r11, r1, 0x180
/* 806C06C8  4B CA 1B 48 */	b _restgpr_23
/* 806C06CC  80 01 01 C4 */	lwz r0, 0x1c4(r1)
/* 806C06D0  7C 08 03 A6 */	mtlr r0
/* 806C06D4  38 21 01 C0 */	addi r1, r1, 0x1c0
/* 806C06D8  4E 80 00 20 */	blr 
