lbl_80784390:
/* 80784390  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80784394  7C 08 02 A6 */	mflr r0
/* 80784398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8078439C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 807843A0  7C 7F 1B 78 */	mr r31, r3
/* 807843A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 807843A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 807843AC  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 807843B0  38 03 04 D0 */	addi r0, r3, 0x4d0
/* 807843B4  3C 60 80 78 */	lis r3, data_80784FCC@ha
/* 807843B8  90 03 4F CC */	stw r0, data_80784FCC@l(r3)
/* 807843BC  80 7F 05 C8 */	lwz r3, 0x5c8(r31)
/* 807843C0  38 03 FF FF */	addi r0, r3, -1
/* 807843C4  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 807843C8  80 1F 05 C8 */	lwz r0, 0x5c8(r31)
/* 807843CC  2C 00 00 00 */	cmpwi r0, 0
/* 807843D0  40 80 00 0C */	bge lbl_807843DC
/* 807843D4  38 00 00 00 */	li r0, 0
/* 807843D8  90 1F 05 C8 */	stw r0, 0x5c8(r31)
lbl_807843DC:
/* 807843DC  7F E3 FB 78 */	mr r3, r31
/* 807843E0  4B FF FD 65 */	bl Yazirushi__8daE_SB_cFv
/* 807843E4  88 1F 05 E4 */	lbz r0, 0x5e4(r31)
/* 807843E8  28 00 00 01 */	cmplwi r0, 1
/* 807843EC  40 82 00 0C */	bne lbl_807843F8
/* 807843F0  7F E3 FB 78 */	mr r3, r31
/* 807843F4  4B FF FB C9 */	bl HashiraVib__8daE_SB_cFv
lbl_807843F8:
/* 807843F8  7F E3 FB 78 */	mr r3, r31
/* 807843FC  4B FF F2 7D */	bl Anm_Motion__8daE_SB_cFv
/* 80784400  7F E3 FB 78 */	mr r3, r31
/* 80784404  4B FF FD C9 */	bl setGroundAngle__8daE_SB_cFv
/* 80784408  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 8078440C  3C 60 80 78 */	lis r3, lit_3758@ha
/* 80784410  C0 03 4D D8 */	lfs f0, lit_3758@l(r3)
/* 80784414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80784418  40 81 00 14 */	ble lbl_8078442C
/* 8078441C  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 80784420  60 00 80 00 */	ori r0, r0, 0x8000
/* 80784424  90 1F 07 3C */	stw r0, 0x73c(r31)
/* 80784428  48 00 00 10 */	b lbl_80784438
lbl_8078442C:
/* 8078442C  80 1F 07 3C */	lwz r0, 0x73c(r31)
/* 80784430  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 80784434  90 1F 07 3C */	stw r0, 0x73c(r31)
lbl_80784438:
/* 80784438  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8078443C  7C 03 07 74 */	extsb r3, r0
/* 80784440  4B 8A 8C 2C */	b dComIfGp_getReverb__Fi
/* 80784444  7C 65 1B 78 */	mr r5, r3
/* 80784448  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 8078444C  38 80 00 00 */	li r4, 0
/* 80784450  4B 88 CC 60 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80784454  80 7F 06 0C */	lwz r3, 0x60c(r31)
/* 80784458  38 03 FF FF */	addi r0, r3, -1
/* 8078445C  90 1F 06 0C */	stw r0, 0x60c(r31)
/* 80784460  80 1F 06 0C */	lwz r0, 0x60c(r31)
/* 80784464  2C 00 00 00 */	cmpwi r0, 0
/* 80784468  40 80 00 0C */	bge lbl_80784474
/* 8078446C  38 00 00 00 */	li r0, 0
/* 80784470  90 1F 06 0C */	stw r0, 0x60c(r31)
lbl_80784474:
/* 80784474  7F E3 FB 78 */	mr r3, r31
/* 80784478  4B FF D3 D9 */	bl setCcCylinder__8daE_SB_cFv
/* 8078447C  7F E3 FB 78 */	mr r3, r31
/* 80784480  38 9F 08 E8 */	addi r4, r31, 0x8e8
/* 80784484  4B 89 62 48 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 80784488  38 7F 07 10 */	addi r3, r31, 0x710
/* 8078448C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80784490  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80784494  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80784498  4B 8F 26 14 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 8078449C  7F E3 FB 78 */	mr r3, r31
/* 807844A0  48 00 01 A1 */	bl setBaseMtx__8daE_SB_cFv
/* 807844A4  38 60 00 01 */	li r3, 1
/* 807844A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 807844AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807844B0  7C 08 03 A6 */	mtlr r0
/* 807844B4  38 21 00 10 */	addi r1, r1, 0x10
/* 807844B8  4E 80 00 20 */	blr 
