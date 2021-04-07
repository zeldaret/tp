lbl_80B3CA2C:
/* 80B3CA2C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B3CA30  7C 08 02 A6 */	mflr r0
/* 80B3CA34  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B3CA38  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B3CA3C  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B3CA40  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3CA44  4B 82 57 91 */	bl _savegpr_27
/* 80B3CA48  7C 7B 1B 78 */	mr r27, r3
/* 80B3CA4C  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3CA50  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3CA54  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3CA58  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3CA5C  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B3CA60  4B 64 4B E1 */	bl dCam_getBody__Fv
/* 80B3CA64  7C 7C 1B 78 */	mr r28, r3
/* 80B3CA68  A0 1B 0E 96 */	lhz r0, 0xe96(r27)
/* 80B3CA6C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3CA70  41 82 00 48 */	beq lbl_80B3CAB8
/* 80B3CA74  40 80 00 10 */	bge lbl_80B3CA84
/* 80B3CA78  2C 00 00 00 */	cmpwi r0, 0
/* 80B3CA7C  41 82 00 14 */	beq lbl_80B3CA90
/* 80B3CA80  48 00 06 1C */	b lbl_80B3D09C
lbl_80B3CA84:
/* 80B3CA84  2C 00 00 04 */	cmpwi r0, 4
/* 80B3CA88  40 80 06 14 */	bge lbl_80B3D09C
/* 80B3CA8C  48 00 06 08 */	b lbl_80B3D094
lbl_80B3CA90:
/* 80B3CA90  38 00 00 00 */	li r0, 0
/* 80B3CA94  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3CA98  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3CA9C  90 1B 0E 74 */	stw r0, 0xe74(r27)
/* 80B3CAA0  3C 60 80 43 */	lis r3, g_meter2_info@ha /* 0x80430188@ha */
/* 80B3CAA4  38 63 01 88 */	addi r3, r3, g_meter2_info@l /* 0x80430188@l */
/* 80B3CAA8  4B 6E 01 59 */	bl resetMeterString__13dMeter2Info_cFv
/* 80B3CAAC  38 00 00 02 */	li r0, 2
/* 80B3CAB0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3CAB4  48 00 05 E8 */	b lbl_80B3D09C
lbl_80B3CAB8:
/* 80B3CAB8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B3CABC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B3CAC0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3CAC4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3CAC8  38 80 00 04 */	li r4, 4
/* 80B3CACC  4B 77 53 29 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B3CAD0  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3CAD4  2C 00 00 01 */	cmpwi r0, 1
/* 80B3CAD8  41 82 01 F0 */	beq lbl_80B3CCC8
/* 80B3CADC  40 80 00 10 */	bge lbl_80B3CAEC
/* 80B3CAE0  2C 00 00 00 */	cmpwi r0, 0
/* 80B3CAE4  40 80 00 14 */	bge lbl_80B3CAF8
/* 80B3CAE8  48 00 05 54 */	b lbl_80B3D03C
lbl_80B3CAEC:
/* 80B3CAEC  2C 00 00 03 */	cmpwi r0, 3
/* 80B3CAF0  40 80 05 4C */	bge lbl_80B3D03C
/* 80B3CAF4  48 00 04 14 */	b lbl_80B3CF08
lbl_80B3CAF8:
/* 80B3CAF8  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B3CAFC  28 00 00 02 */	cmplwi r0, 2
/* 80B3CB00  41 82 00 30 */	beq lbl_80B3CB30
/* 80B3CB04  7F 63 DB 78 */	mr r3, r27
/* 80B3CB08  38 80 00 01 */	li r4, 1
/* 80B3CB0C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3CB10  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3CB14  38 C0 00 00 */	li r6, 0
/* 80B3CB18  4B 4D ED F1 */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3CB1C  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80B3CB20  60 00 00 02 */	ori r0, r0, 2
/* 80B3CB24  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80B3CB28  38 60 00 00 */	li r3, 0
/* 80B3CB2C  48 00 05 74 */	b lbl_80B3D0A0
lbl_80B3CB30:
/* 80B3CB30  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3CB34  7F 84 E3 78 */	mr r4, r28
/* 80B3CB38  4B 64 53 61 */	bl Center__9dCamera_cFv
/* 80B3CB3C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B3CB40  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3CB44  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B3CB48  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3CB4C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B3CB50  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3CB54  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B3CB58  7F 84 E3 78 */	mr r4, r28
/* 80B3CB5C  4B 64 53 09 */	bl Eye__9dCamera_cFv
/* 80B3CB60  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B3CB64  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3CB68  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B3CB6C  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3CB70  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B3CB74  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3CB78  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80B3CB7C  C0 1C 06 F4 */	lfs f0, 0x6f4(r28)
/* 80B3CB80  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3CB84  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3CB88  7F A3 EB 78 */	mr r3, r29
/* 80B3CB8C  38 80 00 00 */	li r4, 0
/* 80B3CB90  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3CB94  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3CB98  7D 89 03 A6 */	mtctr r12
/* 80B3CB9C  4E 80 04 21 */	bctrl 
/* 80B3CBA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CBA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CBA8  4B 80 99 09 */	bl PSMTXCopy
/* 80B3CBAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CBB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CBB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3CBB8  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3CBBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3CBC0  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3CBC4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3CBC8  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3CBCC  38 61 00 50 */	addi r3, r1, 0x50
/* 80B3CBD0  7F 84 E3 78 */	mr r4, r28
/* 80B3CBD4  4B 64 52 91 */	bl Eye__9dCamera_cFv
/* 80B3CBD8  38 61 00 44 */	addi r3, r1, 0x44
/* 80B3CBDC  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3CBE0  38 BB 0E 44 */	addi r5, r27, 0xe44
/* 80B3CBE4  4B 72 9F 51 */	bl __mi__4cXyzCFRC3Vec
/* 80B3CBE8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B3CBEC  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3CBF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B3CBF4  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3CBF8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B3CBFC  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3CC00  C0 3B 0E 48 */	lfs f1, 0xe48(r27)
/* 80B3CC04  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3CC08  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3CC0C  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3CC10  7F 83 E3 78 */	mr r3, r28
/* 80B3CC14  4B 62 48 BD */	bl Stop__9dCamera_cFv
/* 80B3CC18  7F 83 E3 78 */	mr r3, r28
/* 80B3CC1C  38 80 00 02 */	li r4, 2
/* 80B3CC20  4B 62 63 ED */	bl SetTrimSize__9dCamera_cFl
/* 80B3CC24  38 00 00 0E */	li r0, 0xe
/* 80B3CC28  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 80B3CC2C  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3CC30  7F A3 EB 78 */	mr r3, r29
/* 80B3CC34  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3CC38  C0 25 00 F8 */	lfs f1, 0xf8(r5)
/* 80B3CC3C  C0 45 00 F4 */	lfs f2, 0xf4(r5)
/* 80B3CC40  38 A0 00 00 */	li r5, 0
/* 80B3CC44  38 C0 00 01 */	li r6, 1
/* 80B3CC48  38 E0 00 00 */	li r7, 0
/* 80B3CC4C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3CC50  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80B3CC54  7D 89 03 A6 */	mtctr r12
/* 80B3CC58  4E 80 04 21 */	bctrl 
/* 80B3CC5C  7F 63 DB 78 */	mr r3, r27
/* 80B3CC60  38 80 00 05 */	li r4, 5
/* 80B3CC64  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3CC68  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3CC6C  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B3CC70  7D 89 03 A6 */	mtctr r12
/* 80B3CC74  4E 80 04 21 */	bctrl 
/* 80B3CC78  7F 63 DB 78 */	mr r3, r27
/* 80B3CC7C  38 80 00 1B */	li r4, 0x1b
/* 80B3CC80  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3CC84  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3CC88  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3CC8C  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3CC90  7D 89 03 A6 */	mtctr r12
/* 80B3CC94  4E 80 04 21 */	bctrl 
/* 80B3CC98  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B3CC9C  2C 00 00 02 */	cmpwi r0, 2
/* 80B3CCA0  41 82 00 0C */	beq lbl_80B3CCAC
/* 80B3CCA4  38 00 00 02 */	li r0, 2
/* 80B3CCA8  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B3CCAC:
/* 80B3CCAC  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3CCB0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B3CCB4  4B 61 3A 09 */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3CCB8  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3CCBC  38 03 00 01 */	addi r0, r3, 1
/* 80B3CCC0  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3CCC4  48 00 03 78 */	b lbl_80B3D03C
lbl_80B3CCC8:
/* 80B3CCC8  7F A3 EB 78 */	mr r3, r29
/* 80B3CCCC  38 80 00 01 */	li r4, 1
/* 80B3CCD0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3CCD4  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3CCD8  7D 89 03 A6 */	mtctr r12
/* 80B3CCDC  4E 80 04 21 */	bctrl 
/* 80B3CCE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CCE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CCE8  4B 80 97 C9 */	bl PSMTXCopy
/* 80B3CCEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CCF0  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CCF4  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3CCF8  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3CCFC  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3CD00  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3CD04  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3CD08  D0 1B 0E 28 */	stfs f0, 0xe28(r27)
/* 80B3CD0C  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3CD10  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80B3CD14  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3CD18  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3CD1C  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B3CD20  38 9B 0E 20 */	addi r4, r27, 0xe20
/* 80B3CD24  C0 3E 05 88 */	lfs f1, 0x588(r30)
/* 80B3CD28  C0 5E 06 74 */	lfs f2, 0x674(r30)
/* 80B3CD2C  C0 7E 06 40 */	lfs f3, 0x640(r30)
/* 80B3CD30  4B 73 2D 89 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3CD34  FF E0 08 90 */	fmr f31, f1
/* 80B3CD38  7F A3 EB 78 */	mr r3, r29
/* 80B3CD3C  38 80 00 00 */	li r4, 0
/* 80B3CD40  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3CD44  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3CD48  7D 89 03 A6 */	mtctr r12
/* 80B3CD4C  4E 80 04 21 */	bctrl 
/* 80B3CD50  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CD54  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CD58  4B 80 97 59 */	bl PSMTXCopy
/* 80B3CD5C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3CD60  D0 1B 0E 2C */	stfs f0, 0xe2c(r27)
/* 80B3CD64  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3CD68  D0 1B 0E 30 */	stfs f0, 0xe30(r27)
/* 80B3CD6C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3CD70  D0 1B 0E 34 */	stfs f0, 0xe34(r27)
/* 80B3CD74  38 7B 0E 2C */	addi r3, r27, 0xe2c
/* 80B3CD78  38 9B 0E 44 */	addi r4, r27, 0xe44
/* 80B3CD7C  7C 65 1B 78 */	mr r5, r3
/* 80B3CD80  4B 80 A3 11 */	bl PSVECAdd
/* 80B3CD84  C0 1B 0E 2C */	lfs f0, 0xe2c(r27)
/* 80B3CD88  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3CD8C  C0 1B 0E 30 */	lfs f0, 0xe30(r27)
/* 80B3CD90  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3CD94  C0 1B 0E 34 */	lfs f0, 0xe34(r27)
/* 80B3CD98  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3CD9C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CDA0  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80B3CDA4  40 82 02 98 */	bne lbl_80B3D03C
/* 80B3CDA8  7F 63 DB 78 */	mr r3, r27
/* 80B3CDAC  38 80 00 16 */	li r4, 0x16
/* 80B3CDB0  38 A0 00 01 */	li r5, 1
/* 80B3CDB4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3CDB8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3CDBC  7D 89 03 A6 */	mtctr r12
/* 80B3CDC0  4E 80 04 21 */	bctrl 
/* 80B3CDC4  7F 63 DB 78 */	mr r3, r27
/* 80B3CDC8  38 80 00 19 */	li r4, 0x19
/* 80B3CDCC  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3CDD0  38 A0 00 00 */	li r5, 0
/* 80B3CDD4  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3CDD8  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3CDDC  7D 89 03 A6 */	mtctr r12
/* 80B3CDE0  4E 80 04 21 */	bctrl 
/* 80B3CDE4  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3CDE8  4B 4C FF 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3CDEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CDF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CDF4  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3CDF8  4B 4C F6 3D */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3CDFC  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B3CE00  28 00 00 00 */	cmplwi r0, 0
/* 80B3CE04  40 82 00 1C */	bne lbl_80B3CE20
/* 80B3CE08  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CE0C  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80B3CE10  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80B3CE14  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80B3CE18  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80B3CE1C  48 00 00 18 */	b lbl_80B3CE34
lbl_80B3CE20:
/* 80B3CE20  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CE24  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80B3CE28  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80B3CE2C  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80B3CE30  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80B3CE34:
/* 80B3CE34  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CE38  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CE3C  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B3CE40  7C 85 23 78 */	mr r5, r4
/* 80B3CE44  4B 80 9F 29 */	bl PSMTXMultVec
/* 80B3CE48  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CE4C  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3CE50  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3CE54  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3CE58  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80B3CE5C  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3CE60  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3CE64  4B 4C FF 01 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3CE68  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CE6C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CE70  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3CE74  4B 4C F5 C1 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3CE78  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3CE7C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3CE80  38 9B 0E 14 */	addi r4, r27, 0xe14
/* 80B3CE84  7C 85 23 78 */	mr r5, r4
/* 80B3CE88  4B 80 9E E5 */	bl PSMTXMultVec
/* 80B3CE8C  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B3CE90  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3CE94  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B3CE98  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3CE9C  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B3CEA0  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3CEA4  C0 3B 0E 0C */	lfs f1, 0xe0c(r27)
/* 80B3CEA8  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3CEAC  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3CEB0  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3CEB4  C0 5B 0E 10 */	lfs f2, 0xe10(r27)
/* 80B3CEB8  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80B3CEBC  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3CEC0  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3CEC4  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3CEC8  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3CECC  D0 3B 0E 24 */	stfs f1, 0xe24(r27)
/* 80B3CED0  D0 5B 0E 28 */	stfs f2, 0xe28(r27)
/* 80B3CED4  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80B3CED8  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3CEDC  7F A3 EB 78 */	mr r3, r29
/* 80B3CEE0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3CEE4  81 8C 02 34 */	lwz r12, 0x234(r12)
/* 80B3CEE8  7D 89 03 A6 */	mtctr r12
/* 80B3CEEC  4E 80 04 21 */	bctrl 
/* 80B3CEF0  38 00 00 14 */	li r0, 0x14
/* 80B3CEF4  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3CEF8  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3CEFC  38 03 00 01 */	addi r0, r3, 1
/* 80B3CF00  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3CF04  48 00 01 38 */	b lbl_80B3D03C
lbl_80B3CF08:
/* 80B3CF08  38 7B 0E 0C */	addi r3, r27, 0xe0c
/* 80B3CF0C  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3CF10  C0 5E 06 44 */	lfs f2, 0x644(r30)
/* 80B3CF14  C0 7E 06 48 */	lfs f3, 0x648(r30)
/* 80B3CF18  C0 9E 05 F8 */	lfs f4, 0x5f8(r30)
/* 80B3CF1C  4B 73 2A 61 */	bl cLib_addCalc__FPfffff
/* 80B3CF20  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CF24  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3CF28  40 82 01 14 */	bne lbl_80B3D03C
/* 80B3CF2C  80 7B 0E 80 */	lwz r3, 0xe80(r27)
/* 80B3CF30  38 03 FF FF */	addi r0, r3, -1
/* 80B3CF34  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3CF38  2C 03 00 00 */	cmpwi r3, 0
/* 80B3CF3C  41 81 01 00 */	bgt lbl_80B3D03C
/* 80B3CF40  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3CF44  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B3CF48  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3CF4C  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3CF50  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3CF54  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3CF58  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3CF5C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B3CF60  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3CF64  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B3CF68  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3CF6C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3CF70  7F 83 E3 78 */	mr r3, r28
/* 80B3CF74  38 81 00 38 */	addi r4, r1, 0x38
/* 80B3CF78  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B3CF7C  4B 64 3C 9D */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B3CF80  7F 83 E3 78 */	mr r3, r28
/* 80B3CF84  4B 62 45 29 */	bl Start__9dCamera_cFv
/* 80B3CF88  7F 83 E3 78 */	mr r3, r28
/* 80B3CF8C  38 80 00 00 */	li r4, 0
/* 80B3CF90  4B 62 60 7D */	bl SetTrimSize__9dCamera_cFl
/* 80B3CF94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3CF98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3CF9C  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3CFA0  4B 50 54 C9 */	bl reset__14dEvt_control_cFv
/* 80B3CFA4  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3CFA8  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B3CFAC  3C 60 80 B4 */	lis r3, lit_9878@ha /* 0x80B42C60@ha */
/* 80B3CFB0  38 83 2C 60 */	addi r4, r3, lit_9878@l /* 0x80B42C60@l */
/* 80B3CFB4  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3CFB8  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3CFBC  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3CFC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3CFC4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3CFC8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3CFCC  38 00 00 03 */	li r0, 3
/* 80B3CFD0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3CFD4  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3CFD8  4B 82 50 41 */	bl __ptmf_test
/* 80B3CFDC  2C 03 00 00 */	cmpwi r3, 0
/* 80B3CFE0  41 82 00 18 */	beq lbl_80B3CFF8
/* 80B3CFE4  7F 63 DB 78 */	mr r3, r27
/* 80B3CFE8  38 80 00 00 */	li r4, 0
/* 80B3CFEC  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3CFF0  4B 82 50 95 */	bl __ptmf_scall
/* 80B3CFF4  60 00 00 00 */	nop 
lbl_80B3CFF8:
/* 80B3CFF8  38 00 00 00 */	li r0, 0
/* 80B3CFFC  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3D000  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3D004  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3D008  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B3D00C  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B3D010  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3D014  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3D018  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3D01C  4B 82 4F FD */	bl __ptmf_test
/* 80B3D020  2C 03 00 00 */	cmpwi r3, 0
/* 80B3D024  41 82 00 18 */	beq lbl_80B3D03C
/* 80B3D028  7F 63 DB 78 */	mr r3, r27
/* 80B3D02C  38 80 00 00 */	li r4, 0
/* 80B3D030  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3D034  4B 82 50 51 */	bl __ptmf_scall
/* 80B3D038  60 00 00 00 */	nop 
lbl_80B3D03C:
/* 80B3D03C  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3D040  2C 00 00 00 */	cmpwi r0, 0
/* 80B3D044  40 81 00 58 */	ble lbl_80B3D09C
/* 80B3D048  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3D04C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3D050  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3D054  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3D058  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3D05C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3D060  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3D064  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3D068  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3D06C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3D070  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3D074  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3D078  7F 83 E3 78 */	mr r3, r28
/* 80B3D07C  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3D080  38 A1 00 08 */	addi r5, r1, 8
/* 80B3D084  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B3D088  38 C0 00 00 */	li r6, 0
/* 80B3D08C  4B 64 3A 55 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3D090  48 00 00 0C */	b lbl_80B3D09C
lbl_80B3D094:
/* 80B3D094  38 00 00 01 */	li r0, 1
/* 80B3D098  98 1B 0E 99 */	stb r0, 0xe99(r27)
lbl_80B3D09C:
/* 80B3D09C  38 60 00 01 */	li r3, 1
lbl_80B3D0A0:
/* 80B3D0A0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B3D0A4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B3D0A8  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3D0AC  4B 82 51 75 */	bl _restgpr_27
/* 80B3D0B0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B3D0B4  7C 08 03 A6 */	mtlr r0
/* 80B3D0B8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B3D0BC  4E 80 00 20 */	blr 
