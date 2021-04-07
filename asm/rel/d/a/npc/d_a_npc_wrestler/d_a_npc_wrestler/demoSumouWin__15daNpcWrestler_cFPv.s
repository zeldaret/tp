lbl_80B3AE24:
/* 80B3AE24  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80B3AE28  7C 08 02 A6 */	mflr r0
/* 80B3AE2C  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80B3AE30  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80B3AE34  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80B3AE38  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3AE3C  4B 82 73 99 */	bl _savegpr_27
/* 80B3AE40  7C 7B 1B 78 */	mr r27, r3
/* 80B3AE44  3C 60 80 B4 */	lis r3, m__21daNpcWrestler_Param_c@ha /* 0x80B416DC@ha */
/* 80B3AE48  3B C3 16 DC */	addi r30, r3, m__21daNpcWrestler_Param_c@l /* 0x80B416DC@l */
/* 80B3AE4C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3AE50  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3AE54  83 BF 5D AC */	lwz r29, 0x5dac(r31)
/* 80B3AE58  4B 64 67 E9 */	bl dCam_getBody__Fv
/* 80B3AE5C  7C 7C 1B 78 */	mr r28, r3
/* 80B3AE60  A0 1B 0E 96 */	lhz r0, 0xe96(r27)
/* 80B3AE64  2C 00 00 02 */	cmpwi r0, 2
/* 80B3AE68  41 82 00 40 */	beq lbl_80B3AEA8
/* 80B3AE6C  40 80 00 10 */	bge lbl_80B3AE7C
/* 80B3AE70  2C 00 00 00 */	cmpwi r0, 0
/* 80B3AE74  41 82 00 14 */	beq lbl_80B3AE88
/* 80B3AE78  48 00 06 18 */	b lbl_80B3B490
lbl_80B3AE7C:
/* 80B3AE7C  2C 00 00 04 */	cmpwi r0, 4
/* 80B3AE80  40 80 06 10 */	bge lbl_80B3B490
/* 80B3AE84  48 00 06 04 */	b lbl_80B3B488
lbl_80B3AE88:
/* 80B3AE88  38 60 00 00 */	li r3, 0
/* 80B3AE8C  90 7B 0E 84 */	stw r3, 0xe84(r27)
/* 80B3AE90  38 00 00 14 */	li r0, 0x14
/* 80B3AE94  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3AE98  90 7B 0E 74 */	stw r3, 0xe74(r27)
/* 80B3AE9C  38 00 00 02 */	li r0, 2
/* 80B3AEA0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3AEA4  48 00 05 EC */	b lbl_80B3B490
lbl_80B3AEA8:
/* 80B3AEA8  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80B3AEAC  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80B3AEB0  80 63 00 00 */	lwz r3, 0(r3)
/* 80B3AEB4  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B3AEB8  38 80 00 04 */	li r4, 4
/* 80B3AEBC  4B 77 6F 39 */	bl changeSubBgmStatus__8Z2SeqMgrFl
/* 80B3AEC0  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3AEC4  2C 00 00 02 */	cmpwi r0, 2
/* 80B3AEC8  41 82 01 F4 */	beq lbl_80B3B0BC
/* 80B3AECC  40 80 00 14 */	bge lbl_80B3AEE0
/* 80B3AED0  2C 00 00 00 */	cmpwi r0, 0
/* 80B3AED4  41 82 00 18 */	beq lbl_80B3AEEC
/* 80B3AED8  40 80 01 AC */	bge lbl_80B3B084
/* 80B3AEDC  48 00 05 54 */	b lbl_80B3B430
lbl_80B3AEE0:
/* 80B3AEE0  2C 00 00 04 */	cmpwi r0, 4
/* 80B3AEE4  40 80 05 4C */	bge lbl_80B3B430
/* 80B3AEE8  48 00 04 14 */	b lbl_80B3B2FC
lbl_80B3AEEC:
/* 80B3AEEC  A0 1B 00 F8 */	lhz r0, 0xf8(r27)
/* 80B3AEF0  28 00 00 02 */	cmplwi r0, 2
/* 80B3AEF4  41 82 00 30 */	beq lbl_80B3AF24
/* 80B3AEF8  7F 63 DB 78 */	mr r3, r27
/* 80B3AEFC  38 80 00 01 */	li r4, 1
/* 80B3AF00  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80B3AF04  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80B3AF08  38 C0 00 00 */	li r6, 0
/* 80B3AF0C  4B 4E 09 FD */	bl fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80B3AF10  A0 1B 00 FA */	lhz r0, 0xfa(r27)
/* 80B3AF14  60 00 00 02 */	ori r0, r0, 2
/* 80B3AF18  B0 1B 00 FA */	sth r0, 0xfa(r27)
/* 80B3AF1C  38 60 00 00 */	li r3, 0
/* 80B3AF20  48 00 05 74 */	b lbl_80B3B494
lbl_80B3AF24:
/* 80B3AF24  7F 83 E3 78 */	mr r3, r28
/* 80B3AF28  38 80 00 02 */	li r4, 2
/* 80B3AF2C  4B 62 80 E1 */	bl SetTrimSize__9dCamera_cFl
/* 80B3AF30  38 61 00 68 */	addi r3, r1, 0x68
/* 80B3AF34  7F 84 E3 78 */	mr r4, r28
/* 80B3AF38  4B 64 6F 61 */	bl Center__9dCamera_cFv
/* 80B3AF3C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80B3AF40  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3AF44  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80B3AF48  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3AF4C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80B3AF50  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3AF54  38 61 00 5C */	addi r3, r1, 0x5c
/* 80B3AF58  7F 84 E3 78 */	mr r4, r28
/* 80B3AF5C  4B 64 6F 09 */	bl Eye__9dCamera_cFv
/* 80B3AF60  C0 01 00 5C */	lfs f0, 0x5c(r1)
/* 80B3AF64  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3AF68  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80B3AF6C  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3AF70  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80B3AF74  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3AF78  C0 3C 00 58 */	lfs f1, 0x58(r28)
/* 80B3AF7C  C0 1C 06 F4 */	lfs f0, 0x6f4(r28)
/* 80B3AF80  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3AF84  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3AF88  7F A3 EB 78 */	mr r3, r29
/* 80B3AF8C  38 80 00 00 */	li r4, 0
/* 80B3AF90  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3AF94  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3AF98  7D 89 03 A6 */	mtctr r12
/* 80B3AF9C  4E 80 04 21 */	bctrl 
/* 80B3AFA0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3AFA4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3AFA8  4B 80 B5 09 */	bl PSMTXCopy
/* 80B3AFAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3AFB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3AFB4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B3AFB8  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3AFBC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B3AFC0  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3AFC4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B3AFC8  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3AFCC  38 61 00 50 */	addi r3, r1, 0x50
/* 80B3AFD0  7F 84 E3 78 */	mr r4, r28
/* 80B3AFD4  4B 64 6E 91 */	bl Eye__9dCamera_cFv
/* 80B3AFD8  38 61 00 44 */	addi r3, r1, 0x44
/* 80B3AFDC  38 81 00 50 */	addi r4, r1, 0x50
/* 80B3AFE0  38 BB 0E 44 */	addi r5, r27, 0xe44
/* 80B3AFE4  4B 72 BB 51 */	bl __mi__4cXyzCFRC3Vec
/* 80B3AFE8  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B3AFEC  D0 1B 0E 44 */	stfs f0, 0xe44(r27)
/* 80B3AFF0  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B3AFF4  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3AFF8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B3AFFC  D0 1B 0E 4C */	stfs f0, 0xe4c(r27)
/* 80B3B000  C0 3B 0E 48 */	lfs f1, 0xe48(r27)
/* 80B3B004  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3B008  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B3B00C  D0 1B 0E 48 */	stfs f0, 0xe48(r27)
/* 80B3B010  38 00 00 0E */	li r0, 0xe
/* 80B3B014  98 1D 05 6A */	stb r0, 0x56a(r29)
/* 80B3B018  7F 63 DB 78 */	mr r3, r27
/* 80B3B01C  38 80 00 15 */	li r4, 0x15
/* 80B3B020  38 A0 00 01 */	li r5, 1
/* 80B3B024  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3B028  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3B02C  7D 89 03 A6 */	mtctr r12
/* 80B3B030  4E 80 04 21 */	bctrl 
/* 80B3B034  7F 63 DB 78 */	mr r3, r27
/* 80B3B038  38 80 00 33 */	li r4, 0x33
/* 80B3B03C  80 BB 0B D8 */	lwz r5, 0xbd8(r27)
/* 80B3B040  C0 25 00 44 */	lfs f1, 0x44(r5)
/* 80B3B044  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3B048  81 8C 00 38 */	lwz r12, 0x38(r12)
/* 80B3B04C  7D 89 03 A6 */	mtctr r12
/* 80B3B050  4E 80 04 21 */	bctrl 
/* 80B3B054  A8 1B 0E 90 */	lha r0, 0xe90(r27)
/* 80B3B058  2C 00 00 02 */	cmpwi r0, 2
/* 80B3B05C  41 82 00 0C */	beq lbl_80B3B068
/* 80B3B060  38 00 00 02 */	li r0, 2
/* 80B3B064  B0 1B 0E 90 */	sth r0, 0xe90(r27)
lbl_80B3B068:
/* 80B3B068  38 7B 0C 80 */	addi r3, r27, 0xc80
/* 80B3B06C  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B3B070  4B 61 56 4D */	bl entry__18daNpcF_ActorMngr_cFP10fopAc_ac_c
/* 80B3B074  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3B078  38 03 00 01 */	addi r0, r3, 1
/* 80B3B07C  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3B080  48 00 03 B0 */	b lbl_80B3B430
lbl_80B3B084:
/* 80B3B084  80 7B 0E 80 */	lwz r3, 0xe80(r27)
/* 80B3B088  38 03 FF FF */	addi r0, r3, -1
/* 80B3B08C  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3B090  2C 03 00 00 */	cmpwi r3, 0
/* 80B3B094  41 81 03 9C */	bgt lbl_80B3B430
/* 80B3B098  7F 83 E3 78 */	mr r3, r28
/* 80B3B09C  4B 62 64 35 */	bl Stop__9dCamera_cFv
/* 80B3B0A0  7F 83 E3 78 */	mr r3, r28
/* 80B3B0A4  38 80 00 02 */	li r4, 2
/* 80B3B0A8  4B 62 7F 65 */	bl SetTrimSize__9dCamera_cFl
/* 80B3B0AC  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3B0B0  38 03 00 01 */	addi r0, r3, 1
/* 80B3B0B4  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3B0B8  48 00 03 78 */	b lbl_80B3B430
lbl_80B3B0BC:
/* 80B3B0BC  7F A3 EB 78 */	mr r3, r29
/* 80B3B0C0  38 80 00 01 */	li r4, 1
/* 80B3B0C4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3B0C8  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3B0CC  7D 89 03 A6 */	mtctr r12
/* 80B3B0D0  4E 80 04 21 */	bctrl 
/* 80B3B0D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B0D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B0DC  4B 80 B3 D5 */	bl PSMTXCopy
/* 80B3B0E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B0E4  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B0E8  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3B0EC  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3B0F0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3B0F4  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3B0F8  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3B0FC  D0 1B 0E 28 */	stfs f0, 0xe28(r27)
/* 80B3B100  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3B104  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80B3B108  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3B10C  D0 1B 0E 24 */	stfs f0, 0xe24(r27)
/* 80B3B110  38 7B 0E 08 */	addi r3, r27, 0xe08
/* 80B3B114  38 9B 0E 20 */	addi r4, r27, 0xe20
/* 80B3B118  C0 3E 06 3C */	lfs f1, 0x63c(r30)
/* 80B3B11C  C0 5E 05 AC */	lfs f2, 0x5ac(r30)
/* 80B3B120  C0 7E 06 40 */	lfs f3, 0x640(r30)
/* 80B3B124  4B 73 49 95 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 80B3B128  FF E0 08 90 */	fmr f31, f1
/* 80B3B12C  7F A3 EB 78 */	mr r3, r29
/* 80B3B130  38 80 00 00 */	li r4, 0
/* 80B3B134  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3B138  81 8C 01 30 */	lwz r12, 0x130(r12)
/* 80B3B13C  7D 89 03 A6 */	mtctr r12
/* 80B3B140  4E 80 04 21 */	bctrl 
/* 80B3B144  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B148  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B14C  4B 80 B3 65 */	bl PSMTXCopy
/* 80B3B150  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B3B154  D0 1B 0E 2C */	stfs f0, 0xe2c(r27)
/* 80B3B158  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B3B15C  D0 1B 0E 30 */	stfs f0, 0xe30(r27)
/* 80B3B160  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B3B164  D0 1B 0E 34 */	stfs f0, 0xe34(r27)
/* 80B3B168  38 7B 0E 2C */	addi r3, r27, 0xe2c
/* 80B3B16C  38 9B 0E 44 */	addi r4, r27, 0xe44
/* 80B3B170  7C 65 1B 78 */	mr r5, r3
/* 80B3B174  4B 80 BF 1D */	bl PSVECAdd
/* 80B3B178  C0 1B 0E 2C */	lfs f0, 0xe2c(r27)
/* 80B3B17C  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3B180  C0 1B 0E 30 */	lfs f0, 0xe30(r27)
/* 80B3B184  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3B188  C0 1B 0E 34 */	lfs f0, 0xe34(r27)
/* 80B3B18C  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3B190  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B194  FC 00 F8 00 */	fcmpu cr0, f0, f31
/* 80B3B198  40 82 02 98 */	bne lbl_80B3B430
/* 80B3B19C  7F 63 DB 78 */	mr r3, r27
/* 80B3B1A0  38 80 00 16 */	li r4, 0x16
/* 80B3B1A4  38 A0 00 01 */	li r5, 1
/* 80B3B1A8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3B1AC  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 80B3B1B0  7D 89 03 A6 */	mtctr r12
/* 80B3B1B4  4E 80 04 21 */	bctrl 
/* 80B3B1B8  7F 63 DB 78 */	mr r3, r27
/* 80B3B1BC  38 80 00 19 */	li r4, 0x19
/* 80B3B1C0  C0 3E 01 C8 */	lfs f1, 0x1c8(r30)
/* 80B3B1C4  38 A0 00 00 */	li r5, 0
/* 80B3B1C8  81 9B 0B 44 */	lwz r12, 0xb44(r27)
/* 80B3B1CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B3B1D0  7D 89 03 A6 */	mtctr r12
/* 80B3B1D4  4E 80 04 21 */	bctrl 
/* 80B3B1D8  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3B1DC  4B 4D 1B 89 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3B1E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B1E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B1E8  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3B1EC  4B 4D 12 49 */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3B1F0  88 1B 0E 9B */	lbz r0, 0xe9b(r27)
/* 80B3B1F4  28 00 00 00 */	cmplwi r0, 0
/* 80B3B1F8  40 82 00 1C */	bne lbl_80B3B214
/* 80B3B1FC  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B200  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80B3B204  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80B3B208  C0 1E 06 38 */	lfs f0, 0x638(r30)
/* 80B3B20C  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
/* 80B3B210  48 00 00 18 */	b lbl_80B3B228
lbl_80B3B214:
/* 80B3B214  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B218  D0 1B 04 D0 */	stfs f0, 0x4d0(r27)
/* 80B3B21C  D0 1B 04 D4 */	stfs f0, 0x4d4(r27)
/* 80B3B220  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 80B3B224  D0 1B 04 D8 */	stfs f0, 0x4d8(r27)
lbl_80B3B228:
/* 80B3B228  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B22C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B230  38 9B 04 D0 */	addi r4, r27, 0x4d0
/* 80B3B234  7C 85 23 78 */	mr r5, r4
/* 80B3B238  4B 80 BB 35 */	bl PSMTXMultVec
/* 80B3B23C  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B240  D0 1B 0E 14 */	stfs f0, 0xe14(r27)
/* 80B3B244  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3B248  D0 1B 0E 18 */	stfs f0, 0xe18(r27)
/* 80B3B24C  C0 1E 05 84 */	lfs f0, 0x584(r30)
/* 80B3B250  D0 1B 0E 1C */	stfs f0, 0xe1c(r27)
/* 80B3B254  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80B3B258  4B 4D 1B 0D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B3B25C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B260  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B264  A8 9B 08 F2 */	lha r4, 0x8f2(r27)
/* 80B3B268  4B 4D 11 CD */	bl mDoMtx_YrotM__FPA4_fs
/* 80B3B26C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B3B270  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B3B274  38 9B 0E 14 */	addi r4, r27, 0xe14
/* 80B3B278  7C 85 23 78 */	mr r5, r4
/* 80B3B27C  4B 80 BA F1 */	bl PSMTXMultVec
/* 80B3B280  C0 1B 04 D0 */	lfs f0, 0x4d0(r27)
/* 80B3B284  D0 1B 0E 08 */	stfs f0, 0xe08(r27)
/* 80B3B288  C0 1B 04 D4 */	lfs f0, 0x4d4(r27)
/* 80B3B28C  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3B290  C0 1B 04 D8 */	lfs f0, 0x4d8(r27)
/* 80B3B294  D0 1B 0E 10 */	stfs f0, 0xe10(r27)
/* 80B3B298  C0 3B 0E 0C */	lfs f1, 0xe0c(r27)
/* 80B3B29C  C0 1E 05 AC */	lfs f0, 0x5ac(r30)
/* 80B3B2A0  EC 01 00 2A */	fadds f0, f1, f0
/* 80B3B2A4  D0 1B 0E 0C */	stfs f0, 0xe0c(r27)
/* 80B3B2A8  C0 5B 0E 10 */	lfs f2, 0xe10(r27)
/* 80B3B2AC  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 80B3B2B0  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3B2B4  EC 21 00 2A */	fadds f1, f1, f0
/* 80B3B2B8  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3B2BC  D0 1B 0E 20 */	stfs f0, 0xe20(r27)
/* 80B3B2C0  D0 3B 0E 24 */	stfs f1, 0xe24(r27)
/* 80B3B2C4  D0 5B 0E 28 */	stfs f2, 0xe28(r27)
/* 80B3B2C8  C0 1E 05 E0 */	lfs f0, 0x5e0(r30)
/* 80B3B2CC  D0 1B 0E 50 */	stfs f0, 0xe50(r27)
/* 80B3B2D0  7F A3 EB 78 */	mr r3, r29
/* 80B3B2D4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80B3B2D8  81 8C 02 34 */	lwz r12, 0x234(r12)
/* 80B3B2DC  7D 89 03 A6 */	mtctr r12
/* 80B3B2E0  4E 80 04 21 */	bctrl 
/* 80B3B2E4  38 00 00 14 */	li r0, 0x14
/* 80B3B2E8  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3B2EC  80 7B 0E 84 */	lwz r3, 0xe84(r27)
/* 80B3B2F0  38 03 00 01 */	addi r0, r3, 1
/* 80B3B2F4  90 1B 0E 84 */	stw r0, 0xe84(r27)
/* 80B3B2F8  48 00 01 38 */	b lbl_80B3B430
lbl_80B3B2FC:
/* 80B3B2FC  38 7B 0E 0C */	addi r3, r27, 0xe0c
/* 80B3B300  C0 3B 0E 24 */	lfs f1, 0xe24(r27)
/* 80B3B304  C0 5E 06 44 */	lfs f2, 0x644(r30)
/* 80B3B308  C0 7E 06 48 */	lfs f3, 0x648(r30)
/* 80B3B30C  C0 9E 05 F8 */	lfs f4, 0x5f8(r30)
/* 80B3B310  4B 73 46 6D */	bl cLib_addCalc__FPfffff
/* 80B3B314  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B318  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B3B31C  40 82 01 14 */	bne lbl_80B3B430
/* 80B3B320  80 7B 0E 80 */	lwz r3, 0xe80(r27)
/* 80B3B324  38 03 FF FF */	addi r0, r3, -1
/* 80B3B328  90 1B 0E 80 */	stw r0, 0xe80(r27)
/* 80B3B32C  2C 03 00 00 */	cmpwi r3, 0
/* 80B3B330  41 81 01 00 */	bgt lbl_80B3B430
/* 80B3B334  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3B338  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B3B33C  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3B340  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B3B344  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3B348  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B3B34C  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3B350  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B3B354  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3B358  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B3B35C  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3B360  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B3B364  7F 83 E3 78 */	mr r3, r28
/* 80B3B368  38 81 00 38 */	addi r4, r1, 0x38
/* 80B3B36C  38 A1 00 2C */	addi r5, r1, 0x2c
/* 80B3B370  4B 64 58 A9 */	bl Reset__9dCamera_cF4cXyz4cXyz
/* 80B3B374  7F 83 E3 78 */	mr r3, r28
/* 80B3B378  4B 62 61 35 */	bl Start__9dCamera_cFv
/* 80B3B37C  7F 83 E3 78 */	mr r3, r28
/* 80B3B380  38 80 00 00 */	li r4, 0
/* 80B3B384  4B 62 7C 89 */	bl SetTrimSize__9dCamera_cFl
/* 80B3B388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B3B38C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B3B390  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80B3B394  4B 50 70 D5 */	bl reset__14dEvt_control_cFv
/* 80B3B398  C0 1E 01 B8 */	lfs f0, 0x1b8(r30)
/* 80B3B39C  D0 1B 0E 8C */	stfs f0, 0xe8c(r27)
/* 80B3B3A0  3C 60 80 B4 */	lis r3, lit_9296@ha /* 0x80B42C18@ha */
/* 80B3B3A4  38 83 2C 18 */	addi r4, r3, lit_9296@l /* 0x80B42C18@l */
/* 80B3B3A8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B3B3AC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B3B3B0  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B3B3B4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B3B3B8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B3B3BC  90 01 00 28 */	stw r0, 0x28(r1)
/* 80B3B3C0  38 00 00 03 */	li r0, 3
/* 80B3B3C4  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3B3C8  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3B3CC  4B 82 6C 4D */	bl __ptmf_test
/* 80B3B3D0  2C 03 00 00 */	cmpwi r3, 0
/* 80B3B3D4  41 82 00 18 */	beq lbl_80B3B3EC
/* 80B3B3D8  7F 63 DB 78 */	mr r3, r27
/* 80B3B3DC  38 80 00 00 */	li r4, 0
/* 80B3B3E0  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3B3E4  4B 82 6C A1 */	bl __ptmf_scall
/* 80B3B3E8  60 00 00 00 */	nop 
lbl_80B3B3EC:
/* 80B3B3EC  38 00 00 00 */	li r0, 0
/* 80B3B3F0  B0 1B 0E 96 */	sth r0, 0xe96(r27)
/* 80B3B3F4  80 61 00 20 */	lwz r3, 0x20(r1)
/* 80B3B3F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B3B3FC  90 7B 0D CC */	stw r3, 0xdcc(r27)
/* 80B3B400  90 1B 0D D0 */	stw r0, 0xdd0(r27)
/* 80B3B404  80 01 00 28 */	lwz r0, 0x28(r1)
/* 80B3B408  90 1B 0D D4 */	stw r0, 0xdd4(r27)
/* 80B3B40C  38 7B 0D CC */	addi r3, r27, 0xdcc
/* 80B3B410  4B 82 6C 09 */	bl __ptmf_test
/* 80B3B414  2C 03 00 00 */	cmpwi r3, 0
/* 80B3B418  41 82 00 18 */	beq lbl_80B3B430
/* 80B3B41C  7F 63 DB 78 */	mr r3, r27
/* 80B3B420  38 80 00 00 */	li r4, 0
/* 80B3B424  39 9B 0D CC */	addi r12, r27, 0xdcc
/* 80B3B428  4B 82 6C 5D */	bl __ptmf_scall
/* 80B3B42C  60 00 00 00 */	nop 
lbl_80B3B430:
/* 80B3B430  80 1B 0E 84 */	lwz r0, 0xe84(r27)
/* 80B3B434  2C 00 00 00 */	cmpwi r0, 0
/* 80B3B438  40 81 00 58 */	ble lbl_80B3B490
/* 80B3B43C  C0 1B 0E 08 */	lfs f0, 0xe08(r27)
/* 80B3B440  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B3B444  C0 1B 0E 0C */	lfs f0, 0xe0c(r27)
/* 80B3B448  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80B3B44C  C0 1B 0E 10 */	lfs f0, 0xe10(r27)
/* 80B3B450  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80B3B454  C0 1B 0E 14 */	lfs f0, 0xe14(r27)
/* 80B3B458  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B3B45C  C0 1B 0E 18 */	lfs f0, 0xe18(r27)
/* 80B3B460  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B3B464  C0 1B 0E 1C */	lfs f0, 0xe1c(r27)
/* 80B3B468  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B3B46C  7F 83 E3 78 */	mr r3, r28
/* 80B3B470  38 81 00 14 */	addi r4, r1, 0x14
/* 80B3B474  38 A1 00 08 */	addi r5, r1, 8
/* 80B3B478  C0 3B 0E 50 */	lfs f1, 0xe50(r27)
/* 80B3B47C  38 C0 00 00 */	li r6, 0
/* 80B3B480  4B 64 56 61 */	bl Set__9dCamera_cF4cXyz4cXyzfs
/* 80B3B484  48 00 00 0C */	b lbl_80B3B490
lbl_80B3B488:
/* 80B3B488  38 00 00 01 */	li r0, 1
/* 80B3B48C  98 1B 0E 99 */	stb r0, 0xe99(r27)
lbl_80B3B490:
/* 80B3B490  38 60 00 01 */	li r3, 1
lbl_80B3B494:
/* 80B3B494  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80B3B498  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80B3B49C  39 61 00 90 */	addi r11, r1, 0x90
/* 80B3B4A0  4B 82 6D 81 */	bl _restgpr_27
/* 80B3B4A4  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80B3B4A8  7C 08 03 A6 */	mtlr r0
/* 80B3B4AC  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80B3B4B0  4E 80 00 20 */	blr 
