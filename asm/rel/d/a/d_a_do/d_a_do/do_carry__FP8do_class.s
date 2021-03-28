lbl_8066CAA8:
/* 8066CAA8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 8066CAAC  7C 08 02 A6 */	mflr r0
/* 8066CAB0  90 01 01 14 */	stw r0, 0x114(r1)
/* 8066CAB4  39 61 01 10 */	addi r11, r1, 0x110
/* 8066CAB8  4B CF 57 20 */	b _savegpr_28
/* 8066CABC  7C 7E 1B 78 */	mr r30, r3
/* 8066CAC0  3C 60 80 67 */	lis r3, lit_3662@ha
/* 8066CAC4  3B E3 ED E8 */	addi r31, r3, lit_3662@l
/* 8066CAC8  3B A0 00 00 */	li r29, 0
/* 8066CACC  38 00 00 05 */	li r0, 5
/* 8066CAD0  B0 1E 06 04 */	sth r0, 0x604(r30)
/* 8066CAD4  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066CAD8  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066CADC  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8066CAE0  A8 1E 05 F6 */	lha r0, 0x5f6(r30)
/* 8066CAE4  2C 00 00 01 */	cmpwi r0, 1
/* 8066CAE8  41 82 00 A8 */	beq lbl_8066CB90
/* 8066CAEC  40 80 01 7C */	bge lbl_8066CC68
/* 8066CAF0  2C 00 00 00 */	cmpwi r0, 0
/* 8066CAF4  40 80 00 08 */	bge lbl_8066CAFC
/* 8066CAF8  48 00 01 70 */	b lbl_8066CC68
lbl_8066CAFC:
/* 8066CAFC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066CB00  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8066CB04  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8066CB08  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066CB0C  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8066CB10  7D 89 03 A6 */	mtctr r12
/* 8066CB14  4E 80 04 21 */	bctrl 
/* 8066CB18  FC 40 08 90 */	fmr f2, f1
/* 8066CB1C  7F C3 F3 78 */	mr r3, r30
/* 8066CB20  38 80 00 14 */	li r4, 0x14
/* 8066CB24  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066CB28  38 A0 00 00 */	li r5, 0
/* 8066CB2C  4B FF B2 7D */	bl anm_init__FP8do_classifUcf
/* 8066CB30  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8066CB34  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066CB38  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8066CB3C  7D 89 03 A6 */	mtctr r12
/* 8066CB40  4E 80 04 21 */	bctrl 
/* 8066CB44  FC 00 08 1E */	fctiwz f0, f1
/* 8066CB48  D8 01 00 E8 */	stfd f0, 0xe8(r1)
/* 8066CB4C  80 01 00 EC */	lwz r0, 0xec(r1)
/* 8066CB50  7C 00 07 34 */	extsh r0, r0
/* 8066CB54  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 8066CB58  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8066CB5C  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 8066CB60  3C 00 43 30 */	lis r0, 0x4330
/* 8066CB64  90 01 00 F0 */	stw r0, 0xf0(r1)
/* 8066CB68  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 8066CB6C  EC 00 08 28 */	fsubs f0, f0, f1
/* 8066CB70  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066CB74  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8066CB78  38 00 00 14 */	li r0, 0x14
/* 8066CB7C  B0 1E 05 FC */	sth r0, 0x5fc(r30)
/* 8066CB80  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066CB84  38 03 00 01 */	addi r0, r3, 1
/* 8066CB88  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066CB8C  48 00 00 DC */	b lbl_8066CC68
lbl_8066CB90:
/* 8066CB90  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066CB94  38 63 00 0C */	addi r3, r3, 0xc
/* 8066CB98  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 8066CB9C  4B CB B8 90 */	b checkPass__12J3DFrameCtrlFf
/* 8066CBA0  2C 03 00 00 */	cmpwi r3, 0
/* 8066CBA4  41 82 00 30 */	beq lbl_8066CBD4
/* 8066CBA8  3C 60 00 05 */	lis r3, 0x0005 /* 0x0005000F@ha */
/* 8066CBAC  38 03 00 0F */	addi r0, r3, 0x000F /* 0x0005000F@l */
/* 8066CBB0  90 01 00 08 */	stw r0, 8(r1)
/* 8066CBB4  38 7E 0B E4 */	addi r3, r30, 0xbe4
/* 8066CBB8  38 81 00 08 */	addi r4, r1, 8
/* 8066CBBC  38 A0 00 00 */	li r5, 0
/* 8066CBC0  38 C0 FF FF */	li r6, -1
/* 8066CBC4  81 9E 0B F4 */	lwz r12, 0xbf4(r30)
/* 8066CBC8  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8066CBCC  7D 89 03 A6 */	mtctr r12
/* 8066CBD0  4E 80 04 21 */	bctrl 
lbl_8066CBD4:
/* 8066CBD4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066CBD8  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 8066CBDC  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8066CBE0  80 03 05 80 */	lwz r0, 0x580(r3)
/* 8066CBE4  54 00 02 53 */	rlwinm. r0, r0, 0, 9, 9
/* 8066CBE8  41 82 00 80 */	beq lbl_8066CC68
/* 8066CBEC  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066CBF0  81 8C 00 E0 */	lwz r12, 0xe0(r12)
/* 8066CBF4  7D 89 03 A6 */	mtctr r12
/* 8066CBF8  4E 80 04 21 */	bctrl 
/* 8066CBFC  FC 40 08 90 */	fmr f2, f1
/* 8066CC00  7F C3 F3 78 */	mr r3, r30
/* 8066CC04  38 80 00 14 */	li r4, 0x14
/* 8066CC08  C0 3F 00 00 */	lfs f1, 0(r31)
/* 8066CC0C  38 A0 00 00 */	li r5, 0
/* 8066CC10  4B FF B1 99 */	bl anm_init__FP8do_classifUcf
/* 8066CC14  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 8066CC18  81 83 06 28 */	lwz r12, 0x628(r3)
/* 8066CC1C  81 8C 00 E4 */	lwz r12, 0xe4(r12)
/* 8066CC20  7D 89 03 A6 */	mtctr r12
/* 8066CC24  4E 80 04 21 */	bctrl 
/* 8066CC28  FC 00 08 1E */	fctiwz f0, f1
/* 8066CC2C  D8 01 00 F0 */	stfd f0, 0xf0(r1)
/* 8066CC30  80 01 00 F4 */	lwz r0, 0xf4(r1)
/* 8066CC34  7C 00 07 34 */	extsh r0, r0
/* 8066CC38  C8 3F 01 80 */	lfd f1, 0x180(r31)
/* 8066CC3C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8066CC40  90 01 00 EC */	stw r0, 0xec(r1)
/* 8066CC44  3C 00 43 30 */	lis r0, 0x4330
/* 8066CC48  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 8066CC4C  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 8066CC50  EC 00 08 28 */	fsubs f0, f0, f1
/* 8066CC54  80 7E 05 D0 */	lwz r3, 0x5d0(r30)
/* 8066CC58  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8066CC5C  A8 7E 05 F6 */	lha r3, 0x5f6(r30)
/* 8066CC60  38 03 00 01 */	addi r0, r3, 1
/* 8066CC64  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
lbl_8066CC68:
/* 8066CC68  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 8066CC6C  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 8066CC70  40 82 00 A4 */	bne lbl_8066CD14
/* 8066CC74  38 00 00 06 */	li r0, 6
/* 8066CC78  B0 1E 05 F2 */	sth r0, 0x5f2(r30)
/* 8066CC7C  38 00 00 00 */	li r0, 0
/* 8066CC80  B0 1E 05 F6 */	sth r0, 0x5f6(r30)
/* 8066CC84  38 61 00 94 */	addi r3, r1, 0x94
/* 8066CC88  4B A0 A8 F4 */	b __ct__11dBgS_GndChkFv
/* 8066CC8C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8066CC90  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8066CC94  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8066CC98  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8066CC9C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8066CCA0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8066CCA4  C0 1F 00 24 */	lfs f0, 0x24(r31)
/* 8066CCA8  EC 01 00 2A */	fadds f0, f1, f0
/* 8066CCAC  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8066CCB0  38 61 00 94 */	addi r3, r1, 0x94
/* 8066CCB4  38 81 00 18 */	addi r4, r1, 0x18
/* 8066CCB8  4B BF B0 70 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 8066CCBC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066CCC0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066CCC4  3B 83 0F 38 */	addi r28, r3, 0xf38
/* 8066CCC8  7F 83 E3 78 */	mr r3, r28
/* 8066CCCC  38 81 00 94 */	addi r4, r1, 0x94
/* 8066CCD0  4B A0 77 D0 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8066CCD4  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8066CCD8  EC 00 08 28 */	fsubs f0, f0, f1
/* 8066CCDC  FC 00 02 10 */	fabs f0, f0
/* 8066CCE0  FC 20 00 18 */	frsp f1, f0
/* 8066CCE4  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 8066CCE8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8066CCEC  40 80 00 1C */	bge lbl_8066CD08
/* 8066CCF0  7F 83 E3 78 */	mr r3, r28
/* 8066CCF4  38 81 00 94 */	addi r4, r1, 0x94
/* 8066CCF8  4B A0 77 A8 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 8066CCFC  D0 3E 04 D4 */	stfs f1, 0x4d4(r30)
/* 8066CD00  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066CD04  D0 1E 05 30 */	stfs f0, 0x530(r30)
lbl_8066CD08:
/* 8066CD08  38 61 00 94 */	addi r3, r1, 0x94
/* 8066CD0C  38 80 FF FF */	li r4, -1
/* 8066CD10  4B A0 A8 E0 */	b __dt__11dBgS_GndChkFv
lbl_8066CD14:
/* 8066CD14  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8066CD18  D0 1E 06 48 */	stfs f0, 0x648(r30)
/* 8066CD1C  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 8066CD20  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 8066CD24  A8 1E 05 FC */	lha r0, 0x5fc(r30)
/* 8066CD28  2C 00 00 00 */	cmpwi r0, 0
/* 8066CD2C  41 82 00 14 */	beq lbl_8066CD40
/* 8066CD30  3B A0 00 01 */	li r29, 1
/* 8066CD34  C0 1F 01 78 */	lfs f0, 0x178(r31)
/* 8066CD38  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8066CD3C  48 00 00 08 */	b lbl_8066CD44
lbl_8066CD40:
/* 8066CD40  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
lbl_8066CD44:
/* 8066CD44  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066CD48  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066CD4C  83 83 5D AC */	lwz r28, 0x5dac(r3)
/* 8066CD50  38 61 00 24 */	addi r3, r1, 0x24
/* 8066CD54  4B A0 AF 14 */	b __ct__11dBgS_LinChkFv
/* 8066CD58  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 8066CD5C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8066CD60  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8066CD64  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8066CD68  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 8066CD6C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8066CD70  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 8066CD74  EC 01 00 2A */	fadds f0, f1, f0
/* 8066CD78  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8066CD7C  38 61 00 24 */	addi r3, r1, 0x24
/* 8066CD80  38 9C 05 38 */	addi r4, r28, 0x538
/* 8066CD84  38 A1 00 0C */	addi r5, r1, 0xc
/* 8066CD88  7F C6 F3 78 */	mr r6, r30
/* 8066CD8C  4B A0 AF D8 */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8066CD90  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8066CD94  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8066CD98  38 63 0F 38 */	addi r3, r3, 0xf38
/* 8066CD9C  38 81 00 24 */	addi r4, r1, 0x24
/* 8066CDA0  4B A0 76 14 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 8066CDA4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8066CDA8  41 82 00 1C */	beq lbl_8066CDC4
/* 8066CDAC  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8066CDB0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 8066CDB4  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8066CDB8  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8066CDBC  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 8066CDC0  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
lbl_8066CDC4:
/* 8066CDC4  38 61 00 24 */	addi r3, r1, 0x24
/* 8066CDC8  38 80 FF FF */	li r4, -1
/* 8066CDCC  4B A0 AF 10 */	b __dt__11dBgS_LinChkFv
/* 8066CDD0  7F A3 EB 78 */	mr r3, r29
/* 8066CDD4  39 61 01 10 */	addi r11, r1, 0x110
/* 8066CDD8  4B CF 54 4C */	b _restgpr_28
/* 8066CDDC  80 01 01 14 */	lwz r0, 0x114(r1)
/* 8066CDE0  7C 08 03 A6 */	mtlr r0
/* 8066CDE4  38 21 01 10 */	addi r1, r1, 0x110
/* 8066CDE8  4E 80 00 20 */	blr 
