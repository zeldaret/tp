lbl_80615A10:
/* 80615A10  94 21 FE 20 */	stwu r1, -0x1e0(r1)
/* 80615A14  7C 08 02 A6 */	mflr r0
/* 80615A18  90 01 01 E4 */	stw r0, 0x1e4(r1)
/* 80615A1C  DB E1 01 D0 */	stfd f31, 0x1d0(r1)
/* 80615A20  F3 E1 01 D8 */	psq_st f31, 472(r1), 0, 0 /* qr0 */
/* 80615A24  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 80615A28  4B D4 C7 94 */	b _savegpr_21
/* 80615A2C  7C 7F 1B 78 */	mr r31, r3
/* 80615A30  3C 60 80 62 */	lis r3, lit_1109@ha
/* 80615A34  3B 03 B4 C0 */	addi r24, r3, lit_1109@l
/* 80615A38  3C 60 80 62 */	lis r3, lit_3772@ha
/* 80615A3C  3B C3 AD 84 */	addi r30, r3, lit_3772@l
/* 80615A40  38 60 00 00 */	li r3, 0
/* 80615A44  48 00 50 15 */	bl dComIfGp_getPlayer__Fi
/* 80615A48  7C 7D 1B 78 */	mr r29, r3
/* 80615A4C  38 60 00 00 */	li r3, 0
/* 80615A50  48 00 4F ED */	bl dComIfGp_getPlayerCameraID__Fi
/* 80615A54  48 00 4F D1 */	bl dComIfGp_getCamera__Fi
/* 80615A58  7C 7C 1B 78 */	mr r28, r3
/* 80615A5C  38 60 00 00 */	li r3, 0
/* 80615A60  48 00 4F C5 */	bl dComIfGp_getCamera__Fi
/* 80615A64  7C 79 1B 78 */	mr r25, r3
/* 80615A68  80 1F 5C E8 */	lwz r0, 0x5ce8(r31)
/* 80615A6C  54 00 10 3A */	slwi r0, r0, 2
/* 80615A70  7C 7F 02 14 */	add r3, r31, r0
/* 80615A74  80 03 4F 64 */	lwz r0, 0x4f64(r3)
/* 80615A78  90 01 00 38 */	stw r0, 0x38(r1)
/* 80615A7C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80615A80  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80615A84  38 81 00 38 */	addi r4, r1, 0x38
/* 80615A88  4B A0 3D 70 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80615A8C  7C 7A 1B 78 */	mr r26, r3
/* 80615A90  3B 60 00 00 */	li r27, 0
/* 80615A94  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 80615A98  28 00 00 3D */	cmplwi r0, 0x3d
/* 80615A9C  41 81 26 8C */	bgt lbl_80618128
/* 80615AA0  3C 60 80 62 */	lis r3, lit_6812@ha
/* 80615AA4  38 63 B1 7C */	addi r3, r3, lit_6812@l
/* 80615AA8  54 00 10 3A */	slwi r0, r0, 2
/* 80615AAC  7C 03 00 2E */	lwzx r0, r3, r0
/* 80615AB0  7C 09 03 A6 */	mtctr r0
/* 80615AB4  4E 80 04 20 */	bctr 
lbl_80615AB8:
/* 80615AB8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80615ABC  48 00 4F 55 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80615AC0  2C 03 00 00 */	cmpwi r3, 0
/* 80615AC4  40 82 00 68 */	bne lbl_80615B2C
/* 80615AC8  7F E3 FB 78 */	mr r3, r31
/* 80615ACC  38 80 00 02 */	li r4, 2
/* 80615AD0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 80615AD4  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 80615AD8  38 C0 00 00 */	li r6, 0
/* 80615ADC  4B A0 5E 2C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80615AE0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80615AE4  38 80 00 02 */	li r4, 2
/* 80615AE8  48 00 4F 19 */	bl onCondition__11dEvt_info_cFUs
/* 80615AEC  38 61 01 48 */	addi r3, r1, 0x148
/* 80615AF0  38 80 FF FF */	li r4, -1
/* 80615AF4  4B FF B9 15 */	bl __dt__4cXyzFv
/* 80615AF8  38 61 01 54 */	addi r3, r1, 0x154
/* 80615AFC  38 80 FF FF */	li r4, -1
/* 80615B00  4B FF B9 09 */	bl __dt__4cXyzFv
/* 80615B04  38 61 01 60 */	addi r3, r1, 0x160
/* 80615B08  38 80 FF FF */	li r4, -1
/* 80615B0C  4B FF B8 FD */	bl __dt__4cXyzFv
/* 80615B10  38 61 01 6C */	addi r3, r1, 0x16c
/* 80615B14  38 80 FF FF */	li r4, -1
/* 80615B18  4B FF B8 F1 */	bl __dt__4cXyzFv
/* 80615B1C  38 61 01 78 */	addi r3, r1, 0x178
/* 80615B20  38 80 FF FF */	li r4, -1
/* 80615B24  4B FF B8 E5 */	bl __dt__4cXyzFv
/* 80615B28  48 00 29 F8 */	b lbl_80618520
lbl_80615B2C:
/* 80615B2C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80615B30  4B B4 B9 A0 */	b Stop__9dCamera_cFv
/* 80615B34  38 00 00 02 */	li r0, 2
/* 80615B38  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80615B3C  38 00 00 00 */	li r0, 0
/* 80615B40  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80615B44  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80615B48  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80615B4C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80615B50  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80615B54  38 7C 02 48 */	addi r3, r28, 0x248
/* 80615B58  38 80 00 03 */	li r4, 3
/* 80615B5C  4B B4 D4 B0 */	b SetTrimSize__9dCamera_cFl
/* 80615B60  48 00 4E 91 */	bl daPy_getPlayerActorClass__Fv
/* 80615B64  48 00 4E 79 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80615B68  48 00 4E 89 */	bl daPy_getPlayerActorClass__Fv
/* 80615B6C  38 80 00 2E */	li r4, 0x2e
/* 80615B70  38 A0 00 00 */	li r5, 0
/* 80615B74  38 C0 00 00 */	li r6, 0
/* 80615B78  38 E0 00 00 */	li r7, 0
/* 80615B7C  48 00 4E 4D */	bl changeDemoMode__9daPy_py_cFUliis
/* 80615B80  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80615B84  38 99 00 D8 */	addi r4, r25, 0xd8
/* 80615B88  48 00 4E 25 */	bl __as__4cXyzFRC4cXyz
/* 80615B8C  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80615B90  38 99 00 E4 */	addi r4, r25, 0xe4
/* 80615B94  48 00 4E 19 */	bl __as__4cXyzFRC4cXyz
/* 80615B98  38 61 01 00 */	addi r3, r1, 0x100
/* 80615B9C  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80615BA0  38 BA 04 D0 */	addi r5, r26, 0x4d0
/* 80615BA4  4B C5 0F 90 */	b __mi__4cXyzCFRC3Vec
/* 80615BA8  38 61 01 78 */	addi r3, r1, 0x178
/* 80615BAC  38 81 01 00 */	addi r4, r1, 0x100
/* 80615BB0  48 00 4D FD */	bl __as__4cXyzFRC4cXyz
/* 80615BB4  38 61 01 00 */	addi r3, r1, 0x100
/* 80615BB8  38 80 FF FF */	li r4, -1
/* 80615BBC  4B FF B8 4D */	bl __dt__4cXyzFv
/* 80615BC0  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 80615BC4  C0 41 01 80 */	lfs f2, 0x180(r1)
/* 80615BC8  4B C5 1A AC */	b cM_atan2s__Fff
/* 80615BCC  B0 7F 5C E0 */	sth r3, 0x5ce0(r31)
/* 80615BD0  38 7A 1F 68 */	addi r3, r26, 0x1f68
/* 80615BD4  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80615BD8  48 00 4D D5 */	bl __as__4cXyzFRC4cXyz
/* 80615BDC  38 7A 1F 74 */	addi r3, r26, 0x1f74
/* 80615BE0  38 9D 04 E4 */	addi r4, r29, 0x4e4
/* 80615BE4  48 00 4D AD */	bl __as__5csXyzFRC5csXyz
/* 80615BE8  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80615BEC  D0 1A 1F 7C */	stfs f0, 0x1f7c(r26)
/* 80615BF0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80615BF4  D0 1F 5C D8 */	stfs f0, 0x5cd8(r31)
/* 80615BF8  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 80615BFC  D0 1F 5C DC */	stfs f0, 0x5cdc(r31)
lbl_80615C00:
/* 80615C00  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80615C04  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80615C08  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80615C0C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615C10  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615C14  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615C18  4B C5 9E 24 */	b cLib_addCalc2__FPffff
/* 80615C1C  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80615C20  C0 3E 00 98 */	lfs f1, 0x98(r30)
/* 80615C24  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80615C28  EC 21 00 2A */	fadds f1, f1, f0
/* 80615C2C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80615C30  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615C34  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615C38  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615C3C  4B C5 9E 00 */	b cLib_addCalc2__FPffff
/* 80615C40  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 80615C44  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80615C48  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 80615C4C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615C50  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615C54  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615C58  4B C5 9D E4 */	b cLib_addCalc2__FPffff
/* 80615C5C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80615C60  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80615C64  80 63 00 00 */	lwz r3, 0(r3)
/* 80615C68  A8 9F 5C E0 */	lha r4, 0x5ce0(r31)
/* 80615C6C  4B 9F 67 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80615C70  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80615C74  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80615C78  C0 1F 5C D8 */	lfs f0, 0x5cd8(r31)
/* 80615C7C  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80615C80  C0 1F 5C DC */	lfs f0, 0x5cdc(r31)
/* 80615C84  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80615C88  38 61 01 78 */	addi r3, r1, 0x178
/* 80615C8C  38 81 01 6C */	addi r4, r1, 0x16c
/* 80615C90  4B C5 B2 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 80615C94  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80615C98  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80615C9C  40 81 00 2C */	ble lbl_80615CC8
/* 80615CA0  38 7F 5C D8 */	addi r3, r31, 0x5cd8
/* 80615CA4  C0 3E 01 88 */	lfs f1, 0x188(r30)
/* 80615CA8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80615CAC  C0 7E 01 30 */	lfs f3, 0x130(r30)
/* 80615CB0  4B C5 9D 8C */	b cLib_addCalc2__FPffff
/* 80615CB4  38 7F 5C DC */	addi r3, r31, 0x5cdc
/* 80615CB8  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80615CBC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80615CC0  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 80615CC4  4B C5 9D 78 */	b cLib_addCalc2__FPffff
lbl_80615CC8:
/* 80615CC8  38 61 01 6C */	addi r3, r1, 0x16c
/* 80615CCC  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80615CD0  48 00 4C 8D */	bl __apl__4cXyzFRC3Vec
/* 80615CD4  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80615CD8  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 80615CDC  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615CE0  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615CE4  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615CE8  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615CEC  4B C5 9D 50 */	b cLib_addCalc2__FPffff
/* 80615CF0  38 7F 5C 88 */	addi r3, r31, 0x5c88
/* 80615CF4  C0 21 01 70 */	lfs f1, 0x170(r1)
/* 80615CF8  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615CFC  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615D00  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615D04  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615D08  4B C5 9D 34 */	b cLib_addCalc2__FPffff
/* 80615D0C  38 7F 5C 8C */	addi r3, r31, 0x5c8c
/* 80615D10  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 80615D14  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615D18  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615D1C  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615D20  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615D24  4B C5 9D 18 */	b cLib_addCalc2__FPffff
/* 80615D28  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 80615D2C  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80615D30  FC 40 08 90 */	fmr f2, f1
/* 80615D34  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80615D38  4B C5 9D 04 */	b cLib_addCalc2__FPffff
/* 80615D3C  80 7A 05 B4 */	lwz r3, 0x5b4(r26)
/* 80615D40  80 63 00 04 */	lwz r3, 4(r3)
/* 80615D44  38 80 00 1D */	li r4, 0x1d
/* 80615D48  48 00 4C 01 */	bl getAnmMtx__8J3DModelFi
/* 80615D4C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80615D50  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80615D54  4B D3 07 5C */	b PSMTXCopy
/* 80615D58  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80615D5C  C0 5E 01 8C */	lfs f2, 0x18c(r30)
/* 80615D60  C0 9E 01 90 */	lfs f4, 0x190(r30)
/* 80615D64  80 1A 0C 88 */	lwz r0, 0xc88(r26)
/* 80615D68  C8 7E 00 18 */	lfd f3, 0x18(r30)
/* 80615D6C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80615D70  90 01 01 8C */	stw r0, 0x18c(r1)
/* 80615D74  3C 00 43 30 */	lis r0, 0x4330
/* 80615D78  90 01 01 88 */	stw r0, 0x188(r1)
/* 80615D7C  C8 01 01 88 */	lfd f0, 0x188(r1)
/* 80615D80  EC 00 18 28 */	fsubs f0, f0, f3
/* 80615D84  EC 64 00 32 */	fmuls f3, f4, f0
/* 80615D88  4B 9F 70 14 */	b transM__14mDoMtx_stack_cFfff
/* 80615D8C  A8 1A 05 CE */	lha r0, 0x5ce(r26)
/* 80615D90  2C 00 00 03 */	cmpwi r0, 3
/* 80615D94  40 82 00 24 */	bne lbl_80615DB8
/* 80615D98  7F A3 EB 78 */	mr r3, r29
/* 80615D9C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80615DA0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80615DA4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80615DA8  81 8C 01 5C */	lwz r12, 0x15c(r12)
/* 80615DAC  7D 89 03 A6 */	mtctr r12
/* 80615DB0  4E 80 04 21 */	bctrl 
/* 80615DB4  48 00 23 74 */	b lbl_80618128
lbl_80615DB8:
/* 80615DB8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80615DBC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80615DC0  38 81 00 5C */	addi r4, r1, 0x5c
/* 80615DC4  4B 9F 6E 3C */	b mDoMtx_MtxToRot__FPA4_CfP5csXyz
/* 80615DC8  38 7A 1F 76 */	addi r3, r26, 0x1f76
/* 80615DCC  A8 81 00 5E */	lha r4, 0x5e(r1)
/* 80615DD0  38 A0 00 01 */	li r5, 1
/* 80615DD4  38 C0 08 00 */	li r6, 0x800
/* 80615DD8  4B C5 A8 30 */	b cLib_addCalcAngleS2__FPssss
/* 80615DDC  38 61 01 6C */	addi r3, r1, 0x16c
/* 80615DE0  48 00 4B 45 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 80615DE4  38 7A 1F 7C */	addi r3, r26, 0x1f7c
/* 80615DE8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80615DEC  FC 40 08 90 */	fmr f2, f1
/* 80615DF0  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80615DF4  4B C5 9C 48 */	b cLib_addCalc2__FPffff
/* 80615DF8  38 7A 1F 68 */	addi r3, r26, 0x1f68
/* 80615DFC  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 80615E00  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80615E04  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80615E08  C0 1A 1F 7C */	lfs f0, 0x1f7c(r26)
/* 80615E0C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615E10  4B C5 9C 2C */	b cLib_addCalc2__FPffff
/* 80615E14  38 7A 1F 6C */	addi r3, r26, 0x1f6c
/* 80615E18  C0 21 01 70 */	lfs f1, 0x170(r1)
/* 80615E1C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80615E20  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80615E24  C0 1A 1F 7C */	lfs f0, 0x1f7c(r26)
/* 80615E28  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615E2C  4B C5 9C 10 */	b cLib_addCalc2__FPffff
/* 80615E30  38 7A 1F 70 */	addi r3, r26, 0x1f70
/* 80615E34  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 80615E38  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80615E3C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80615E40  C0 1A 1F 7C */	lfs f0, 0x1f7c(r26)
/* 80615E44  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615E48  4B C5 9B F4 */	b cLib_addCalc2__FPffff
/* 80615E4C  7F A3 EB 78 */	mr r3, r29
/* 80615E50  38 9A 1F 68 */	addi r4, r26, 0x1f68
/* 80615E54  38 BA 1F 74 */	addi r5, r26, 0x1f74
/* 80615E58  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80615E5C  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80615E60  7D 89 03 A6 */	mtctr r12
/* 80615E64  4E 80 04 21 */	bctrl 
/* 80615E68  38 61 00 5C */	addi r3, r1, 0x5c
/* 80615E6C  38 80 FF FF */	li r4, -1
/* 80615E70  4B FF C0 89 */	bl __dt__5csXyzFv
/* 80615E74  48 00 22 B4 */	b lbl_80618128
lbl_80615E78:
/* 80615E78  7F A3 EB 78 */	mr r3, r29
/* 80615E7C  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80615E80  38 BA 1F 74 */	addi r5, r26, 0x1f74
/* 80615E84  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80615E88  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 80615E8C  7D 89 03 A6 */	mtctr r12
/* 80615E90  4E 80 04 21 */	bctrl 
/* 80615E94  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80615E98  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80615E9C  80 63 00 00 */	lwz r3, 0(r3)
/* 80615EA0  A8 9F 5C E0 */	lha r4, 0x5ce0(r31)
/* 80615EA4  4B 9F 65 38 */	b mDoMtx_YrotS__FPA4_fs
/* 80615EA8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80615EAC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80615EB0  C0 1F 5C D8 */	lfs f0, 0x5cd8(r31)
/* 80615EB4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80615EB8  C0 1F 5C DC */	lfs f0, 0x5cdc(r31)
/* 80615EBC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80615EC0  38 61 01 78 */	addi r3, r1, 0x178
/* 80615EC4  38 81 01 6C */	addi r4, r1, 0x16c
/* 80615EC8  4B C5 B0 24 */	b MtxPosition__FP4cXyzP4cXyz
/* 80615ECC  38 7F 5C D8 */	addi r3, r31, 0x5cd8
/* 80615ED0  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 80615ED4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80615ED8  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 80615EDC  4B C5 9B 60 */	b cLib_addCalc2__FPffff
/* 80615EE0  38 7F 5C DC */	addi r3, r31, 0x5cdc
/* 80615EE4  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 80615EE8  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80615EEC  C0 7E 00 5C */	lfs f3, 0x5c(r30)
/* 80615EF0  4B C5 9B 4C */	b cLib_addCalc2__FPffff
/* 80615EF4  38 61 01 6C */	addi r3, r1, 0x16c
/* 80615EF8  38 9A 04 D0 */	addi r4, r26, 0x4d0
/* 80615EFC  48 00 4A 61 */	bl __apl__4cXyzFRC3Vec
/* 80615F00  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80615F04  C0 21 01 6C */	lfs f1, 0x16c(r1)
/* 80615F08  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615F0C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615F10  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615F14  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615F18  4B C5 9B 24 */	b cLib_addCalc2__FPffff
/* 80615F1C  38 7F 5C 88 */	addi r3, r31, 0x5c88
/* 80615F20  C0 21 01 70 */	lfs f1, 0x170(r1)
/* 80615F24  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615F28  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615F2C  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615F30  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615F34  4B C5 9B 08 */	b cLib_addCalc2__FPffff
/* 80615F38  38 7F 5C 8C */	addi r3, r31, 0x5c8c
/* 80615F3C  C0 21 01 74 */	lfs f1, 0x174(r1)
/* 80615F40  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80615F44  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80615F48  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 80615F4C  EC 63 00 32 */	fmuls f3, f3, f0
/* 80615F50  4B C5 9A EC */	b cLib_addCalc2__FPffff
/* 80615F54  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 80615F58  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80615F5C  FC 40 08 90 */	fmr f2, f1
/* 80615F60  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80615F64  4B C5 9A D8 */	b cLib_addCalc2__FPffff
/* 80615F68  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 80615F6C  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 80615F70  40 82 00 38 */	bne lbl_80615FA8
/* 80615F74  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80615F78  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80615F7C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80615F80  FC 60 08 90 */	fmr f3, f1
/* 80615F84  48 00 4D DD */	bl __ct__4cXyzFfff
/* 80615F88  48 00 4D C9 */	bl dComIfGp_getVibration__Fv
/* 80615F8C  38 80 00 04 */	li r4, 4
/* 80615F90  38 A0 00 1F */	li r5, 0x1f
/* 80615F94  38 C1 00 F4 */	addi r6, r1, 0xf4
/* 80615F98  4B A5 9A 8C */	b StartShock__12dVibration_cFii4cXyz
/* 80615F9C  38 61 00 F4 */	addi r3, r1, 0xf4
/* 80615FA0  38 80 FF FF */	li r4, -1
/* 80615FA4  4B FF B4 65 */	bl __dt__4cXyzFv
lbl_80615FA8:
/* 80615FA8  80 1F 47 34 */	lwz r0, 0x4734(r31)
/* 80615FAC  2C 00 00 15 */	cmpwi r0, 0x15
/* 80615FB0  40 82 21 78 */	bne lbl_80618128
/* 80615FB4  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80615FB8  38 63 00 0C */	addi r3, r3, 0xc
/* 80615FBC  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80615FC0  4B D1 24 6C */	b checkPass__12J3DFrameCtrlFf
/* 80615FC4  2C 03 00 00 */	cmpwi r3, 0
/* 80615FC8  41 82 21 60 */	beq lbl_80618128
/* 80615FCC  38 00 00 04 */	li r0, 4
/* 80615FD0  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80615FD4  38 00 00 00 */	li r0, 0
/* 80615FD8  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80615FDC  38 61 01 6C */	addi r3, r1, 0x16c
/* 80615FE0  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80615FE4  48 00 49 C9 */	bl __as__4cXyzFRC4cXyz
/* 80615FE8  C0 21 01 70 */	lfs f1, 0x170(r1)
/* 80615FEC  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80615FF0  EC 01 00 2A */	fadds f0, f1, f0
/* 80615FF4  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80615FF8  7F A3 EB 78 */	mr r3, r29
/* 80615FFC  38 81 01 6C */	addi r4, r1, 0x16c
/* 80616000  38 BA 1F 74 */	addi r5, r26, 0x1f74
/* 80616004  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80616008  81 8C 01 58 */	lwz r12, 0x158(r12)
/* 8061600C  7D 89 03 A6 */	mtctr r12
/* 80616010  4E 80 04 21 */	bctrl 
/* 80616014  48 00 49 DD */	bl daPy_getPlayerActorClass__Fv
/* 80616018  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 8061601C  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80616020  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80616024  38 A0 00 04 */	li r5, 4
/* 80616028  38 C0 00 01 */	li r6, 1
/* 8061602C  38 E0 00 02 */	li r7, 2
/* 80616030  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80616034  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80616038  7D 89 03 A6 */	mtctr r12
/* 8061603C  4E 80 04 21 */	bctrl 
/* 80616040  48 00 49 B1 */	bl daPy_getPlayerActorClass__Fv
/* 80616044  38 80 00 01 */	li r4, 1
/* 80616048  38 A0 00 00 */	li r5, 0
/* 8061604C  38 C0 00 00 */	li r6, 0
/* 80616050  38 E0 00 00 */	li r7, 0
/* 80616054  48 00 49 75 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80616058  48 00 20 D0 */	b lbl_80618128
lbl_8061605C:
/* 8061605C  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616060  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80616064  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80616068  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 8061606C  4B C5 99 D0 */	b cLib_addCalc2__FPffff
/* 80616070  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80616074  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80616078  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 8061607C  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80616080  4B C5 99 BC */	b cLib_addCalc2__FPffff
/* 80616084  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 80616088  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 8061608C  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80616090  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80616094  4B C5 99 A8 */	b cLib_addCalc2__FPffff
/* 80616098  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 8061609C  48 00 4C 85 */	bl isStop__13mDoExt_morf_cFv
/* 806160A0  2C 03 00 00 */	cmpwi r3, 0
/* 806160A4  41 82 20 84 */	beq lbl_80618128
/* 806160A8  38 60 00 64 */	li r3, 0x64
/* 806160AC  B0 7F 5C 80 */	sth r3, 0x5c80(r31)
/* 806160B0  38 00 00 1E */	li r0, 0x1e
/* 806160B4  90 1F 47 38 */	stw r0, 0x4738(r31)
/* 806160B8  38 00 00 02 */	li r0, 2
/* 806160BC  98 1F 47 3C */	stb r0, 0x473c(r31)
/* 806160C0  B0 7F 47 94 */	sth r3, 0x4794(r31)
/* 806160C4  48 00 20 64 */	b lbl_80618128
lbl_806160C8:
/* 806160C8  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 806160CC  48 00 49 45 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 806160D0  2C 03 00 00 */	cmpwi r3, 0
/* 806160D4  40 82 00 68 */	bne lbl_8061613C
/* 806160D8  7F E3 FB 78 */	mr r3, r31
/* 806160DC  38 80 00 02 */	li r4, 2
/* 806160E0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFEF@ha */
/* 806160E4  38 A5 FF EF */	addi r5, r5, 0xFFEF /* 0x0000FFEF@l */
/* 806160E8  38 C0 00 00 */	li r6, 0
/* 806160EC  4B A0 58 1C */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806160F0  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 806160F4  38 80 00 02 */	li r4, 2
/* 806160F8  48 00 49 09 */	bl onCondition__11dEvt_info_cFUs
/* 806160FC  38 61 01 48 */	addi r3, r1, 0x148
/* 80616100  38 80 FF FF */	li r4, -1
/* 80616104  4B FF B3 05 */	bl __dt__4cXyzFv
/* 80616108  38 61 01 54 */	addi r3, r1, 0x154
/* 8061610C  38 80 FF FF */	li r4, -1
/* 80616110  4B FF B2 F9 */	bl __dt__4cXyzFv
/* 80616114  38 61 01 60 */	addi r3, r1, 0x160
/* 80616118  38 80 FF FF */	li r4, -1
/* 8061611C  4B FF B2 ED */	bl __dt__4cXyzFv
/* 80616120  38 61 01 6C */	addi r3, r1, 0x16c
/* 80616124  38 80 FF FF */	li r4, -1
/* 80616128  4B FF B2 E1 */	bl __dt__4cXyzFv
/* 8061612C  38 61 01 78 */	addi r3, r1, 0x178
/* 80616130  38 80 FF FF */	li r4, -1
/* 80616134  4B FF B2 D5 */	bl __dt__4cXyzFv
/* 80616138  48 00 23 E8 */	b lbl_80618520
lbl_8061613C:
/* 8061613C  38 7C 02 48 */	addi r3, r28, 0x248
/* 80616140  4B B4 B3 90 */	b Stop__9dCamera_cFv
/* 80616144  38 00 00 0B */	li r0, 0xb
/* 80616148  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 8061614C  38 00 00 00 */	li r0, 0
/* 80616150  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80616154  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80616158  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 8061615C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616160  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80616164  38 7C 02 48 */	addi r3, r28, 0x248
/* 80616168  38 80 00 03 */	li r4, 3
/* 8061616C  4B B4 CE A0 */	b SetTrimSize__9dCamera_cFl
/* 80616170  48 00 48 81 */	bl daPy_getPlayerActorClass__Fv
/* 80616174  48 00 48 69 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80616178  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 8061617C  B0 1F 5C F8 */	sth r0, 0x5cf8(r31)
/* 80616180  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616184  D0 1F 5C FC */	stfs f0, 0x5cfc(r31)
/* 80616188  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8061618C  D0 1F 5D 00 */	stfs f0, 0x5d00(r31)
/* 80616190  7F E3 FB 78 */	mr r3, r31
/* 80616194  38 80 00 19 */	li r4, 0x19
/* 80616198  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8061619C  38 A0 00 02 */	li r5, 2
/* 806161A0  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806161A4  4B FF A4 19 */	bl anm_init__FP10b_ob_classifUcf
/* 806161A8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806161AC  4B C5 17 A8 */	b cM_rndF__Ff
/* 806161B0  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 806161B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 806161B8  40 80 00 10 */	bge lbl_806161C8
/* 806161BC  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 806161C0  D0 1F 5C D4 */	stfs f0, 0x5cd4(r31)
/* 806161C4  48 00 00 0C */	b lbl_806161D0
lbl_806161C8:
/* 806161C8  C0 1E 01 98 */	lfs f0, 0x198(r30)
/* 806161CC  D0 1F 5C D4 */	stfs f0, 0x5cd4(r31)
lbl_806161D0:
/* 806161D0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806161D4  38 9F 05 38 */	addi r4, r31, 0x538
/* 806161D8  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 806161DC  4B C5 09 58 */	b __mi__4cXyzCFRC3Vec
/* 806161E0  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806161E4  48 00 4A 29 */	bl abs__4cXyzCFv
/* 806161E8  FF E0 08 90 */	fmr f31, f1
/* 806161EC  38 61 00 E8 */	addi r3, r1, 0xe8
/* 806161F0  38 80 FF FF */	li r4, -1
/* 806161F4  4B FF B2 15 */	bl __dt__4cXyzFv
/* 806161F8  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 806161FC  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80616200  40 80 00 10 */	bge lbl_80616210
/* 80616204  38 00 00 64 */	li r0, 0x64
/* 80616208  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 8061620C  48 00 1F 1C */	b lbl_80618128
lbl_80616210:
/* 80616210  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80616214  80 63 00 04 */	lwz r3, 4(r3)
/* 80616218  38 80 00 13 */	li r4, 0x13
/* 8061621C  48 00 47 2D */	bl getAnmMtx__8J3DModelFi
/* 80616220  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80616224  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80616228  4B D3 02 88 */	b PSMTXCopy
/* 8061622C  C0 1F 5D 00 */	lfs f0, 0x5d00(r31)
/* 80616230  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80616234  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616238  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8061623C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80616240  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80616244  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80616248  38 81 01 78 */	addi r4, r1, 0x178
/* 8061624C  38 BF 5C EC */	addi r5, r31, 0x5cec
/* 80616250  4B D3 0B 1C */	b PSMTXMultVec
/* 80616254  C0 1F 5C F0 */	lfs f0, 0x5cf0(r31)
/* 80616258  C0 3F 04 AC */	lfs f1, 0x4ac(r31)
/* 8061625C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80616260  40 80 00 08 */	bge lbl_80616268
/* 80616264  D0 3F 5C F0 */	stfs f1, 0x5cf0(r31)
lbl_80616268:
/* 80616268  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061626C  2C 00 00 76 */	cmpwi r0, 0x76
/* 80616270  41 80 00 1C */	blt lbl_8061628C
/* 80616274  48 00 47 7D */	bl daPy_getPlayerActorClass__Fv
/* 80616278  38 80 00 2E */	li r4, 0x2e
/* 8061627C  38 A0 00 00 */	li r5, 0
/* 80616280  38 C0 00 00 */	li r6, 0
/* 80616284  38 E0 00 00 */	li r7, 0
/* 80616288  48 00 47 41 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_8061628C:
/* 8061628C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616290  2C 00 00 4B */	cmpwi r0, 0x4b
/* 80616294  40 80 00 48 */	bge lbl_806162DC
/* 80616298  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 8061629C  54 00 07 7F */	clrlwi. r0, r0, 0x1d
/* 806162A0  40 82 00 84 */	bne lbl_80616324
/* 806162A4  38 61 00 DC */	addi r3, r1, 0xdc
/* 806162A8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806162AC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806162B0  FC 60 08 90 */	fmr f3, f1
/* 806162B4  48 00 4A AD */	bl __ct__4cXyzFfff
/* 806162B8  48 00 4A 99 */	bl dComIfGp_getVibration__Fv
/* 806162BC  38 80 00 01 */	li r4, 1
/* 806162C0  38 A0 00 1F */	li r5, 0x1f
/* 806162C4  38 C1 00 DC */	addi r6, r1, 0xdc
/* 806162C8  4B A5 97 5C */	b StartShock__12dVibration_cFii4cXyz
/* 806162CC  38 61 00 DC */	addi r3, r1, 0xdc
/* 806162D0  38 80 FF FF */	li r4, -1
/* 806162D4  4B FF B1 35 */	bl __dt__4cXyzFv
/* 806162D8  48 00 00 4C */	b lbl_80616324
lbl_806162DC:
/* 806162DC  2C 00 00 92 */	cmpwi r0, 0x92
/* 806162E0  40 80 00 44 */	bge lbl_80616324
/* 806162E4  A8 1F 47 50 */	lha r0, 0x4750(r31)
/* 806162E8  54 00 07 3F */	clrlwi. r0, r0, 0x1c
/* 806162EC  40 82 00 38 */	bne lbl_80616324
/* 806162F0  38 61 00 D0 */	addi r3, r1, 0xd0
/* 806162F4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806162F8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806162FC  FC 60 08 90 */	fmr f3, f1
/* 80616300  48 00 4A 61 */	bl __ct__4cXyzFfff
/* 80616304  48 00 4A 4D */	bl dComIfGp_getVibration__Fv
/* 80616308  38 80 00 04 */	li r4, 4
/* 8061630C  38 A0 00 1F */	li r5, 0x1f
/* 80616310  38 C1 00 D0 */	addi r6, r1, 0xd0
/* 80616314  4B A5 97 10 */	b StartShock__12dVibration_cFii4cXyz
/* 80616318  38 61 00 D0 */	addi r3, r1, 0xd0
/* 8061631C  38 80 FF FF */	li r4, -1
/* 80616320  4B FF B0 E9 */	bl __dt__4cXyzFv
lbl_80616324:
/* 80616324  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616328  2C 00 00 8A */	cmpwi r0, 0x8a
/* 8061632C  41 80 00 80 */	blt lbl_806163AC
/* 80616330  38 7F 5D 00 */	addi r3, r31, 0x5d00
/* 80616334  C0 3E 01 60 */	lfs f1, 0x160(r30)
/* 80616338  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 8061633C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80616340  4B C5 96 FC */	b cLib_addCalc2__FPffff
/* 80616344  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616348  2C 00 00 AA */	cmpwi r0, 0xaa
/* 8061634C  40 81 00 0C */	ble lbl_80616358
/* 80616350  38 00 00 64 */	li r0, 0x64
/* 80616354  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
lbl_80616358:
/* 80616358  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061635C  2C 00 00 8A */	cmpwi r0, 0x8a
/* 80616360  40 82 00 D4 */	bne lbl_80616434
/* 80616364  48 00 46 8D */	bl daPy_getPlayerActorClass__Fv
/* 80616368  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8061636C  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80616370  FC 40 08 90 */	fmr f2, f1
/* 80616374  38 A0 00 04 */	li r5, 4
/* 80616378  38 C0 00 01 */	li r6, 1
/* 8061637C  38 E0 00 02 */	li r7, 2
/* 80616380  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80616384  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80616388  7D 89 03 A6 */	mtctr r12
/* 8061638C  4E 80 04 21 */	bctrl 
/* 80616390  48 00 46 61 */	bl daPy_getPlayerActorClass__Fv
/* 80616394  38 80 00 01 */	li r4, 1
/* 80616398  38 A0 00 00 */	li r5, 0
/* 8061639C  38 C0 00 00 */	li r6, 0
/* 806163A0  38 E0 00 00 */	li r7, 0
/* 806163A4  48 00 46 25 */	bl changeDemoMode__9daPy_py_cFUliis
/* 806163A8  48 00 00 8C */	b lbl_80616434
lbl_806163AC:
/* 806163AC  A8 7F 5C F8 */	lha r3, 0x5cf8(r31)
/* 806163B0  38 03 03 00 */	addi r0, r3, 0x300
/* 806163B4  B0 1F 5C F8 */	sth r0, 0x5cf8(r31)
/* 806163B8  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806163BC  2C 00 00 0F */	cmpwi r0, 0xf
/* 806163C0  41 80 00 74 */	blt lbl_80616434
/* 806163C4  2C 00 00 1E */	cmpwi r0, 0x1e
/* 806163C8  40 82 00 48 */	bne lbl_80616410
/* 806163CC  7F E3 FB 78 */	mr r3, r31
/* 806163D0  38 80 00 1A */	li r4, 0x1a
/* 806163D4  C0 3E 00 4C */	lfs f1, 0x4c(r30)
/* 806163D8  38 A0 00 00 */	li r5, 0
/* 806163DC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806163E0  4B FF A1 DD */	bl anm_init__FP10b_ob_classifUcf
/* 806163E4  38 61 00 48 */	addi r3, r1, 0x48
/* 806163E8  3C 80 00 07 */	lis r4, 0x0007 /* 0x0007034F@ha */
/* 806163EC  38 84 03 4F */	addi r4, r4, 0x034F /* 0x0007034F@l */
/* 806163F0  48 00 48 15 */	bl __ct__10JAISoundIDFUl
/* 806163F4  7C 64 1B 78 */	mr r4, r3
/* 806163F8  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 806163FC  38 A0 FF FF */	li r5, -1
/* 80616400  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 80616404  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80616408  7D 89 03 A6 */	mtctr r12
/* 8061640C  4E 80 04 21 */	bctrl 
lbl_80616410:
/* 80616410  38 7F 5D 00 */	addi r3, r31, 0x5d00
/* 80616414  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80616418  C0 5F 5C FC */	lfs f2, 0x5cfc(r31)
/* 8061641C  4B C5 96 64 */	b cLib_addCalc0__FPfff
/* 80616420  38 7F 5C FC */	addi r3, r31, 0x5cfc
/* 80616424  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80616428  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8061642C  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 80616430  4B C5 96 0C */	b cLib_addCalc2__FPffff
lbl_80616434:
/* 80616434  7F A3 EB 78 */	mr r3, r29
/* 80616438  38 9F 5C EC */	addi r4, r31, 0x5cec
/* 8061643C  A8 BF 5C F8 */	lha r5, 0x5cf8(r31)
/* 80616440  38 C0 00 00 */	li r6, 0
/* 80616444  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80616448  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8061644C  7D 89 03 A6 */	mtctr r12
/* 80616450  4E 80 04 21 */	bctrl 
/* 80616454  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80616458  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061645C  80 63 00 00 */	lwz r3, 0(r3)
/* 80616460  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 80616464  4B 9F 5F 78 */	b mDoMtx_YrotS__FPA4_fs
/* 80616468  C0 1F 5C D4 */	lfs f0, 0x5cd4(r31)
/* 8061646C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80616470  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80616474  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80616478  C0 1E 00 9C */	lfs f0, 0x9c(r30)
/* 8061647C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80616480  38 61 01 78 */	addi r3, r1, 0x178
/* 80616484  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80616488  4B C5 AA 64 */	b MtxPosition__FP4cXyzP4cXyz
/* 8061648C  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80616490  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80616494  48 00 44 C9 */	bl __apl__4cXyzFRC3Vec
/* 80616498  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061649C  2C 00 00 00 */	cmpwi r0, 0
/* 806164A0  40 82 00 14 */	bne lbl_806164B4
/* 806164A4  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 806164A8  38 9F 5C EC */	addi r4, r31, 0x5cec
/* 806164AC  48 00 45 01 */	bl __as__4cXyzFRC4cXyz
/* 806164B0  48 00 1C 78 */	b lbl_80618128
lbl_806164B4:
/* 806164B4  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 806164B8  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 806164BC  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 806164C0  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 806164C4  4B C5 95 78 */	b cLib_addCalc2__FPffff
/* 806164C8  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 806164CC  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 806164D0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 806164D4  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 806164D8  4B C5 95 64 */	b cLib_addCalc2__FPffff
/* 806164DC  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 806164E0  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 806164E4  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 806164E8  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 806164EC  4B C5 95 50 */	b cLib_addCalc2__FPffff
/* 806164F0  48 00 1C 38 */	b lbl_80618128
lbl_806164F4:
/* 806164F4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 806164F8  48 00 45 19 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 806164FC  2C 03 00 00 */	cmpwi r3, 0
/* 80616500  40 82 00 68 */	bne lbl_80616568
/* 80616504  7F E3 FB 78 */	mr r3, r31
/* 80616508  38 80 00 02 */	li r4, 2
/* 8061650C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80616510  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80616514  38 C0 00 00 */	li r6, 0
/* 80616518  4B A0 53 F0 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 8061651C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80616520  38 80 00 02 */	li r4, 2
/* 80616524  48 00 44 DD */	bl onCondition__11dEvt_info_cFUs
/* 80616528  38 61 01 48 */	addi r3, r1, 0x148
/* 8061652C  38 80 FF FF */	li r4, -1
/* 80616530  4B FF AE D9 */	bl __dt__4cXyzFv
/* 80616534  38 61 01 54 */	addi r3, r1, 0x154
/* 80616538  38 80 FF FF */	li r4, -1
/* 8061653C  4B FF AE CD */	bl __dt__4cXyzFv
/* 80616540  38 61 01 60 */	addi r3, r1, 0x160
/* 80616544  38 80 FF FF */	li r4, -1
/* 80616548  4B FF AE C1 */	bl __dt__4cXyzFv
/* 8061654C  38 61 01 6C */	addi r3, r1, 0x16c
/* 80616550  38 80 FF FF */	li r4, -1
/* 80616554  4B FF AE B5 */	bl __dt__4cXyzFv
/* 80616558  38 61 01 78 */	addi r3, r1, 0x178
/* 8061655C  38 80 FF FF */	li r4, -1
/* 80616560  4B FF AE A9 */	bl __dt__4cXyzFv
/* 80616564  48 00 1F BC */	b lbl_80618520
lbl_80616568:
/* 80616568  38 7C 02 48 */	addi r3, r28, 0x248
/* 8061656C  4B B4 AF 64 */	b Stop__9dCamera_cFv
/* 80616570  38 00 00 15 */	li r0, 0x15
/* 80616574  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80616578  38 00 00 00 */	li r0, 0
/* 8061657C  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80616580  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80616584  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80616588  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8061658C  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80616590  38 7C 02 48 */	addi r3, r28, 0x248
/* 80616594  38 80 00 03 */	li r4, 3
/* 80616598  4B B4 CA 74 */	b SetTrimSize__9dCamera_cFl
/* 8061659C  48 00 44 55 */	bl daPy_getPlayerActorClass__Fv
/* 806165A0  48 00 44 3D */	bl changeOriginalDemo__9daPy_py_cFv
/* 806165A4  48 00 44 4D */	bl daPy_getPlayerActorClass__Fv
/* 806165A8  38 80 00 17 */	li r4, 0x17
/* 806165AC  38 A0 00 00 */	li r5, 0
/* 806165B0  38 C0 00 00 */	li r6, 0
/* 806165B4  38 E0 00 00 */	li r7, 0
/* 806165B8  48 00 44 11 */	bl changeDemoMode__9daPy_py_cFUliis
/* 806165BC  C0 1E 01 9C */	lfs f0, 0x19c(r30)
/* 806165C0  D0 1F 5C 90 */	stfs f0, 0x5c90(r31)
/* 806165C4  C0 3E 01 A0 */	lfs f1, 0x1a0(r30)
/* 806165C8  D0 3F 5C 94 */	stfs f1, 0x5c94(r31)
/* 806165CC  C0 1E 01 A4 */	lfs f0, 0x1a4(r30)
/* 806165D0  D0 1F 5C 98 */	stfs f0, 0x5c98(r31)
/* 806165D4  C0 1E 01 A8 */	lfs f0, 0x1a8(r30)
/* 806165D8  D0 1F 5C 84 */	stfs f0, 0x5c84(r31)
/* 806165DC  D0 3F 5C 88 */	stfs f1, 0x5c88(r31)
/* 806165E0  C0 1E 01 AC */	lfs f0, 0x1ac(r30)
/* 806165E4  D0 1F 5C 8C */	stfs f0, 0x5c8c(r31)
/* 806165E8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806165EC  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 806165F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 806165F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 806165F8  80 63 00 00 */	lwz r3, 0(r3)
/* 806165FC  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80616600  38 80 00 1E */	li r4, 0x1e
/* 80616604  38 A0 00 00 */	li r5, 0
/* 80616608  4B C9 8E 00 */	b bgmStop__8Z2SeqMgrFUll
/* 8061660C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80616610  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80616614  80 63 00 00 */	lwz r3, 0(r3)
/* 80616618  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8061661C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000033@ha */
/* 80616620  38 84 00 33 */	addi r4, r4, 0x0033 /* 0x01000033@l */
/* 80616624  4B C9 8E 78 */	b subBgmStart__8Z2SeqMgrFUl
/* 80616628  3C 60 80 61 */	lis r3, s_bfdel_sub__FPvPv@ha
/* 8061662C  38 63 1C 78 */	addi r3, r3, s_bfdel_sub__FPvPv@l
/* 80616630  7F E4 FB 78 */	mr r4, r31
/* 80616634  4B A0 AD 04 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80616638  38 60 00 08 */	li r3, 8
/* 8061663C  38 80 FF FF */	li r4, -1
/* 80616640  4B A1 74 5C */	b dComIfGs_onOneZoneSwitch__Fii
lbl_80616644:
/* 80616644  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616648  2C 00 01 22 */	cmpwi r0, 0x122
/* 8061664C  40 82 00 14 */	bne lbl_80616660
/* 80616650  38 00 00 96 */	li r0, 0x96
/* 80616654  B0 1F 5D 0C */	sth r0, 0x5d0c(r31)
/* 80616658  38 00 00 02 */	li r0, 2
/* 8061665C  90 1F 5D D8 */	stw r0, 0x5dd8(r31)
lbl_80616660:
/* 80616660  38 61 01 6C */	addi r3, r1, 0x16c
/* 80616664  C0 3E 01 B0 */	lfs f1, 0x1b0(r30)
/* 80616668  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 8061666C  C0 7E 01 B4 */	lfs f3, 0x1b4(r30)
/* 80616670  48 00 45 85 */	bl set__4cXyzFfff
/* 80616674  7F A3 EB 78 */	mr r3, r29
/* 80616678  38 81 01 6C */	addi r4, r1, 0x16c
/* 8061667C  38 A0 06 6A */	li r5, 0x66a
/* 80616680  38 C0 00 00 */	li r6, 0
/* 80616684  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80616688  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 8061668C  7D 89 03 A6 */	mtctr r12
/* 80616690  4E 80 04 21 */	bctrl 
/* 80616694  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616698  2C 00 01 40 */	cmpwi r0, 0x140
/* 8061669C  40 81 00 34 */	ble lbl_806166D0
/* 806166A0  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 806166A4  C0 3E 01 B8 */	lfs f1, 0x1b8(r30)
/* 806166A8  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 806166AC  C0 7E 00 BC */	lfs f3, 0xbc(r30)
/* 806166B0  C0 1F 5C D0 */	lfs f0, 0x5cd0(r31)
/* 806166B4  EC 63 00 32 */	fmuls f3, f3, f0
/* 806166B8  4B C5 93 84 */	b cLib_addCalc2__FPffff
/* 806166BC  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 806166C0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806166C4  FC 40 08 90 */	fmr f2, f1
/* 806166C8  C0 7E 01 BC */	lfs f3, 0x1bc(r30)
/* 806166CC  4B C5 93 70 */	b cLib_addCalc2__FPffff
lbl_806166D0:
/* 806166D0  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806166D4  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 806166D8  41 80 1A 50 */	blt lbl_80618128
/* 806166DC  38 00 00 16 */	li r0, 0x16
/* 806166E0  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 806166E4  38 00 00 00 */	li r0, 0
/* 806166E8  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 806166EC  C0 1E 01 C0 */	lfs f0, 0x1c0(r30)
/* 806166F0  D0 1F 5C D8 */	stfs f0, 0x5cd8(r31)
/* 806166F4  B0 1F 5D 0C */	sth r0, 0x5d0c(r31)
lbl_806166F8:
/* 806166F8  38 61 01 48 */	addi r3, r1, 0x148
/* 806166FC  38 9F 05 38 */	addi r4, r31, 0x538
/* 80616700  48 00 42 AD */	bl __as__4cXyzFRC4cXyz
/* 80616704  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 80616708  C0 1F 5C D8 */	lfs f0, 0x5cd8(r31)
/* 8061670C  EC 01 00 2A */	fadds f0, f1, f0
/* 80616710  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 80616714  A8 7F 5C 82 */	lha r3, 0x5c82(r31)
/* 80616718  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 8061671C  40 82 00 20 */	bne lbl_8061673C
/* 80616720  7C 60 1E 70 */	srawi r0, r3, 3
/* 80616724  2C 00 00 0D */	cmpwi r0, 0xd
/* 80616728  41 81 00 14 */	bgt lbl_8061673C
/* 8061672C  38 80 00 01 */	li r4, 1
/* 80616730  1C 00 01 78 */	mulli r0, r0, 0x178
/* 80616734  7C 7F 02 14 */	add r3, r31, r0
/* 80616738  98 83 0B DE */	stb r4, 0xbde(r3)
lbl_8061673C:
/* 8061673C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616740  2C 00 00 00 */	cmpwi r0, 0
/* 80616744  40 82 00 2C */	bne lbl_80616770
/* 80616748  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 8061674C  38 81 01 48 */	addi r4, r1, 0x148
/* 80616750  48 00 42 5D */	bl __as__4cXyzFRC4cXyz
/* 80616754  C0 1E 01 C4 */	lfs f0, 0x1c4(r30)
/* 80616758  D0 1F 5C 84 */	stfs f0, 0x5c84(r31)
/* 8061675C  C0 1E 01 C8 */	lfs f0, 0x1c8(r30)
/* 80616760  D0 1F 5C 88 */	stfs f0, 0x5c88(r31)
/* 80616764  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80616768  D0 1F 5C 8C */	stfs f0, 0x5c8c(r31)
/* 8061676C  48 00 00 50 */	b lbl_806167BC
lbl_80616770:
/* 80616770  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616774  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 80616778  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 8061677C  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80616780  4B C5 92 BC */	b cLib_addCalc2__FPffff
/* 80616784  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80616788  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 8061678C  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80616790  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80616794  4B C5 92 A8 */	b cLib_addCalc2__FPffff
/* 80616798  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 8061679C  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 806167A0  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 806167A4  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 806167A8  4B C5 92 94 */	b cLib_addCalc2__FPffff
/* 806167AC  38 7F 5C D8 */	addi r3, r31, 0x5cd8
/* 806167B0  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 806167B4  C0 5E 01 30 */	lfs f2, 0x130(r30)
/* 806167B8  4B C5 92 C8 */	b cLib_addCalc0__FPfff
lbl_806167BC:
/* 806167BC  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806167C0  2C 00 00 FA */	cmpwi r0, 0xfa
/* 806167C4  41 80 00 18 */	blt lbl_806167DC
/* 806167C8  38 7F 5C 88 */	addi r3, r31, 0x5c88
/* 806167CC  C0 3E 01 CC */	lfs f1, 0x1cc(r30)
/* 806167D0  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 806167D4  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 806167D8  4B C5 92 64 */	b cLib_addCalc2__FPffff
lbl_806167DC:
/* 806167DC  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806167E0  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 806167E4  40 82 19 44 */	bne lbl_80618128
/* 806167E8  38 00 00 17 */	li r0, 0x17
/* 806167EC  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 806167F0  38 00 00 00 */	li r0, 0
/* 806167F4  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
lbl_806167F8:
/* 806167F8  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 806167FC  C0 3E 01 D0 */	lfs f1, 0x1d0(r30)
/* 80616800  C0 5E 01 D4 */	lfs f2, 0x1d4(r30)
/* 80616804  C0 7E 01 D8 */	lfs f3, 0x1d8(r30)
/* 80616808  48 00 43 ED */	bl set__4cXyzFfff
/* 8061680C  38 61 01 48 */	addi r3, r1, 0x148
/* 80616810  38 9F 05 38 */	addi r4, r31, 0x538
/* 80616814  48 00 41 99 */	bl __as__4cXyzFRC4cXyz
/* 80616818  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061681C  2C 00 00 00 */	cmpwi r0, 0
/* 80616820  40 82 00 14 */	bne lbl_80616834
/* 80616824  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616828  38 81 01 48 */	addi r4, r1, 0x148
/* 8061682C  48 00 41 81 */	bl __as__4cXyzFRC4cXyz
/* 80616830  48 00 00 40 */	b lbl_80616870
lbl_80616834:
/* 80616834  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616838  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 8061683C  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80616840  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80616844  4B C5 91 F8 */	b cLib_addCalc2__FPffff
/* 80616848  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 8061684C  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 80616850  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80616854  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80616858  4B C5 91 E4 */	b cLib_addCalc2__FPffff
/* 8061685C  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 80616860  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 80616864  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80616868  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 8061686C  4B C5 91 D0 */	b cLib_addCalc2__FPffff
lbl_80616870:
/* 80616870  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616874  2C 00 00 78 */	cmpwi r0, 0x78
/* 80616878  40 82 18 B0 */	bne lbl_80618128
/* 8061687C  38 00 00 65 */	li r0, 0x65
/* 80616880  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80616884  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80616888  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8061688C  80 63 00 00 */	lwz r3, 0(r3)
/* 80616890  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80616894  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000031@ha */
/* 80616898  38 84 00 31 */	addi r4, r4, 0x0031 /* 0x01000031@l */
/* 8061689C  38 A0 00 00 */	li r5, 0
/* 806168A0  38 C0 00 00 */	li r6, 0
/* 806168A4  4B C9 87 6C */	b bgmStart__8Z2SeqMgrFUlUll
/* 806168A8  48 00 18 80 */	b lbl_80618128
lbl_806168AC:
/* 806168AC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 806168B0  48 00 41 61 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 806168B4  2C 03 00 00 */	cmpwi r3, 0
/* 806168B8  40 82 00 68 */	bne lbl_80616920
/* 806168BC  7F E3 FB 78 */	mr r3, r31
/* 806168C0  38 80 00 02 */	li r4, 2
/* 806168C4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 806168C8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 806168CC  38 C0 00 00 */	li r6, 0
/* 806168D0  4B A0 50 38 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 806168D4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 806168D8  38 80 00 02 */	li r4, 2
/* 806168DC  48 00 41 25 */	bl onCondition__11dEvt_info_cFUs
/* 806168E0  38 61 01 48 */	addi r3, r1, 0x148
/* 806168E4  38 80 FF FF */	li r4, -1
/* 806168E8  4B FF AB 21 */	bl __dt__4cXyzFv
/* 806168EC  38 61 01 54 */	addi r3, r1, 0x154
/* 806168F0  38 80 FF FF */	li r4, -1
/* 806168F4  4B FF AB 15 */	bl __dt__4cXyzFv
/* 806168F8  38 61 01 60 */	addi r3, r1, 0x160
/* 806168FC  38 80 FF FF */	li r4, -1
/* 80616900  4B FF AB 09 */	bl __dt__4cXyzFv
/* 80616904  38 61 01 6C */	addi r3, r1, 0x16c
/* 80616908  38 80 FF FF */	li r4, -1
/* 8061690C  4B FF AA FD */	bl __dt__4cXyzFv
/* 80616910  38 61 01 78 */	addi r3, r1, 0x178
/* 80616914  38 80 FF FF */	li r4, -1
/* 80616918  4B FF AA F1 */	bl __dt__4cXyzFv
/* 8061691C  48 00 1C 04 */	b lbl_80618520
lbl_80616920:
/* 80616920  38 7C 02 48 */	addi r3, r28, 0x248
/* 80616924  4B B4 AB AC */	b Stop__9dCamera_cFv
/* 80616928  38 00 00 1F */	li r0, 0x1f
/* 8061692C  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80616930  38 00 00 00 */	li r0, 0
/* 80616934  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80616938  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 8061693C  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80616940  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616944  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80616948  38 7C 02 48 */	addi r3, r28, 0x248
/* 8061694C  38 80 00 03 */	li r4, 3
/* 80616950  4B B4 C6 BC */	b SetTrimSize__9dCamera_cFl
/* 80616954  48 00 40 9D */	bl daPy_getPlayerActorClass__Fv
/* 80616958  48 00 40 85 */	bl changeOriginalDemo__9daPy_py_cFv
/* 8061695C  48 00 40 95 */	bl daPy_getPlayerActorClass__Fv
/* 80616960  38 80 00 17 */	li r4, 0x17
/* 80616964  38 A0 00 00 */	li r5, 0
/* 80616968  38 C0 00 00 */	li r6, 0
/* 8061696C  38 E0 00 00 */	li r7, 0
/* 80616970  48 00 40 59 */	bl changeDemoMode__9daPy_py_cFUliis
/* 80616974  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80616978  C0 3E 01 DC */	lfs f1, 0x1dc(r30)
/* 8061697C  C0 5E 01 E0 */	lfs f2, 0x1e0(r30)
/* 80616980  C0 7E 01 E4 */	lfs f3, 0x1e4(r30)
/* 80616984  48 00 42 71 */	bl set__4cXyzFfff
/* 80616988  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8061698C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80616990  80 63 00 00 */	lwz r3, 0(r3)
/* 80616994  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80616998  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000032@ha */
/* 8061699C  38 84 00 32 */	addi r4, r4, 0x0032 /* 0x01000032@l */
/* 806169A0  4B C9 8A FC */	b subBgmStart__8Z2SeqMgrFUl
/* 806169A4  3C 60 00 07 */	lis r3, 0x0007 /* 0x000702DD@ha */
/* 806169A8  38 63 02 DD */	addi r3, r3, 0x02DD /* 0x000702DD@l */
/* 806169AC  38 80 00 00 */	li r4, 0
/* 806169B0  38 A0 00 00 */	li r5, 0
/* 806169B4  38 C0 00 00 */	li r6, 0
/* 806169B8  48 00 41 D9 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 806169BC  38 60 00 05 */	li r3, 5
/* 806169C0  38 80 FF FF */	li r4, -1
/* 806169C4  4B A1 70 D8 */	b dComIfGs_onOneZoneSwitch__Fii
lbl_806169C8:
/* 806169C8  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806169CC  2C 00 00 28 */	cmpwi r0, 0x28
/* 806169D0  40 80 00 38 */	bge lbl_80616A08
/* 806169D4  38 61 01 6C */	addi r3, r1, 0x16c
/* 806169D8  C0 3E 01 E8 */	lfs f1, 0x1e8(r30)
/* 806169DC  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 806169E0  C0 7E 01 EC */	lfs f3, 0x1ec(r30)
/* 806169E4  48 00 42 11 */	bl set__4cXyzFfff
/* 806169E8  7F A3 EB 78 */	mr r3, r29
/* 806169EC  38 81 01 6C */	addi r4, r1, 0x16c
/* 806169F0  38 A0 2A 02 */	li r5, 0x2a02
/* 806169F4  38 C0 00 00 */	li r6, 0
/* 806169F8  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806169FC  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80616A00  7D 89 03 A6 */	mtctr r12
/* 80616A04  4E 80 04 21 */	bctrl 
lbl_80616A08:
/* 80616A08  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616A0C  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80616A10  40 82 00 10 */	bne lbl_80616A20
/* 80616A14  48 00 41 6D */	bl dComIfGp_getEvent__Fv
/* 80616A18  7F E4 FB 78 */	mr r4, r31
/* 80616A1C  48 00 41 39 */	bl startCheckSkipEdge__14dEvt_control_cFPv
lbl_80616A20:
/* 80616A20  38 61 01 48 */	addi r3, r1, 0x148
/* 80616A24  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 80616A28  48 00 3F 85 */	bl __as__4cXyzFRC4cXyz
/* 80616A2C  C0 41 01 4C */	lfs f2, 0x14c(r1)
/* 80616A30  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80616A34  C0 1F 47 A0 */	lfs f0, 0x47a0(r31)
/* 80616A38  EC 01 00 2A */	fadds f0, f1, f0
/* 80616A3C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80616A40  40 80 00 08 */	bge lbl_80616A48
/* 80616A44  D0 01 01 4C */	stfs f0, 0x14c(r1)
lbl_80616A48:
/* 80616A48  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616A4C  2C 00 00 00 */	cmpwi r0, 0
/* 80616A50  40 82 00 14 */	bne lbl_80616A64
/* 80616A54  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616A58  38 81 01 48 */	addi r4, r1, 0x148
/* 80616A5C  48 00 3F 51 */	bl __as__4cXyzFRC4cXyz
/* 80616A60  48 00 00 40 */	b lbl_80616AA0
lbl_80616A64:
/* 80616A64  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80616A68  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 80616A6C  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80616A70  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80616A74  4B C5 8F C8 */	b cLib_addCalc2__FPffff
/* 80616A78  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80616A7C  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 80616A80  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80616A84  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80616A88  4B C5 8F B4 */	b cLib_addCalc2__FPffff
/* 80616A8C  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 80616A90  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 80616A94  C0 5E 01 04 */	lfs f2, 0x104(r30)
/* 80616A98  C0 7E 00 78 */	lfs f3, 0x78(r30)
/* 80616A9C  4B C5 8F A0 */	b cLib_addCalc2__FPffff
lbl_80616AA0:
/* 80616AA0  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616AA4  2C 00 00 5A */	cmpwi r0, 0x5a
/* 80616AA8  41 80 00 24 */	blt lbl_80616ACC
/* 80616AAC  2C 00 01 04 */	cmpwi r0, 0x104
/* 80616AB0  41 81 00 1C */	bgt lbl_80616ACC
/* 80616AB4  38 7F 5C CC */	addi r3, r31, 0x5ccc
/* 80616AB8  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80616ABC  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80616AC0  C0 7F 5C D0 */	lfs f3, 0x5cd0(r31)
/* 80616AC4  4B C5 8F 78 */	b cLib_addCalc2__FPffff
/* 80616AC8  48 00 00 18 */	b lbl_80616AE0
lbl_80616ACC:
/* 80616ACC  38 7F 5C CC */	addi r3, r31, 0x5ccc
/* 80616AD0  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 80616AD4  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80616AD8  C0 7F 5C D0 */	lfs f3, 0x5cd0(r31)
/* 80616ADC  4B C5 8F 60 */	b cLib_addCalc2__FPffff
lbl_80616AE0:
/* 80616AE0  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 80616AE4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80616AE8  FC 40 08 90 */	fmr f2, f1
/* 80616AEC  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 80616AF0  4B C5 8F 4C */	b cLib_addCalc2__FPffff
/* 80616AF4  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616AF8  2C 00 01 86 */	cmpwi r0, 0x186
/* 80616AFC  40 82 00 58 */	bne lbl_80616B54
/* 80616B00  80 1F 4F 68 */	lwz r0, 0x4f68(r31)
/* 80616B04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80616B08  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616B0C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616B10  38 81 00 34 */	addi r4, r1, 0x34
/* 80616B14  4B A0 2C E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616B18  38 00 00 01 */	li r0, 1
/* 80616B1C  B0 03 05 D0 */	sth r0, 0x5d0(r3)
/* 80616B20  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80616B24  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80616B28  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80616B2C  FC 60 08 90 */	fmr f3, f1
/* 80616B30  48 00 42 31 */	bl __ct__4cXyzFfff
/* 80616B34  48 00 42 1D */	bl dComIfGp_getVibration__Fv
/* 80616B38  38 80 00 02 */	li r4, 2
/* 80616B3C  38 A0 00 1F */	li r5, 0x1f
/* 80616B40  38 C1 00 C4 */	addi r6, r1, 0xc4
/* 80616B44  4B A5 8F CC */	b StartQuake__12dVibration_cFii4cXyz
/* 80616B48  38 61 00 C4 */	addi r3, r1, 0xc4
/* 80616B4C  38 80 FF FF */	li r4, -1
/* 80616B50  4B FF A8 B9 */	bl __dt__4cXyzFv
lbl_80616B54:
/* 80616B54  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616B58  2C 00 01 86 */	cmpwi r0, 0x186
/* 80616B5C  41 80 00 14 */	blt lbl_80616B70
/* 80616B60  2C 00 02 0D */	cmpwi r0, 0x20d
/* 80616B64  41 81 00 0C */	bgt lbl_80616B70
/* 80616B68  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80616B6C  D0 1F 5C E4 */	stfs f0, 0x5ce4(r31)
lbl_80616B70:
/* 80616B70  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616B74  2C 00 01 9A */	cmpwi r0, 0x19a
/* 80616B78  40 82 00 24 */	bne lbl_80616B9C
/* 80616B7C  80 1F 4F 78 */	lwz r0, 0x4f78(r31)
/* 80616B80  90 01 00 30 */	stw r0, 0x30(r1)
/* 80616B84  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616B88  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616B8C  38 81 00 30 */	addi r4, r1, 0x30
/* 80616B90  4B A0 2C 68 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616B94  38 00 00 01 */	li r0, 1
/* 80616B98  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616B9C:
/* 80616B9C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616BA0  2C 00 01 AE */	cmpwi r0, 0x1ae
/* 80616BA4  40 82 00 24 */	bne lbl_80616BC8
/* 80616BA8  80 1F 4F 70 */	lwz r0, 0x4f70(r31)
/* 80616BAC  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80616BB0  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616BB4  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616BB8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80616BBC  4B A0 2C 3C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616BC0  38 00 00 01 */	li r0, 1
/* 80616BC4  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616BC8:
/* 80616BC8  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616BCC  2C 00 01 BD */	cmpwi r0, 0x1bd
/* 80616BD0  40 82 00 24 */	bne lbl_80616BF4
/* 80616BD4  80 1F 4F 6C */	lwz r0, 0x4f6c(r31)
/* 80616BD8  90 01 00 28 */	stw r0, 0x28(r1)
/* 80616BDC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616BE0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616BE4  38 81 00 28 */	addi r4, r1, 0x28
/* 80616BE8  4B A0 2C 10 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616BEC  38 00 00 01 */	li r0, 1
/* 80616BF0  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616BF4:
/* 80616BF4  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616BF8  2C 00 01 CC */	cmpwi r0, 0x1cc
/* 80616BFC  40 82 00 24 */	bne lbl_80616C20
/* 80616C00  80 1F 4F 7C */	lwz r0, 0x4f7c(r31)
/* 80616C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 80616C08  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616C0C  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616C10  38 81 00 24 */	addi r4, r1, 0x24
/* 80616C14  4B A0 2B E4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616C18  38 00 00 01 */	li r0, 1
/* 80616C1C  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616C20:
/* 80616C20  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616C24  2C 00 01 D6 */	cmpwi r0, 0x1d6
/* 80616C28  40 82 00 24 */	bne lbl_80616C4C
/* 80616C2C  80 1F 4F 74 */	lwz r0, 0x4f74(r31)
/* 80616C30  90 01 00 20 */	stw r0, 0x20(r1)
/* 80616C34  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616C38  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616C3C  38 81 00 20 */	addi r4, r1, 0x20
/* 80616C40  4B A0 2B B8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616C44  38 00 00 01 */	li r0, 1
/* 80616C48  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616C4C:
/* 80616C4C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616C50  2C 00 01 DB */	cmpwi r0, 0x1db
/* 80616C54  40 82 00 24 */	bne lbl_80616C78
/* 80616C58  80 1F 4F 80 */	lwz r0, 0x4f80(r31)
/* 80616C5C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80616C60  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616C64  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616C68  38 81 00 1C */	addi r4, r1, 0x1c
/* 80616C6C  4B A0 2B 8C */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616C70  38 00 00 01 */	li r0, 1
/* 80616C74  B0 03 05 D0 */	sth r0, 0x5d0(r3)
lbl_80616C78:
/* 80616C78  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616C7C  2C 00 02 3A */	cmpwi r0, 0x23a
/* 80616C80  40 82 14 A8 */	bne lbl_80618128
/* 80616C84  38 00 00 20 */	li r0, 0x20
/* 80616C88  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80616C8C  38 00 00 00 */	li r0, 0
/* 80616C90  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80616C94  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80616C98  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80616C9C  48 00 3E B1 */	bl setPlaySpeed__13mDoExt_morf_cFf
/* 80616CA0  38 61 01 78 */	addi r3, r1, 0x178
/* 80616CA4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80616CA8  FC 40 08 90 */	fmr f2, f1
/* 80616CAC  FC 60 08 90 */	fmr f3, f1
/* 80616CB0  48 00 3F 45 */	bl set__4cXyzFfff
/* 80616CB4  3C 60 00 01 */	lis r3, 0x0001 /* 0x000087FB@ha */
/* 80616CB8  38 63 87 FB */	addi r3, r3, 0x87FB /* 0x000087FB@l */
/* 80616CBC  38 81 01 78 */	addi r4, r1, 0x178
/* 80616CC0  38 A0 00 00 */	li r5, 0
/* 80616CC4  38 C0 00 00 */	li r6, 0
/* 80616CC8  48 00 3E 11 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80616CCC  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80616CD0  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80616CD4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80616CD8  FC 60 08 90 */	fmr f3, f1
/* 80616CDC  48 00 40 85 */	bl __ct__4cXyzFfff
/* 80616CE0  48 00 40 71 */	bl dComIfGp_getVibration__Fv
/* 80616CE4  38 80 00 03 */	li r4, 3
/* 80616CE8  38 A0 00 1F */	li r5, 0x1f
/* 80616CEC  38 C1 00 B8 */	addi r6, r1, 0xb8
/* 80616CF0  4B A5 8E 20 */	b StartQuake__12dVibration_cFii4cXyz
/* 80616CF4  38 61 00 B8 */	addi r3, r1, 0xb8
/* 80616CF8  38 80 FF FF */	li r4, -1
/* 80616CFC  4B FF A7 0D */	bl __dt__4cXyzFv
/* 80616D00  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616D04  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80616D08  38 00 00 01 */	li r0, 1
/* 80616D0C  B0 1F 47 52 */	sth r0, 0x4752(r31)
/* 80616D10  38 00 00 00 */	li r0, 0
/* 80616D14  B0 1F 47 54 */	sth r0, 0x4754(r31)
/* 80616D18  3B 20 00 01 */	li r25, 1
/* 80616D1C  3A E0 00 04 */	li r23, 4
/* 80616D20  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616D24  3B 03 35 90 */	addi r24, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616D28  3A C0 00 02 */	li r22, 2
lbl_80616D2C:
/* 80616D2C  38 17 4F 64 */	addi r0, r23, 0x4f64
/* 80616D30  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80616D34  90 01 00 18 */	stw r0, 0x18(r1)
/* 80616D38  7F 03 C3 78 */	mr r3, r24
/* 80616D3C  38 81 00 18 */	addi r4, r1, 0x18
/* 80616D40  4B A0 2A B8 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616D44  B2 C3 05 D0 */	sth r22, 0x5d0(r3)
/* 80616D48  3B 39 00 01 */	addi r25, r25, 1
/* 80616D4C  2C 19 00 07 */	cmpwi r25, 7
/* 80616D50  3A F7 00 04 */	addi r23, r23, 4
/* 80616D54  41 80 FF D8 */	blt lbl_80616D2C
/* 80616D58  38 00 00 96 */	li r0, 0x96
/* 80616D5C  B0 1F 5D 0C */	sth r0, 0x5d0c(r31)
/* 80616D60  38 00 00 01 */	li r0, 1
/* 80616D64  90 1F 5D D8 */	stw r0, 0x5dd8(r31)
/* 80616D68  38 00 00 00 */	li r0, 0
/* 80616D6C  B0 1F 5D 3C */	sth r0, 0x5d3c(r31)
/* 80616D70  48 00 13 B8 */	b lbl_80618128
lbl_80616D74:
/* 80616D74  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616D78  2C 00 00 1E */	cmpwi r0, 0x1e
/* 80616D7C  41 80 00 E8 */	blt lbl_80616E64
/* 80616D80  40 82 00 C4 */	bne lbl_80616E44
/* 80616D84  38 7F 5C A8 */	addi r3, r31, 0x5ca8
/* 80616D88  C0 3E 01 78 */	lfs f1, 0x178(r30)
/* 80616D8C  C0 5E 01 F0 */	lfs f2, 0x1f0(r30)
/* 80616D90  C0 7E 01 F4 */	lfs f3, 0x1f4(r30)
/* 80616D94  48 00 3E 61 */	bl set__4cXyzFfff
/* 80616D98  38 7F 5C 9C */	addi r3, r31, 0x5c9c
/* 80616D9C  C0 3E 01 F8 */	lfs f1, 0x1f8(r30)
/* 80616DA0  C0 5E 01 FC */	lfs f2, 0x1fc(r30)
/* 80616DA4  C0 7E 02 00 */	lfs f3, 0x200(r30)
/* 80616DA8  48 00 3E 4D */	bl set__4cXyzFfff
/* 80616DAC  C0 3F 5C 9C */	lfs f1, 0x5c9c(r31)
/* 80616DB0  C0 1F 5C 84 */	lfs f0, 0x5c84(r31)
/* 80616DB4  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616DB8  48 00 3D 15 */	bl fabsf__3stdFf
/* 80616DBC  D0 3F 5C B4 */	stfs f1, 0x5cb4(r31)
/* 80616DC0  C0 3F 5C A0 */	lfs f1, 0x5ca0(r31)
/* 80616DC4  C0 1F 5C 88 */	lfs f0, 0x5c88(r31)
/* 80616DC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616DCC  48 00 3D 01 */	bl fabsf__3stdFf
/* 80616DD0  D0 3F 5C B8 */	stfs f1, 0x5cb8(r31)
/* 80616DD4  C0 3F 5C A4 */	lfs f1, 0x5ca4(r31)
/* 80616DD8  C0 1F 5C 8C */	lfs f0, 0x5c8c(r31)
/* 80616DDC  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616DE0  48 00 3C ED */	bl fabsf__3stdFf
/* 80616DE4  D0 3F 5C BC */	stfs f1, 0x5cbc(r31)
/* 80616DE8  C0 3F 5C A8 */	lfs f1, 0x5ca8(r31)
/* 80616DEC  C0 1F 5C 90 */	lfs f0, 0x5c90(r31)
/* 80616DF0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616DF4  48 00 3C D9 */	bl fabsf__3stdFf
/* 80616DF8  D0 3F 5C C0 */	stfs f1, 0x5cc0(r31)
/* 80616DFC  C0 3F 5C AC */	lfs f1, 0x5cac(r31)
/* 80616E00  C0 1F 5C 94 */	lfs f0, 0x5c94(r31)
/* 80616E04  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616E08  48 00 3C C5 */	bl fabsf__3stdFf
/* 80616E0C  D0 3F 5C C4 */	stfs f1, 0x5cc4(r31)
/* 80616E10  C0 3F 5C B0 */	lfs f1, 0x5cb0(r31)
/* 80616E14  C0 1F 5C 98 */	lfs f0, 0x5c98(r31)
/* 80616E18  EC 21 00 28 */	fsubs f1, f1, f0
/* 80616E1C  48 00 3C B1 */	bl fabsf__3stdFf
/* 80616E20  D0 3F 5C C8 */	stfs f1, 0x5cc8(r31)
/* 80616E24  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80616E28  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80616E2C  48 00 3B C5 */	bl daPy_getPlayerActorClass__Fv
/* 80616E30  38 80 00 17 */	li r4, 0x17
/* 80616E34  38 A0 00 00 */	li r5, 0
/* 80616E38  38 C0 00 00 */	li r6, 0
/* 80616E3C  38 E0 00 00 */	li r7, 0
/* 80616E40  48 00 3B 89 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80616E44:
/* 80616E44  7F E3 FB 78 */	mr r3, r31
/* 80616E48  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80616E4C  4B FF EA 95 */	bl cam_3d_morf__FP10b_ob_classf
/* 80616E50  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 80616E54  C0 3E 02 04 */	lfs f1, 0x204(r30)
/* 80616E58  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80616E5C  C0 7E 02 08 */	lfs f3, 0x208(r30)
/* 80616E60  4B C5 8B DC */	b cLib_addCalc2__FPffff
lbl_80616E64:
/* 80616E64  38 7F 04 AC */	addi r3, r31, 0x4ac
/* 80616E68  C0 3F 47 A0 */	lfs f1, 0x47a0(r31)
/* 80616E6C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80616E70  C0 7E 00 4C */	lfs f3, 0x4c(r30)
/* 80616E74  4B C5 8B C8 */	b cLib_addCalc2__FPffff
/* 80616E78  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616E7C  2C 00 00 46 */	cmpwi r0, 0x46
/* 80616E80  41 81 00 0C */	bgt lbl_80616E8C
/* 80616E84  C0 1E 00 74 */	lfs f0, 0x74(r30)
/* 80616E88  D0 1F 5C E4 */	stfs f0, 0x5ce4(r31)
lbl_80616E8C:
/* 80616E8C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616E90  2C 00 00 46 */	cmpwi r0, 0x46
/* 80616E94  40 82 00 18 */	bne lbl_80616EAC
/* 80616E98  48 00 3E B9 */	bl dComIfGp_getVibration__Fv
/* 80616E9C  38 80 00 1F */	li r4, 0x1f
/* 80616EA0  4B A5 8E F4 */	b StopQuake__12dVibration_cFi
/* 80616EA4  38 00 00 00 */	li r0, 0
/* 80616EA8  B0 1F 5D 0C */	sth r0, 0x5d0c(r31)
lbl_80616EAC:
/* 80616EAC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80616EB0  48 00 3E 71 */	bl isStop__13mDoExt_morf_cFv
/* 80616EB4  2C 03 00 00 */	cmpwi r3, 0
/* 80616EB8  41 82 00 1C */	beq lbl_80616ED4
/* 80616EBC  7F E3 FB 78 */	mr r3, r31
/* 80616EC0  38 80 00 1E */	li r4, 0x1e
/* 80616EC4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80616EC8  38 A0 00 02 */	li r5, 2
/* 80616ECC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80616ED0  4B FF 96 ED */	bl anm_init__FP10b_ob_classifUcf
lbl_80616ED4:
/* 80616ED4  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616ED8  2C 00 00 78 */	cmpwi r0, 0x78
/* 80616EDC  40 82 00 0C */	bne lbl_80616EE8
/* 80616EE0  38 60 04 81 */	li r3, 0x481
/* 80616EE4  4B A0 90 E0 */	b fopMsgM_messageSetDemo__FUl
lbl_80616EE8:
/* 80616EE8  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80616EEC  2C 00 00 C8 */	cmpwi r0, 0xc8
/* 80616EF0  40 82 12 38 */	bne lbl_80618128
/* 80616EF4  38 00 00 64 */	li r0, 0x64
/* 80616EF8  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80616EFC  3B 40 00 00 */	li r26, 0
/* 80616F00  3A E0 00 00 */	li r23, 0
/* 80616F04  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 80616F08  3B 23 35 90 */	addi r25, r3, fpcSch_JudgeByID__FPvPv@l
/* 80616F0C  3A C0 00 01 */	li r22, 1
/* 80616F10  C3 FE 00 3C */	lfs f31, 0x3c(r30)
lbl_80616F14:
/* 80616F14  38 17 4F 64 */	addi r0, r23, 0x4f64
/* 80616F18  7C 1F 00 2E */	lwzx r0, r31, r0
/* 80616F1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80616F20  7F 23 CB 78 */	mr r3, r25
/* 80616F24  38 81 00 14 */	addi r4, r1, 0x14
/* 80616F28  4B A0 28 D0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80616F2C  7C 78 1B 78 */	mr r24, r3
/* 80616F30  B2 C3 05 CE */	sth r22, 0x5ce(r3)
/* 80616F34  B2 C3 05 D0 */	sth r22, 0x5d0(r3)
/* 80616F38  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 80616F3C  4B C5 0A 18 */	b cM_rndF__Ff
/* 80616F40  EC 1F 08 2A */	fadds f0, f31, f1
/* 80616F44  FC 00 00 1E */	fctiwz f0, f0
/* 80616F48  D8 01 01 88 */	stfd f0, 0x188(r1)
/* 80616F4C  80 01 01 8C */	lwz r0, 0x18c(r1)
/* 80616F50  B0 18 05 EC */	sth r0, 0x5ec(r24)
/* 80616F54  3B 5A 00 01 */	addi r26, r26, 1
/* 80616F58  2C 1A 00 08 */	cmpwi r26, 8
/* 80616F5C  3A F7 00 04 */	addi r23, r23, 4
/* 80616F60  41 80 FF B4 */	blt lbl_80616F14
/* 80616F64  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80616F68  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80616F6C  80 63 00 00 */	lwz r3, 0(r3)
/* 80616F70  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80616F74  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000030@ha */
/* 80616F78  38 84 00 30 */	addi r4, r4, 0x0030 /* 0x01000030@l */
/* 80616F7C  38 A0 00 00 */	li r5, 0
/* 80616F80  38 C0 00 00 */	li r6, 0
/* 80616F84  4B C9 80 8C */	b bgmStart__8Z2SeqMgrFUlUll
/* 80616F88  48 00 11 A0 */	b lbl_80618128
lbl_80616F8C:
/* 80616F8C  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80616F90  48 00 3A 81 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80616F94  2C 03 00 00 */	cmpwi r3, 0
/* 80616F98  40 82 00 68 */	bne lbl_80617000
/* 80616F9C  7F E3 FB 78 */	mr r3, r31
/* 80616FA0  38 80 00 02 */	li r4, 2
/* 80616FA4  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80616FA8  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80616FAC  38 C0 00 00 */	li r6, 0
/* 80616FB0  4B A0 49 58 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80616FB4  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80616FB8  38 80 00 02 */	li r4, 2
/* 80616FBC  48 00 3A 45 */	bl onCondition__11dEvt_info_cFUs
/* 80616FC0  38 61 01 48 */	addi r3, r1, 0x148
/* 80616FC4  38 80 FF FF */	li r4, -1
/* 80616FC8  4B FF A4 41 */	bl __dt__4cXyzFv
/* 80616FCC  38 61 01 54 */	addi r3, r1, 0x154
/* 80616FD0  38 80 FF FF */	li r4, -1
/* 80616FD4  4B FF A4 35 */	bl __dt__4cXyzFv
/* 80616FD8  38 61 01 60 */	addi r3, r1, 0x160
/* 80616FDC  38 80 FF FF */	li r4, -1
/* 80616FE0  4B FF A4 29 */	bl __dt__4cXyzFv
/* 80616FE4  38 61 01 6C */	addi r3, r1, 0x16c
/* 80616FE8  38 80 FF FF */	li r4, -1
/* 80616FEC  4B FF A4 1D */	bl __dt__4cXyzFv
/* 80616FF0  38 61 01 78 */	addi r3, r1, 0x178
/* 80616FF4  38 80 FF FF */	li r4, -1
/* 80616FF8  4B FF A4 11 */	bl __dt__4cXyzFv
/* 80616FFC  48 00 15 24 */	b lbl_80618520
lbl_80617000:
/* 80617000  38 7C 02 48 */	addi r3, r28, 0x248
/* 80617004  4B B4 A4 CC */	b Stop__9dCamera_cFv
/* 80617008  38 00 00 29 */	li r0, 0x29
/* 8061700C  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617010  38 00 00 00 */	li r0, 0
/* 80617014  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617018  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 8061701C  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80617020  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617024  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80617028  38 7C 02 48 */	addi r3, r28, 0x248
/* 8061702C  38 80 00 03 */	li r4, 3
/* 80617030  4B B4 BF DC */	b SetTrimSize__9dCamera_cFl
/* 80617034  48 00 39 BD */	bl daPy_getPlayerActorClass__Fv
/* 80617038  48 00 39 A5 */	bl changeOriginalDemo__9daPy_py_cFv
/* 8061703C  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617040  C0 3E 00 AC */	lfs f1, 0xac(r30)
/* 80617044  C0 5E 02 0C */	lfs f2, 0x20c(r30)
/* 80617048  FC 60 08 90 */	fmr f3, f1
/* 8061704C  48 00 3B A9 */	bl set__4cXyzFfff
/* 80617050  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80617054  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80617058  80 63 00 00 */	lwz r3, 0(r3)
/* 8061705C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80617060  38 80 00 1E */	li r4, 0x1e
/* 80617064  38 A0 00 00 */	li r5, 0
/* 80617068  4B C9 83 A0 */	b bgmStop__8Z2SeqMgrFUll
/* 8061706C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80617070  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80617074  80 63 00 00 */	lwz r3, 0(r3)
/* 80617078  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8061707C  3C 80 02 00 */	lis r4, 0x0200 /* 0x02000020@ha */
/* 80617080  38 84 00 20 */	addi r4, r4, 0x0020 /* 0x02000020@l */
/* 80617084  4B C9 8B 10 */	b bgmStreamPrepare__8Z2SeqMgrFUl
/* 80617088  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8061708C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80617090  80 63 00 00 */	lwz r3, 0(r3)
/* 80617094  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80617098  4B C9 8D 80 */	b bgmStreamPlay__8Z2SeqMgrFv
/* 8061709C  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070358@ha */
/* 806170A0  38 63 03 58 */	addi r3, r3, 0x0358 /* 0x00070358@l */
/* 806170A4  38 80 00 00 */	li r4, 0
/* 806170A8  38 A0 00 00 */	li r5, 0
/* 806170AC  38 C0 00 00 */	li r6, 0
/* 806170B0  48 00 3A E1 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 806170B4  38 61 00 44 */	addi r3, r1, 0x44
/* 806170B8  3C 80 00 07 */	lis r4, 0x0007 /* 0x00070357@ha */
/* 806170BC  38 84 03 57 */	addi r4, r4, 0x0357 /* 0x00070357@l */
/* 806170C0  48 00 3B 45 */	bl __ct__10JAISoundIDFUl
/* 806170C4  7C 64 1B 78 */	mr r4, r3
/* 806170C8  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 806170CC  38 A0 FF FF */	li r5, -1
/* 806170D0  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 806170D4  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806170D8  7D 89 03 A6 */	mtctr r12
/* 806170DC  4E 80 04 21 */	bctrl 
lbl_806170E0:
/* 806170E0  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 806170E4  2C 00 00 2B */	cmpwi r0, 0x2b
/* 806170E8  41 80 00 08 */	blt lbl_806170F0
/* 806170EC  3B 60 00 01 */	li r27, 1
lbl_806170F0:
/* 806170F0  2C 00 00 2B */	cmpwi r0, 0x2b
/* 806170F4  40 82 00 34 */	bne lbl_80617128
/* 806170F8  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806170FC  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80617100  40 82 00 28 */	bne lbl_80617128
/* 80617104  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617108  C0 3E 02 10 */	lfs f1, 0x210(r30)
/* 8061710C  C0 5E 02 14 */	lfs f2, 0x214(r30)
/* 80617110  C0 7E 02 18 */	lfs f3, 0x218(r30)
/* 80617114  48 00 3A E1 */	bl set__4cXyzFfff
/* 80617118  38 00 00 2C */	li r0, 0x2c
/* 8061711C  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617120  38 00 00 00 */	li r0, 0
/* 80617124  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
lbl_80617128:
/* 80617128  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 8061712C  2C 00 00 2A */	cmpwi r0, 0x2a
/* 80617130  41 82 00 0C */	beq lbl_8061713C
/* 80617134  2C 00 00 2B */	cmpwi r0, 0x2b
/* 80617138  40 82 00 14 */	bne lbl_8061714C
lbl_8061713C:
/* 8061713C  38 61 01 48 */	addi r3, r1, 0x148
/* 80617140  38 9F 05 38 */	addi r4, r31, 0x538
/* 80617144  48 00 38 69 */	bl __as__4cXyzFRC4cXyz
/* 80617148  48 00 00 28 */	b lbl_80617170
lbl_8061714C:
/* 8061714C  80 7F 11 80 */	lwz r3, 0x1180(r31)
/* 80617150  80 63 00 04 */	lwz r3, 4(r3)
/* 80617154  38 80 00 00 */	li r4, 0
/* 80617158  48 00 37 F1 */	bl getAnmMtx__8J3DModelFi
/* 8061715C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80617160  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80617164  4B D2 F3 4C */	b PSMTXCopy
/* 80617168  38 61 01 48 */	addi r3, r1, 0x148
/* 8061716C  48 00 37 B9 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
lbl_80617170:
/* 80617170  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617174  2C 00 00 00 */	cmpwi r0, 0
/* 80617178  40 82 00 14 */	bne lbl_8061718C
/* 8061717C  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617180  38 81 01 48 */	addi r4, r1, 0x148
/* 80617184  48 00 38 29 */	bl __as__4cXyzFRC4cXyz
/* 80617188  48 00 00 5C */	b lbl_806171E4
lbl_8061718C:
/* 8061718C  C0 3F 05 2C */	lfs f1, 0x52c(r31)
/* 80617190  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80617194  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80617198  40 80 00 0C */	bge lbl_806171A4
/* 8061719C  C3 FE 01 04 */	lfs f31, 0x104(r30)
/* 806171A0  48 00 00 08 */	b lbl_806171A8
lbl_806171A4:
/* 806171A4  C3 FE 01 84 */	lfs f31, 0x184(r30)
lbl_806171A8:
/* 806171A8  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 806171AC  C0 21 01 48 */	lfs f1, 0x148(r1)
/* 806171B0  FC 40 F8 90 */	fmr f2, f31
/* 806171B4  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 806171B8  4B C5 88 84 */	b cLib_addCalc2__FPffff
/* 806171BC  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 806171C0  C0 21 01 4C */	lfs f1, 0x14c(r1)
/* 806171C4  FC 40 F8 90 */	fmr f2, f31
/* 806171C8  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 806171CC  4B C5 88 70 */	b cLib_addCalc2__FPffff
/* 806171D0  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 806171D4  C0 21 01 50 */	lfs f1, 0x150(r1)
/* 806171D8  FC 40 F8 90 */	fmr f2, f31
/* 806171DC  C0 7E 01 64 */	lfs f3, 0x164(r30)
/* 806171E0  4B C5 88 5C */	b cLib_addCalc2__FPffff
lbl_806171E4:
/* 806171E4  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 806171E8  2C 00 00 2C */	cmpwi r0, 0x2c
/* 806171EC  40 82 0F 3C */	bne lbl_80618128
/* 806171F0  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806171F4  2C 00 00 78 */	cmpwi r0, 0x78
/* 806171F8  40 82 0F 30 */	bne lbl_80618128
/* 806171FC  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617200  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80617204  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 80617208  C0 7E 02 24 */	lfs f3, 0x224(r30)
/* 8061720C  48 00 39 E9 */	bl set__4cXyzFfff
/* 80617210  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617214  C0 3E 02 28 */	lfs f1, 0x228(r30)
/* 80617218  C0 5E 02 2C */	lfs f2, 0x22c(r30)
/* 8061721C  C0 7E 02 30 */	lfs f3, 0x230(r30)
/* 80617220  48 00 39 D5 */	bl set__4cXyzFfff
/* 80617224  38 00 00 2D */	li r0, 0x2d
/* 80617228  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 8061722C  38 00 00 00 */	li r0, 0
/* 80617230  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617234  3C 60 80 61 */	lis r3, s_hasidel_sub__FPvPv@ha
/* 80617238  38 63 59 C4 */	addi r3, r3, s_hasidel_sub__FPvPv@l
/* 8061723C  7F E4 FB 78 */	mr r4, r31
/* 80617240  4B A0 A0 F8 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80617244  3C 60 80 61 */	lis r3, s_kaisoudel_sub__FPvPv@ha
/* 80617248  38 63 1C C4 */	addi r3, r3, s_kaisoudel_sub__FPvPv@l
/* 8061724C  7F E4 FB 78 */	mr r4, r31
/* 80617250  4B A0 A0 E8 */	b fpcEx_Search__FPFPvPv_PvPv
lbl_80617254:
/* 80617254  3B 60 00 01 */	li r27, 1
/* 80617258  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061725C  2C 00 00 50 */	cmpwi r0, 0x50
/* 80617260  40 82 0E C8 */	bne lbl_80618128
/* 80617264  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617268  C0 3E 02 34 */	lfs f1, 0x234(r30)
/* 8061726C  C0 5E 02 38 */	lfs f2, 0x238(r30)
/* 80617270  C0 7E 02 3C */	lfs f3, 0x23c(r30)
/* 80617274  48 00 39 81 */	bl set__4cXyzFfff
/* 80617278  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 8061727C  C0 3E 02 40 */	lfs f1, 0x240(r30)
/* 80617280  C0 5E 02 44 */	lfs f2, 0x244(r30)
/* 80617284  C0 7E 02 48 */	lfs f3, 0x248(r30)
/* 80617288  48 00 39 6D */	bl set__4cXyzFfff
/* 8061728C  38 7F 5C A8 */	addi r3, r31, 0x5ca8
/* 80617290  C0 3E 02 4C */	lfs f1, 0x24c(r30)
/* 80617294  C0 5E 02 50 */	lfs f2, 0x250(r30)
/* 80617298  C0 7E 02 54 */	lfs f3, 0x254(r30)
/* 8061729C  48 00 39 59 */	bl set__4cXyzFfff
/* 806172A0  38 7F 5C 9C */	addi r3, r31, 0x5c9c
/* 806172A4  C0 3E 02 58 */	lfs f1, 0x258(r30)
/* 806172A8  C0 5E 02 5C */	lfs f2, 0x25c(r30)
/* 806172AC  C0 7E 02 60 */	lfs f3, 0x260(r30)
/* 806172B0  48 00 39 45 */	bl set__4cXyzFfff
/* 806172B4  C0 3F 5C 9C */	lfs f1, 0x5c9c(r31)
/* 806172B8  C0 1F 5C 84 */	lfs f0, 0x5c84(r31)
/* 806172BC  EC 21 00 28 */	fsubs f1, f1, f0
/* 806172C0  48 00 38 0D */	bl fabsf__3stdFf
/* 806172C4  D0 3F 5C B4 */	stfs f1, 0x5cb4(r31)
/* 806172C8  C0 3F 5C A0 */	lfs f1, 0x5ca0(r31)
/* 806172CC  C0 1F 5C 88 */	lfs f0, 0x5c88(r31)
/* 806172D0  EC 21 00 28 */	fsubs f1, f1, f0
/* 806172D4  48 00 37 F9 */	bl fabsf__3stdFf
/* 806172D8  D0 3F 5C B8 */	stfs f1, 0x5cb8(r31)
/* 806172DC  C0 3F 5C A4 */	lfs f1, 0x5ca4(r31)
/* 806172E0  C0 1F 5C 8C */	lfs f0, 0x5c8c(r31)
/* 806172E4  EC 21 00 28 */	fsubs f1, f1, f0
/* 806172E8  48 00 37 E5 */	bl fabsf__3stdFf
/* 806172EC  D0 3F 5C BC */	stfs f1, 0x5cbc(r31)
/* 806172F0  C0 3F 5C A8 */	lfs f1, 0x5ca8(r31)
/* 806172F4  C0 1F 5C 90 */	lfs f0, 0x5c90(r31)
/* 806172F8  EC 21 00 28 */	fsubs f1, f1, f0
/* 806172FC  48 00 37 D1 */	bl fabsf__3stdFf
/* 80617300  D0 3F 5C C0 */	stfs f1, 0x5cc0(r31)
/* 80617304  C0 3F 5C AC */	lfs f1, 0x5cac(r31)
/* 80617308  C0 1F 5C 94 */	lfs f0, 0x5c94(r31)
/* 8061730C  EC 21 00 28 */	fsubs f1, f1, f0
/* 80617310  48 00 37 BD */	bl fabsf__3stdFf
/* 80617314  D0 3F 5C C4 */	stfs f1, 0x5cc4(r31)
/* 80617318  C0 3F 5C B0 */	lfs f1, 0x5cb0(r31)
/* 8061731C  C0 1F 5C 98 */	lfs f0, 0x5c98(r31)
/* 80617320  EC 21 00 28 */	fsubs f1, f1, f0
/* 80617324  48 00 37 A9 */	bl fabsf__3stdFf
/* 80617328  D0 3F 5C C8 */	stfs f1, 0x5cc8(r31)
/* 8061732C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617330  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80617334  38 00 00 2E */	li r0, 0x2e
/* 80617338  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 8061733C  38 00 00 00 */	li r0, 0
/* 80617340  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617344  38 00 00 04 */	li r0, 4
/* 80617348  90 1F 5D D8 */	stw r0, 0x5dd8(r31)
/* 8061734C  38 00 00 D7 */	li r0, 0xd7
/* 80617350  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80617354  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80617358  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 8061735C  38 81 00 0C */	addi r4, r1, 0xc
/* 80617360  4B A0 24 98 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80617364  38 00 00 02 */	li r0, 2
/* 80617368  B0 03 05 84 */	sth r0, 0x584(r3)
/* 8061736C  38 00 00 00 */	li r0, 0
/* 80617370  B0 03 05 86 */	sth r0, 0x586(r3)
/* 80617374  3B 60 00 02 */	li r27, 2
lbl_80617378:
/* 80617378  38 61 01 78 */	addi r3, r1, 0x178
/* 8061737C  C0 3E 02 64 */	lfs f1, 0x264(r30)
/* 80617380  C0 5E 00 E0 */	lfs f2, 0xe0(r30)
/* 80617384  C0 7E 02 68 */	lfs f3, 0x268(r30)
/* 80617388  48 00 38 6D */	bl set__4cXyzFfff
/* 8061738C  7F A3 EB 78 */	mr r3, r29
/* 80617390  38 81 01 78 */	addi r4, r1, 0x178
/* 80617394  38 A0 27 10 */	li r5, 0x2710
/* 80617398  38 C0 00 00 */	li r6, 0
/* 8061739C  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 806173A0  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 806173A4  7D 89 03 A6 */	mtctr r12
/* 806173A8  4E 80 04 21 */	bctrl 
/* 806173AC  A8 7F 5C 82 */	lha r3, 0x5c82(r31)
/* 806173B0  54 60 07 7F */	clrlwi. r0, r3, 0x1d
/* 806173B4  40 82 00 20 */	bne lbl_806173D4
/* 806173B8  7C 60 1E 70 */	srawi r0, r3, 3
/* 806173BC  2C 00 00 0D */	cmpwi r0, 0xd
/* 806173C0  41 81 00 14 */	bgt lbl_806173D4
/* 806173C4  38 80 00 00 */	li r4, 0
/* 806173C8  1C 00 01 78 */	mulli r0, r0, 0x178
/* 806173CC  7C 7F 02 14 */	add r3, r31, r0
/* 806173D0  98 83 0B DE */	stb r4, 0xbde(r3)
lbl_806173D4:
/* 806173D4  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806173D8  2C 00 00 00 */	cmpwi r0, 0
/* 806173DC  40 81 00 24 */	ble lbl_80617400
/* 806173E0  7F E3 FB 78 */	mr r3, r31
/* 806173E4  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 806173E8  4B FF E4 F9 */	bl cam_3d_morf__FP10b_ob_classf
/* 806173EC  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 806173F0  C0 3E 02 6C */	lfs f1, 0x26c(r30)
/* 806173F4  C0 5E 00 00 */	lfs f2, 0(r30)
/* 806173F8  C0 7E 02 70 */	lfs f3, 0x270(r30)
/* 806173FC  4B C5 86 40 */	b cLib_addCalc2__FPffff
lbl_80617400:
/* 80617400  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617404  2C 00 01 90 */	cmpwi r0, 0x190
/* 80617408  40 82 0D 20 */	bne lbl_80618128
/* 8061740C  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617410  C0 3E 02 74 */	lfs f1, 0x274(r30)
/* 80617414  C0 5E 02 78 */	lfs f2, 0x278(r30)
/* 80617418  C0 7E 02 7C */	lfs f3, 0x27c(r30)
/* 8061741C  48 00 37 D9 */	bl set__4cXyzFfff
/* 80617420  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617424  C0 3E 02 80 */	lfs f1, 0x280(r30)
/* 80617428  C0 5E 02 84 */	lfs f2, 0x284(r30)
/* 8061742C  C0 7E 02 88 */	lfs f3, 0x288(r30)
/* 80617430  48 00 37 C5 */	bl set__4cXyzFfff
/* 80617434  38 00 00 2F */	li r0, 0x2f
/* 80617438  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 8061743C  38 00 00 00 */	li r0, 0
/* 80617440  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
lbl_80617444:
/* 80617444  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617448  2C 00 00 32 */	cmpwi r0, 0x32
/* 8061744C  41 80 00 18 */	blt lbl_80617464
/* 80617450  38 7F 5D 14 */	addi r3, r31, 0x5d14
/* 80617454  C0 3E 01 18 */	lfs f1, 0x118(r30)
/* 80617458  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8061745C  C0 7E 02 8C */	lfs f3, 0x28c(r30)
/* 80617460  4B C5 85 DC */	b cLib_addCalc2__FPffff
lbl_80617464:
/* 80617464  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617468  2C 00 00 32 */	cmpwi r0, 0x32
/* 8061746C  40 82 00 F4 */	bne lbl_80617560
/* 80617470  38 00 00 01 */	li r0, 1
/* 80617474  98 1F 05 B8 */	stb r0, 0x5b8(r31)
/* 80617478  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008491@ha */
/* 8061747C  38 63 84 91 */	addi r3, r3, 0x8491 /* 0x00008491@l */
/* 80617480  38 9F 05 38 */	addi r4, r31, 0x538
/* 80617484  38 A0 00 00 */	li r5, 0
/* 80617488  38 C0 00 00 */	li r6, 0
/* 8061748C  48 00 36 4D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80617490  7F E3 FB 78 */	mr r3, r31
/* 80617494  38 9F 05 38 */	addi r4, r31, 0x538
/* 80617498  38 A0 00 0F */	li r5, 0xf
/* 8061749C  38 C0 00 00 */	li r6, 0
/* 806174A0  38 E0 00 FF */	li r7, 0xff
/* 806174A4  4B A0 56 34 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806174A8  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007016F@ha */
/* 806174AC  38 63 01 6F */	addi r3, r3, 0x016F /* 0x0007016F@l */
/* 806174B0  38 80 00 00 */	li r4, 0
/* 806174B4  38 A0 00 00 */	li r5, 0
/* 806174B8  38 C0 00 00 */	li r6, 0
/* 806174BC  48 00 36 D5 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 806174C0  38 61 01 3C */	addi r3, r1, 0x13c
/* 806174C4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806174C8  FC 40 08 90 */	fmr f2, f1
/* 806174CC  FC 60 08 90 */	fmr f3, f1
/* 806174D0  48 00 38 91 */	bl __ct__4cXyzFfff
/* 806174D4  38 61 00 54 */	addi r3, r1, 0x54
/* 806174D8  38 9D 04 E4 */	addi r4, r29, 0x4e4
/* 806174DC  48 00 35 DD */	bl __ct__5csXyzFRC5csXyz
/* 806174E0  A8 61 00 56 */	lha r3, 0x56(r1)
/* 806174E4  38 03 8F A0 */	addi r0, r3, -28768
/* 806174E8  B0 01 00 56 */	sth r0, 0x56(r1)
/* 806174EC  38 7F 05 38 */	addi r3, r31, 0x538
/* 806174F0  38 80 00 22 */	li r4, 0x22
/* 806174F4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 806174F8  7C 05 07 74 */	extsb r5, r0
/* 806174FC  38 C1 00 54 */	addi r6, r1, 0x54
/* 80617500  38 E0 00 00 */	li r7, 0
/* 80617504  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80617508  FC 40 08 90 */	fmr f2, f1
/* 8061750C  39 00 FF FF */	li r8, -1
/* 80617510  4B A0 4B C4 */	b fopAcM_createItemForBoss__FPC4cXyziiPC5csXyzPC4cXyzffi
/* 80617514  38 61 00 AC */	addi r3, r1, 0xac
/* 80617518  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 8061751C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80617520  FC 60 08 90 */	fmr f3, f1
/* 80617524  48 00 38 3D */	bl __ct__4cXyzFfff
/* 80617528  48 00 38 29 */	bl dComIfGp_getVibration__Fv
/* 8061752C  38 80 00 05 */	li r4, 5
/* 80617530  38 A0 00 01 */	li r5, 1
/* 80617534  38 C1 00 AC */	addi r6, r1, 0xac
/* 80617538  4B A5 84 EC */	b StartShock__12dVibration_cFii4cXyz
/* 8061753C  38 61 00 AC */	addi r3, r1, 0xac
/* 80617540  38 80 FF FF */	li r4, -1
/* 80617544  4B FF 9E C5 */	bl __dt__4cXyzFv
/* 80617548  38 61 00 54 */	addi r3, r1, 0x54
/* 8061754C  38 80 FF FF */	li r4, -1
/* 80617550  4B FF A9 A9 */	bl __dt__5csXyzFv
/* 80617554  38 61 01 3C */	addi r3, r1, 0x13c
/* 80617558  38 80 FF FF */	li r4, -1
/* 8061755C  4B FF 9E AD */	bl __dt__4cXyzFv
lbl_80617560:
/* 80617560  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617564  2C 00 00 64 */	cmpwi r0, 0x64
/* 80617568  40 82 0B C0 */	bne lbl_80618128
/* 8061756C  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617570  C0 3E 02 90 */	lfs f1, 0x290(r30)
/* 80617574  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 80617578  C0 7E 02 98 */	lfs f3, 0x298(r30)
/* 8061757C  48 00 36 79 */	bl set__4cXyzFfff
/* 80617580  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617584  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 80617588  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 8061758C  C0 7E 02 A4 */	lfs f3, 0x2a4(r30)
/* 80617590  48 00 36 65 */	bl set__4cXyzFfff
/* 80617594  38 7F 5C A8 */	addi r3, r31, 0x5ca8
/* 80617598  C0 3E 02 A8 */	lfs f1, 0x2a8(r30)
/* 8061759C  C0 5E 02 94 */	lfs f2, 0x294(r30)
/* 806175A0  C0 7E 02 AC */	lfs f3, 0x2ac(r30)
/* 806175A4  48 00 36 51 */	bl set__4cXyzFfff
/* 806175A8  38 7F 5C 9C */	addi r3, r31, 0x5c9c
/* 806175AC  C0 3E 02 9C */	lfs f1, 0x29c(r30)
/* 806175B0  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 806175B4  C0 7E 02 A4 */	lfs f3, 0x2a4(r30)
/* 806175B8  48 00 36 3D */	bl set__4cXyzFfff
/* 806175BC  C0 3F 5C 9C */	lfs f1, 0x5c9c(r31)
/* 806175C0  C0 1F 5C 84 */	lfs f0, 0x5c84(r31)
/* 806175C4  EC 21 00 28 */	fsubs f1, f1, f0
/* 806175C8  48 00 35 05 */	bl fabsf__3stdFf
/* 806175CC  D0 3F 5C B4 */	stfs f1, 0x5cb4(r31)
/* 806175D0  C0 3F 5C A0 */	lfs f1, 0x5ca0(r31)
/* 806175D4  C0 1F 5C 88 */	lfs f0, 0x5c88(r31)
/* 806175D8  EC 21 00 28 */	fsubs f1, f1, f0
/* 806175DC  48 00 34 F1 */	bl fabsf__3stdFf
/* 806175E0  D0 3F 5C B8 */	stfs f1, 0x5cb8(r31)
/* 806175E4  C0 3F 5C A4 */	lfs f1, 0x5ca4(r31)
/* 806175E8  C0 1F 5C 8C */	lfs f0, 0x5c8c(r31)
/* 806175EC  EC 21 00 28 */	fsubs f1, f1, f0
/* 806175F0  48 00 34 DD */	bl fabsf__3stdFf
/* 806175F4  D0 3F 5C BC */	stfs f1, 0x5cbc(r31)
/* 806175F8  C0 3F 5C A8 */	lfs f1, 0x5ca8(r31)
/* 806175FC  C0 1F 5C 90 */	lfs f0, 0x5c90(r31)
/* 80617600  EC 21 00 28 */	fsubs f1, f1, f0
/* 80617604  48 00 34 C9 */	bl fabsf__3stdFf
/* 80617608  D0 3F 5C C0 */	stfs f1, 0x5cc0(r31)
/* 8061760C  C0 3F 5C AC */	lfs f1, 0x5cac(r31)
/* 80617610  C0 1F 5C 94 */	lfs f0, 0x5c94(r31)
/* 80617614  EC 21 00 28 */	fsubs f1, f1, f0
/* 80617618  48 00 34 B5 */	bl fabsf__3stdFf
/* 8061761C  D0 3F 5C C4 */	stfs f1, 0x5cc4(r31)
/* 80617620  C0 3F 5C B0 */	lfs f1, 0x5cb0(r31)
/* 80617624  C0 1F 5C 98 */	lfs f0, 0x5c98(r31)
/* 80617628  EC 21 00 28 */	fsubs f1, f1, f0
/* 8061762C  48 00 34 A1 */	bl fabsf__3stdFf
/* 80617630  D0 3F 5C C8 */	stfs f1, 0x5cc8(r31)
/* 80617634  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617638  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 8061763C  38 00 00 30 */	li r0, 0x30
/* 80617640  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617644  38 00 00 00 */	li r0, 0
/* 80617648  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 8061764C  48 00 0A DC */	b lbl_80618128
lbl_80617650:
/* 80617650  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617654  2C 00 00 3C */	cmpwi r0, 0x3c
/* 80617658  41 80 01 B4 */	blt lbl_8061780C
/* 8061765C  C0 1E 01 BC */	lfs f0, 0x1bc(r30)
/* 80617660  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80617664  7F E3 FB 78 */	mr r3, r31
/* 80617668  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 8061766C  4B FF E2 75 */	bl cam_3d_morf__FP10b_ob_classf
/* 80617670  A8 7F 5C 82 */	lha r3, 0x5c82(r31)
/* 80617674  54 60 07 BF */	clrlwi. r0, r3, 0x1e
/* 80617678  40 82 01 94 */	bne lbl_8061780C
/* 8061767C  38 03 FF C4 */	addi r0, r3, -60
/* 80617680  7C 1A 16 70 */	srawi r26, r0, 2
/* 80617684  2C 1A 00 13 */	cmpwi r26, 0x13
/* 80617688  40 80 01 84 */	bge lbl_8061780C
/* 8061768C  38 00 00 01 */	li r0, 1
/* 80617690  1F 3A 01 78 */	mulli r25, r26, 0x178
/* 80617694  7C 7F CA 14 */	add r3, r31, r25
/* 80617698  98 03 05 FF */	stb r0, 0x5ff(r3)
/* 8061769C  C0 23 05 E8 */	lfs f1, 0x5e8(r3)
/* 806176A0  38 61 01 30 */	addi r3, r1, 0x130
/* 806176A4  FC 40 08 90 */	fmr f2, f1
/* 806176A8  FC 60 08 90 */	fmr f3, f1
/* 806176AC  48 00 36 B5 */	bl __ct__4cXyzFfff
/* 806176B0  2C 1A 00 00 */	cmpwi r26, 0
/* 806176B4  40 82 00 A8 */	bne lbl_8061775C
/* 806176B8  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070373@ha */
/* 806176BC  38 63 03 73 */	addi r3, r3, 0x0373 /* 0x00070373@l */
/* 806176C0  38 80 00 00 */	li r4, 0
/* 806176C4  38 A0 00 00 */	li r5, 0
/* 806176C8  38 C0 00 00 */	li r6, 0
/* 806176CC  48 00 34 C5 */	bl mDoAud_seStart__FUlPC3VecUlSc
/* 806176D0  3A A0 00 00 */	li r21, 0
/* 806176D4  3A E0 00 00 */	li r23, 0
/* 806176D8  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 806176DC  3A C3 35 90 */	addi r22, r3, fpcSch_JudgeByID__FPvPv@l
lbl_806176E0:
/* 806176E0  38 17 4F 64 */	addi r0, r23, 0x4f64
/* 806176E4  7C 1F 00 2E */	lwzx r0, r31, r0
/* 806176E8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806176EC  7E C3 B3 78 */	mr r3, r22
/* 806176F0  38 81 00 10 */	addi r4, r1, 0x10
/* 806176F4  4B A0 21 04 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 806176F8  4B A0 25 84 */	b fopAcM_delete__FP10fopAc_ac_c
/* 806176FC  3A B5 00 01 */	addi r21, r21, 1
/* 80617700  2C 15 00 08 */	cmpwi r21, 8
/* 80617704  3A F7 00 04 */	addi r23, r23, 4
/* 80617708  41 80 FF D8 */	blt lbl_806176E0
/* 8061770C  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008627@ha */
/* 80617710  38 63 86 27 */	addi r3, r3, 0x8627 /* 0x00008627@l */
/* 80617714  3A D9 05 D4 */	addi r22, r25, 0x5d4
/* 80617718  7E DF B2 14 */	add r22, r31, r22
/* 8061771C  7E C4 B3 78 */	mr r4, r22
/* 80617720  38 A0 00 00 */	li r5, 0
/* 80617724  38 C1 01 30 */	addi r6, r1, 0x130
/* 80617728  48 00 33 B1 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 8061772C  57 57 10 3A */	slwi r23, r26, 2
/* 80617730  7C 9F BA 14 */	add r4, r31, r23
/* 80617734  90 64 5D 40 */	stw r3, 0x5d40(r4)
/* 80617738  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000862A@ha */
/* 8061773C  38 63 86 2A */	addi r3, r3, 0x862A /* 0x0000862A@l */
/* 80617740  7E C4 B3 78 */	mr r4, r22
/* 80617744  38 A0 00 00 */	li r5, 0
/* 80617748  38 C1 01 30 */	addi r6, r1, 0x130
/* 8061774C  48 00 33 8D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80617750  7C 9F BA 14 */	add r4, r31, r23
/* 80617754  90 64 5D 8C */	stw r3, 0x5d8c(r4)
/* 80617758  48 00 00 A8 */	b lbl_80617800
lbl_8061775C:
/* 8061775C  2C 1A 00 12 */	cmpwi r26, 0x12
/* 80617760  40 82 00 54 */	bne lbl_806177B4
/* 80617764  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008628@ha */
/* 80617768  38 63 86 28 */	addi r3, r3, 0x8628 /* 0x00008628@l */
/* 8061776C  3A D9 05 D4 */	addi r22, r25, 0x5d4
/* 80617770  7E DF B2 14 */	add r22, r31, r22
/* 80617774  7E C4 B3 78 */	mr r4, r22
/* 80617778  38 A0 00 00 */	li r5, 0
/* 8061777C  38 C1 01 30 */	addi r6, r1, 0x130
/* 80617780  48 00 33 59 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80617784  57 57 10 3A */	slwi r23, r26, 2
/* 80617788  7C 9F BA 14 */	add r4, r31, r23
/* 8061778C  90 64 5D 40 */	stw r3, 0x5d40(r4)
/* 80617790  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000862B@ha */
/* 80617794  38 63 86 2B */	addi r3, r3, 0x862B /* 0x0000862B@l */
/* 80617798  7E C4 B3 78 */	mr r4, r22
/* 8061779C  38 A0 00 00 */	li r5, 0
/* 806177A0  38 C1 01 30 */	addi r6, r1, 0x130
/* 806177A4  48 00 33 35 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 806177A8  7C 9F BA 14 */	add r4, r31, r23
/* 806177AC  90 64 5D 8C */	stw r3, 0x5d8c(r4)
/* 806177B0  48 00 00 50 */	b lbl_80617800
lbl_806177B4:
/* 806177B4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008626@ha */
/* 806177B8  38 63 86 26 */	addi r3, r3, 0x8626 /* 0x00008626@l */
/* 806177BC  3A D9 05 D4 */	addi r22, r25, 0x5d4
/* 806177C0  7E DF B2 14 */	add r22, r31, r22
/* 806177C4  7E C4 B3 78 */	mr r4, r22
/* 806177C8  38 A0 00 00 */	li r5, 0
/* 806177CC  38 C1 01 30 */	addi r6, r1, 0x130
/* 806177D0  48 00 33 09 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 806177D4  57 57 10 3A */	slwi r23, r26, 2
/* 806177D8  7C 9F BA 14 */	add r4, r31, r23
/* 806177DC  90 64 5D 40 */	stw r3, 0x5d40(r4)
/* 806177E0  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008629@ha */
/* 806177E4  38 63 86 29 */	addi r3, r3, 0x8629 /* 0x00008629@l */
/* 806177E8  7E C4 B3 78 */	mr r4, r22
/* 806177EC  38 A0 00 00 */	li r5, 0
/* 806177F0  38 C1 01 30 */	addi r6, r1, 0x130
/* 806177F4  48 00 32 E5 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 806177F8  7C 9F BA 14 */	add r4, r31, r23
/* 806177FC  90 64 5D 8C */	stw r3, 0x5d8c(r4)
lbl_80617800:
/* 80617800  38 61 01 30 */	addi r3, r1, 0x130
/* 80617804  38 80 FF FF */	li r4, -1
/* 80617808  4B FF 9C 01 */	bl __dt__4cXyzFv
lbl_8061780C:
/* 8061780C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617810  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80617814  40 82 09 14 */	bne lbl_80618128
/* 80617818  38 00 00 31 */	li r0, 0x31
/* 8061781C  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617820  38 00 00 00 */	li r0, 0
/* 80617824  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617828  3A A0 00 00 */	li r21, 0
/* 8061782C  3B 20 00 00 */	li r25, 0
lbl_80617830:
/* 80617830  3A E0 00 00 */	li r23, 0
/* 80617834  3B 40 00 00 */	li r26, 0
/* 80617838  7E DF CA 14 */	add r22, r31, r25
lbl_8061783C:
/* 8061783C  38 1A 5D 40 */	addi r0, r26, 0x5d40
/* 80617840  7C 76 00 2E */	lwzx r3, r22, r0
/* 80617844  28 03 00 00 */	cmplwi r3, 0
/* 80617848  41 82 00 08 */	beq lbl_80617850
/* 8061784C  48 00 32 5D */	bl becomeDeleteEmitter__14JPABaseEmitterFv
lbl_80617850:
/* 80617850  3A F7 00 01 */	addi r23, r23, 1
/* 80617854  2C 17 00 02 */	cmpwi r23, 2
/* 80617858  3B 5A 00 4C */	addi r26, r26, 0x4c
/* 8061785C  41 80 FF E0 */	blt lbl_8061783C
/* 80617860  3A B5 00 01 */	addi r21, r21, 1
/* 80617864  2C 15 00 13 */	cmpwi r21, 0x13
/* 80617868  3B 39 00 04 */	addi r25, r25, 4
/* 8061786C  41 80 FF C4 */	blt lbl_80617830
/* 80617870  88 18 00 F0 */	lbz r0, 0xf0(r24)
/* 80617874  7C 00 07 75 */	extsb. r0, r0
/* 80617878  40 82 00 30 */	bne lbl_806178A8
/* 8061787C  38 78 00 F4 */	addi r3, r24, 0xf4
/* 80617880  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80617884  FC 40 08 90 */	fmr f2, f1
/* 80617888  FC 60 08 90 */	fmr f3, f1
/* 8061788C  48 00 34 D5 */	bl __ct__4cXyzFfff
/* 80617890  3C 80 80 61 */	lis r4, __dt__4cXyzFv@ha
/* 80617894  38 84 14 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 80617898  38 B8 00 E4 */	addi r5, r24, 0xe4
/* 8061789C  4B FF 8C 5D */	bl __register_global_object
/* 806178A0  38 00 00 01 */	li r0, 1
/* 806178A4  98 18 00 F0 */	stb r0, 0xf0(r24)
lbl_806178A8:
/* 806178A8  88 18 01 0C */	lbz r0, 0x10c(r24)
/* 806178AC  7C 00 07 75 */	extsb. r0, r0
/* 806178B0  40 82 00 30 */	bne lbl_806178E0
/* 806178B4  38 78 01 10 */	addi r3, r24, 0x110
/* 806178B8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 806178BC  FC 40 08 90 */	fmr f2, f1
/* 806178C0  FC 60 08 90 */	fmr f3, f1
/* 806178C4  48 00 34 9D */	bl __ct__4cXyzFfff
/* 806178C8  3C 80 80 61 */	lis r4, __dt__4cXyzFv@ha
/* 806178CC  38 84 14 08 */	addi r4, r4, __dt__4cXyzFv@l
/* 806178D0  38 B8 01 00 */	addi r5, r24, 0x100
/* 806178D4  4B FF 8C 25 */	bl __register_global_object
/* 806178D8  38 00 00 01 */	li r0, 1
/* 806178DC  98 18 01 0C */	stb r0, 0x10c(r24)
lbl_806178E0:
/* 806178E0  3A A0 00 00 */	li r21, 0
/* 806178E4  3B 20 00 00 */	li r25, 0
/* 806178E8  3C 60 80 62 */	lis r3, ex_eff@ha
/* 806178EC  3A E3 B1 68 */	addi r23, r3, ex_eff@l
lbl_806178F0:
/* 806178F0  7C 77 CA 2E */	lhzx r3, r23, r25
/* 806178F4  38 98 00 F4 */	addi r4, r24, 0xf4
/* 806178F8  38 A0 00 00 */	li r5, 0
/* 806178FC  38 D8 01 10 */	addi r6, r24, 0x110
/* 80617900  48 00 31 D9 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80617904  3A B5 00 01 */	addi r21, r21, 1
/* 80617908  2C 15 00 05 */	cmpwi r21, 5
/* 8061790C  3B 39 00 02 */	addi r25, r25, 2
/* 80617910  41 80 FF E0 */	blt lbl_806178F0
/* 80617914  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617918  C0 3E 02 B0 */	lfs f1, 0x2b0(r30)
/* 8061791C  C0 5E 02 B4 */	lfs f2, 0x2b4(r30)
/* 80617920  C0 7E 02 B8 */	lfs f3, 0x2b8(r30)
/* 80617924  48 00 32 D1 */	bl set__4cXyzFfff
/* 80617928  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 8061792C  C0 3E 02 BC */	lfs f1, 0x2bc(r30)
/* 80617930  C0 5E 02 C0 */	lfs f2, 0x2c0(r30)
/* 80617934  C0 7E 02 C4 */	lfs f3, 0x2c4(r30)
/* 80617938  48 00 32 BD */	bl set__4cXyzFfff
/* 8061793C  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 80617940  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80617944  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617948  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 8061794C  38 61 00 40 */	addi r3, r1, 0x40
/* 80617950  3C 80 00 07 */	lis r4, 0x0007 /* 0x0007027E@ha */
/* 80617954  38 84 02 7E */	addi r4, r4, 0x027E /* 0x0007027E@l */
/* 80617958  48 00 32 AD */	bl __ct__10JAISoundIDFUl
/* 8061795C  7C 64 1B 78 */	mr r4, r3
/* 80617960  38 7F 59 3C */	addi r3, r31, 0x593c
/* 80617964  38 A0 00 00 */	li r5, 0
/* 80617968  38 C0 00 00 */	li r6, 0
/* 8061796C  81 9F 59 3C */	lwz r12, 0x593c(r31)
/* 80617970  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80617974  7D 89 03 A6 */	mtctr r12
/* 80617978  4E 80 04 21 */	bctrl 
/* 8061797C  48 00 07 AC */	b lbl_80618128
lbl_80617980:
/* 80617980  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617984  2C 00 00 64 */	cmpwi r0, 0x64
/* 80617988  41 80 00 2C */	blt lbl_806179B4
/* 8061798C  38 7F 5C CC */	addi r3, r31, 0x5ccc
/* 80617990  C0 3E 00 94 */	lfs f1, 0x94(r30)
/* 80617994  C0 5E 00 04 */	lfs f2, 4(r30)
/* 80617998  C0 7F 5C D0 */	lfs f3, 0x5cd0(r31)
/* 8061799C  4B C5 80 A0 */	b cLib_addCalc2__FPffff
/* 806179A0  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 806179A4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 806179A8  FC 40 08 90 */	fmr f2, f1
/* 806179AC  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 806179B0  4B C5 80 8C */	b cLib_addCalc2__FPffff
lbl_806179B4:
/* 806179B4  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 806179B8  2C 00 00 64 */	cmpwi r0, 0x64
/* 806179BC  40 82 00 68 */	bne lbl_80617A24
/* 806179C0  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806179C4  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806179C8  80 63 00 00 */	lwz r3, 0(r3)
/* 806179CC  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 806179D0  4B 9F 4A 0C */	b mDoMtx_YrotS__FPA4_fs
/* 806179D4  38 61 01 78 */	addi r3, r1, 0x178
/* 806179D8  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 806179DC  C0 5E 00 8C */	lfs f2, 0x8c(r30)
/* 806179E0  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 806179E4  48 00 32 11 */	bl set__4cXyzFfff
/* 806179E8  38 61 01 78 */	addi r3, r1, 0x178
/* 806179EC  38 81 01 6C */	addi r4, r1, 0x16c
/* 806179F0  4B C5 94 FC */	b MtxPosition__FP4cXyzP4cXyz
/* 806179F4  38 61 01 6C */	addi r3, r1, 0x16c
/* 806179F8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806179FC  48 00 2F 61 */	bl __apl__4cXyzFRC3Vec
/* 80617A00  38 60 02 F2 */	li r3, 0x2f2
/* 80617A04  38 80 00 00 */	li r4, 0
/* 80617A08  38 A1 01 6C */	addi r5, r1, 0x16c
/* 80617A0C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80617A10  7C 06 07 74 */	extsb r6, r0
/* 80617A14  38 E0 00 00 */	li r7, 0
/* 80617A18  39 00 00 00 */	li r8, 0
/* 80617A1C  39 20 FF FF */	li r9, -1
/* 80617A20  4B A0 23 78 */	b fopAcM_create__FsUlPC4cXyziPC5csXyzPC4cXyzSc
lbl_80617A24:
/* 80617A24  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617A28  2C 00 00 78 */	cmpwi r0, 0x78
/* 80617A2C  40 82 00 2C */	bne lbl_80617A58
/* 80617A30  38 00 02 F2 */	li r0, 0x2f2
/* 80617A34  B0 01 00 0A */	sth r0, 0xa(r1)
/* 80617A38  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80617A3C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80617A40  38 81 00 0A */	addi r4, r1, 0xa
/* 80617A44  4B A0 1D B4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80617A48  28 03 00 00 */	cmplwi r3, 0
/* 80617A4C  41 82 00 0C */	beq lbl_80617A58
/* 80617A50  38 00 00 00 */	li r0, 0
/* 80617A54  98 03 05 9B */	stb r0, 0x59b(r3)
lbl_80617A58:
/* 80617A58  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617A5C  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80617A60  41 80 06 C8 */	blt lbl_80618128
/* 80617A64  C0 1E 02 C8 */	lfs f0, 0x2c8(r30)
/* 80617A68  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80617A6C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617A70  2C 00 00 B4 */	cmpwi r0, 0xb4
/* 80617A74  40 82 00 0C */	bne lbl_80617A80
/* 80617A78  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80617A7C  D0 1F 5C D8 */	stfs f0, 0x5cd8(r31)
lbl_80617A80:
/* 80617A80  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80617A84  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80617A88  80 63 00 00 */	lwz r3, 0(r3)
/* 80617A8C  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80617A90  4B 9F 49 4C */	b mDoMtx_YrotS__FPA4_fs
/* 80617A94  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617A98  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80617A9C  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80617AA0  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80617AA4  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 80617AA8  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80617AAC  38 61 01 78 */	addi r3, r1, 0x178
/* 80617AB0  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80617AB4  4B C5 94 38 */	b MtxPosition__FP4cXyzP4cXyz
/* 80617AB8  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617ABC  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80617AC0  48 00 2E 9D */	bl __apl__4cXyzFRC3Vec
/* 80617AC4  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617AC8  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80617ACC  48 00 2E E1 */	bl __as__4cXyzFRC4cXyz
/* 80617AD0  C0 3F 5C 94 */	lfs f1, 0x5c94(r31)
/* 80617AD4  C0 1E 00 44 */	lfs f0, 0x44(r30)
/* 80617AD8  EC 01 00 2A */	fadds f0, f1, f0
/* 80617ADC  D0 1F 5C 94 */	stfs f0, 0x5c94(r31)
/* 80617AE0  38 61 01 78 */	addi r3, r1, 0x178
/* 80617AE4  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80617AE8  C0 5F 5C D8 */	lfs f2, 0x5cd8(r31)
/* 80617AEC  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 80617AF0  48 00 31 05 */	bl set__4cXyzFfff
/* 80617AF4  38 61 01 78 */	addi r3, r1, 0x178
/* 80617AF8  38 81 01 6C */	addi r4, r1, 0x16c
/* 80617AFC  4B C5 93 F0 */	b MtxPosition__FP4cXyzP4cXyz
/* 80617B00  38 61 01 6C */	addi r3, r1, 0x16c
/* 80617B04  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80617B08  48 00 2E 55 */	bl __apl__4cXyzFRC3Vec
/* 80617B0C  38 7F 5C D8 */	addi r3, r31, 0x5cd8
/* 80617B10  C0 3E 02 CC */	lfs f1, 0x2cc(r30)
/* 80617B14  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80617B18  C0 7E 00 50 */	lfs f3, 0x50(r30)
/* 80617B1C  4B C5 7F 20 */	b cLib_addCalc2__FPffff
/* 80617B20  38 00 02 F2 */	li r0, 0x2f2
/* 80617B24  B0 01 00 08 */	sth r0, 8(r1)
/* 80617B28  3C 60 80 02 */	lis r3, fpcSch_JudgeForPName__FPvPv@ha
/* 80617B2C  38 63 35 78 */	addi r3, r3, fpcSch_JudgeForPName__FPvPv@l
/* 80617B30  38 81 00 08 */	addi r4, r1, 8
/* 80617B34  4B A0 1C C4 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 80617B38  7C 75 1B 79 */	or. r21, r3, r3
/* 80617B3C  41 82 00 28 */	beq lbl_80617B64
/* 80617B40  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80617B44  38 81 01 6C */	addi r4, r1, 0x16c
/* 80617B48  48 00 2F 45 */	bl __ct__4cXyzFRC4cXyz
/* 80617B4C  7E A3 AB 78 */	mr r3, r21
/* 80617B50  38 81 00 A0 */	addi r4, r1, 0xa0
/* 80617B54  48 00 2F 1D */	bl setCurrentPos__16obj_ystone_classF4cXyz
/* 80617B58  38 61 00 A0 */	addi r3, r1, 0xa0
/* 80617B5C  38 80 FF FF */	li r4, -1
/* 80617B60  4B FF 98 A9 */	bl __dt__4cXyzFv
lbl_80617B64:
/* 80617B64  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617B68  2C 00 01 17 */	cmpwi r0, 0x117
/* 80617B6C  40 82 00 64 */	bne lbl_80617BD0
/* 80617B70  38 61 01 24 */	addi r3, r1, 0x124
/* 80617B74  C0 3E 02 D0 */	lfs f1, 0x2d0(r30)
/* 80617B78  C0 5E 02 D4 */	lfs f2, 0x2d4(r30)
/* 80617B7C  C0 7E 02 D8 */	lfs f3, 0x2d8(r30)
/* 80617B80  48 00 31 E1 */	bl __ct__4cXyzFfff
/* 80617B84  38 61 00 4C */	addi r3, r1, 0x4c
/* 80617B88  38 80 00 00 */	li r4, 0
/* 80617B8C  38 A0 00 00 */	li r5, 0
/* 80617B90  38 C0 00 00 */	li r6, 0
/* 80617B94  4B C4 F8 60 */	b __ct__5csXyzFsss
/* 80617B98  38 61 01 24 */	addi r3, r1, 0x124
/* 80617B9C  38 81 00 4C */	addi r4, r1, 0x4c
/* 80617BA0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80617BA4  7C 05 07 74 */	extsb r5, r0
/* 80617BA8  38 C0 00 00 */	li r6, 0
/* 80617BAC  38 E0 00 01 */	li r7, 1
/* 80617BB0  39 00 00 02 */	li r8, 2
/* 80617BB4  4B A0 4D A8 */	b fopAcM_createWarpHole__FPC4cXyzPC5csXyziUcUcUc
/* 80617BB8  38 61 00 4C */	addi r3, r1, 0x4c
/* 80617BBC  38 80 FF FF */	li r4, -1
/* 80617BC0  4B FF A3 39 */	bl __dt__5csXyzFv
/* 80617BC4  38 61 01 24 */	addi r3, r1, 0x124
/* 80617BC8  38 80 FF FF */	li r4, -1
/* 80617BCC  4B FF 98 3D */	bl __dt__4cXyzFv
lbl_80617BD0:
/* 80617BD0  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617BD4  2C 00 01 22 */	cmpwi r0, 0x122
/* 80617BD8  40 82 05 50 */	bne lbl_80618128
/* 80617BDC  38 00 00 64 */	li r0, 0x64
/* 80617BE0  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617BE4  48 00 2C F9 */	bl dComIfGs_onStageBossEnemy__Fv
/* 80617BE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80617BEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80617BF0  A8 1F 04 B8 */	lha r0, 0x4b8(r31)
/* 80617BF4  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80617BF8  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80617BFC  7C 05 07 74 */	extsb r5, r0
/* 80617C00  4B A1 D6 00 */	b onSwitch__10dSv_info_cFii
/* 80617C04  7F E3 FB 78 */	mr r3, r31
/* 80617C08  4B A0 20 74 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80617C0C  48 00 05 1C */	b lbl_80618128
lbl_80617C10:
/* 80617C10  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80617C14  48 00 2D FD */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80617C18  2C 03 00 00 */	cmpwi r3, 0
/* 80617C1C  40 82 00 68 */	bne lbl_80617C84
/* 80617C20  7F E3 FB 78 */	mr r3, r31
/* 80617C24  38 80 00 02 */	li r4, 2
/* 80617C28  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80617C2C  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 80617C30  38 C0 00 00 */	li r6, 0
/* 80617C34  4B A0 3C D4 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80617C38  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80617C3C  38 80 00 02 */	li r4, 2
/* 80617C40  48 00 2D C1 */	bl onCondition__11dEvt_info_cFUs
/* 80617C44  38 61 01 48 */	addi r3, r1, 0x148
/* 80617C48  38 80 FF FF */	li r4, -1
/* 80617C4C  4B FF 97 BD */	bl __dt__4cXyzFv
/* 80617C50  38 61 01 54 */	addi r3, r1, 0x154
/* 80617C54  38 80 FF FF */	li r4, -1
/* 80617C58  4B FF 97 B1 */	bl __dt__4cXyzFv
/* 80617C5C  38 61 01 60 */	addi r3, r1, 0x160
/* 80617C60  38 80 FF FF */	li r4, -1
/* 80617C64  4B FF 97 A5 */	bl __dt__4cXyzFv
/* 80617C68  38 61 01 6C */	addi r3, r1, 0x16c
/* 80617C6C  38 80 FF FF */	li r4, -1
/* 80617C70  4B FF 97 99 */	bl __dt__4cXyzFv
/* 80617C74  38 61 01 78 */	addi r3, r1, 0x178
/* 80617C78  38 80 FF FF */	li r4, -1
/* 80617C7C  4B FF 97 8D */	bl __dt__4cXyzFv
/* 80617C80  48 00 08 A0 */	b lbl_80618520
lbl_80617C84:
/* 80617C84  38 7C 02 48 */	addi r3, r28, 0x248
/* 80617C88  4B B4 98 48 */	b Stop__9dCamera_cFv
/* 80617C8C  38 00 00 33 */	li r0, 0x33
/* 80617C90  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617C94  38 00 00 00 */	li r0, 0
/* 80617C98  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617C9C  C0 1E 01 7C */	lfs f0, 0x17c(r30)
/* 80617CA0  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80617CA4  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617CA8  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80617CAC  38 7C 02 48 */	addi r3, r28, 0x248
/* 80617CB0  38 80 00 03 */	li r4, 3
/* 80617CB4  4B B4 B3 58 */	b SetTrimSize__9dCamera_cFl
/* 80617CB8  48 00 2D 39 */	bl daPy_getPlayerActorClass__Fv
/* 80617CBC  48 00 2D 21 */	bl changeOriginalDemo__9daPy_py_cFv
/* 80617CC0  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80617CC4  B0 1F 5C F8 */	sth r0, 0x5cf8(r31)
/* 80617CC8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617CCC  D0 1F 5C FC */	stfs f0, 0x5cfc(r31)
/* 80617CD0  C0 1E 00 8C */	lfs f0, 0x8c(r30)
/* 80617CD4  D0 1F 5D 00 */	stfs f0, 0x5d00(r31)
/* 80617CD8  7F E3 FB 78 */	mr r3, r31
/* 80617CDC  38 80 00 15 */	li r4, 0x15
/* 80617CE0  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80617CE4  38 A0 00 00 */	li r5, 0
/* 80617CE8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80617CEC  4B FF 88 D1 */	bl anm_init__FP10b_ob_classifUcf
/* 80617CF0  38 61 00 3C */	addi r3, r1, 0x3c
/* 80617CF4  3C 80 00 07 */	lis r4, 0x0007 /* 0x0007034D@ha */
/* 80617CF8  38 84 03 4D */	addi r4, r4, 0x034D /* 0x0007034D@l */
/* 80617CFC  48 00 2F 09 */	bl __ct__10JAISoundIDFUl
/* 80617D00  7C 64 1B 78 */	mr r4, r3
/* 80617D04  38 7F 59 E0 */	addi r3, r31, 0x59e0
/* 80617D08  38 A0 FF FF */	li r5, -1
/* 80617D0C  81 9F 59 E0 */	lwz r12, 0x59e0(r31)
/* 80617D10  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80617D14  7D 89 03 A6 */	mtctr r12
/* 80617D18  4E 80 04 21 */	bctrl 
/* 80617D1C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80617D20  80 63 00 04 */	lwz r3, 4(r3)
/* 80617D24  38 80 00 00 */	li r4, 0
/* 80617D28  48 00 2C 21 */	bl getAnmMtx__8J3DModelFi
/* 80617D2C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80617D30  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80617D34  4B D2 E7 7C */	b PSMTXCopy
/* 80617D38  38 61 01 6C */	addi r3, r1, 0x16c
/* 80617D3C  48 00 2B E9 */	bl multVecZero__14mDoMtx_stack_cFP3Vec
/* 80617D40  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008803@ha */
/* 80617D44  38 63 88 03 */	addi r3, r3, 0x8803 /* 0x00008803@l */
/* 80617D48  38 81 01 6C */	addi r4, r1, 0x16c
/* 80617D4C  38 A0 00 00 */	li r5, 0
/* 80617D50  38 C0 00 00 */	li r6, 0
/* 80617D54  48 00 2D 85 */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
/* 80617D58  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008804@ha */
/* 80617D5C  38 63 88 04 */	addi r3, r3, 0x8804 /* 0x00008804@l */
/* 80617D60  38 81 01 6C */	addi r4, r1, 0x16c
/* 80617D64  38 A0 00 00 */	li r5, 0
/* 80617D68  38 C0 00 00 */	li r6, 0
/* 80617D6C  48 00 2D 6D */	bl dComIfGp_particle_set__FUsPC4cXyzPC5csXyzPC4cXyz
lbl_80617D70:
/* 80617D70  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80617D74  80 63 00 04 */	lwz r3, 4(r3)
/* 80617D78  38 80 00 13 */	li r4, 0x13
/* 80617D7C  48 00 2B CD */	bl getAnmMtx__8J3DModelFi
/* 80617D80  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80617D84  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80617D88  4B D2 E7 28 */	b PSMTXCopy
/* 80617D8C  C0 1F 5D 00 */	lfs f0, 0x5d00(r31)
/* 80617D90  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80617D94  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617D98  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80617D9C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80617DA0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80617DA4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80617DA8  38 81 01 78 */	addi r4, r1, 0x178
/* 80617DAC  38 BF 5C EC */	addi r5, r31, 0x5cec
/* 80617DB0  4B D2 EF BC */	b PSMTXMultVec
/* 80617DB4  A8 7F 5C F8 */	lha r3, 0x5cf8(r31)
/* 80617DB8  38 03 10 00 */	addi r0, r3, 0x1000
/* 80617DBC  B0 1F 5C F8 */	sth r0, 0x5cf8(r31)
/* 80617DC0  38 7F 5D 00 */	addi r3, r31, 0x5d00
/* 80617DC4  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80617DC8  C0 5F 5C FC */	lfs f2, 0x5cfc(r31)
/* 80617DCC  4B C5 7C B4 */	b cLib_addCalc0__FPfff
/* 80617DD0  38 7F 5C FC */	addi r3, r31, 0x5cfc
/* 80617DD4  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 80617DD8  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80617DDC  C0 7E 00 64 */	lfs f3, 0x64(r30)
/* 80617DE0  4B C5 7C 5C */	b cLib_addCalc2__FPffff
/* 80617DE4  7F A3 EB 78 */	mr r3, r29
/* 80617DE8  38 9F 5C EC */	addi r4, r31, 0x5cec
/* 80617DEC  A8 BF 5C F8 */	lha r5, 0x5cf8(r31)
/* 80617DF0  38 C0 00 00 */	li r6, 0
/* 80617DF4  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80617DF8  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80617DFC  7D 89 03 A6 */	mtctr r12
/* 80617E00  4E 80 04 21 */	bctrl 
/* 80617E04  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80617E08  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80617E0C  80 63 00 00 */	lwz r3, 0(r3)
/* 80617E10  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80617E14  38 04 E0 00 */	addi r0, r4, -8192
/* 80617E18  7C 04 07 34 */	extsh r4, r0
/* 80617E1C  4B 9F 45 C0 */	b mDoMtx_YrotS__FPA4_fs
/* 80617E20  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80617E24  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80617E28  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 80617E2C  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80617E30  C0 1E 00 88 */	lfs f0, 0x88(r30)
/* 80617E34  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80617E38  38 61 01 78 */	addi r3, r1, 0x178
/* 80617E3C  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80617E40  4B C5 90 AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80617E44  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80617E48  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80617E4C  48 00 2B 11 */	bl __apl__4cXyzFRC3Vec
/* 80617E50  80 1F 47 34 */	lwz r0, 0x4734(r31)
/* 80617E54  2C 00 00 15 */	cmpwi r0, 0x15
/* 80617E58  40 82 00 DC */	bne lbl_80617F34
/* 80617E5C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80617E60  38 63 00 0C */	addi r3, r3, 0xc
/* 80617E64  C0 3E 02 DC */	lfs f1, 0x2dc(r30)
/* 80617E68  4B D1 05 C4 */	b checkPass__12J3DFrameCtrlFf
/* 80617E6C  2C 03 00 00 */	cmpwi r3, 0
/* 80617E70  41 82 00 1C */	beq lbl_80617E8C
/* 80617E74  48 00 2B 7D */	bl daPy_getPlayerActorClass__Fv
/* 80617E78  38 80 00 2E */	li r4, 0x2e
/* 80617E7C  38 A0 00 00 */	li r5, 0
/* 80617E80  38 C0 00 00 */	li r6, 0
/* 80617E84  38 E0 00 00 */	li r7, 0
/* 80617E88  48 00 2B 41 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80617E8C:
/* 80617E8C  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80617E90  38 63 00 0C */	addi r3, r3, 0xc
/* 80617E94  C0 3E 01 94 */	lfs f1, 0x194(r30)
/* 80617E98  4B D1 05 94 */	b checkPass__12J3DFrameCtrlFf
/* 80617E9C  2C 03 00 00 */	cmpwi r3, 0
/* 80617EA0  41 82 00 94 */	beq lbl_80617F34
/* 80617EA4  38 00 00 34 */	li r0, 0x34
/* 80617EA8  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80617EAC  38 00 00 00 */	li r0, 0
/* 80617EB0  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80617EB4  38 61 01 6C */	addi r3, r1, 0x16c
/* 80617EB8  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80617EBC  48 00 2A F1 */	bl __as__4cXyzFRC4cXyz
/* 80617EC0  C0 21 01 70 */	lfs f1, 0x170(r1)
/* 80617EC4  C0 1E 01 64 */	lfs f0, 0x164(r30)
/* 80617EC8  EC 01 00 2A */	fadds f0, f1, f0
/* 80617ECC  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 80617ED0  7F A3 EB 78 */	mr r3, r29
/* 80617ED4  38 81 01 6C */	addi r4, r1, 0x16c
/* 80617ED8  38 A0 00 00 */	li r5, 0
/* 80617EDC  38 C0 00 00 */	li r6, 0
/* 80617EE0  81 9D 06 28 */	lwz r12, 0x628(r29)
/* 80617EE4  81 8C 01 54 */	lwz r12, 0x154(r12)
/* 80617EE8  7D 89 03 A6 */	mtctr r12
/* 80617EEC  4E 80 04 21 */	bctrl 
/* 80617EF0  48 00 2B 01 */	bl daPy_getPlayerActorClass__Fv
/* 80617EF4  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 80617EF8  C0 3E 00 5C */	lfs f1, 0x5c(r30)
/* 80617EFC  C0 5E 00 94 */	lfs f2, 0x94(r30)
/* 80617F00  38 A0 00 04 */	li r5, 4
/* 80617F04  38 C0 00 01 */	li r6, 1
/* 80617F08  38 E0 00 02 */	li r7, 2
/* 80617F0C  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80617F10  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80617F14  7D 89 03 A6 */	mtctr r12
/* 80617F18  4E 80 04 21 */	bctrl 
/* 80617F1C  48 00 2A D5 */	bl daPy_getPlayerActorClass__Fv
/* 80617F20  38 80 00 01 */	li r4, 1
/* 80617F24  38 A0 00 00 */	li r5, 0
/* 80617F28  38 C0 00 00 */	li r6, 0
/* 80617F2C  38 E0 00 00 */	li r7, 0
/* 80617F30  48 00 2A 99 */	bl changeDemoMode__9daPy_py_cFUliis
lbl_80617F34:
/* 80617F34  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617F38  2C 00 00 00 */	cmpwi r0, 0
/* 80617F3C  40 82 00 14 */	bne lbl_80617F50
/* 80617F40  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617F44  38 9F 5C EC */	addi r4, r31, 0x5cec
/* 80617F48  48 00 2A 65 */	bl __as__4cXyzFRC4cXyz
/* 80617F4C  48 00 00 40 */	b lbl_80617F8C
lbl_80617F50:
/* 80617F50  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 80617F54  C0 3D 04 D0 */	lfs f1, 0x4d0(r29)
/* 80617F58  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80617F5C  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80617F60  4B C5 7A DC */	b cLib_addCalc2__FPffff
/* 80617F64  38 7F 5C 94 */	addi r3, r31, 0x5c94
/* 80617F68  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80617F6C  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80617F70  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80617F74  4B C5 7A C8 */	b cLib_addCalc2__FPffff
/* 80617F78  38 7F 5C 98 */	addi r3, r31, 0x5c98
/* 80617F7C  C0 3D 04 D8 */	lfs f1, 0x4d8(r29)
/* 80617F80  C0 5E 01 28 */	lfs f2, 0x128(r30)
/* 80617F84  C0 7E 00 8C */	lfs f3, 0x8c(r30)
/* 80617F88  4B C5 7A B4 */	b cLib_addCalc2__FPffff
lbl_80617F8C:
/* 80617F8C  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80617F90  2C 00 00 19 */	cmpwi r0, 0x19
/* 80617F94  40 81 00 2C */	ble lbl_80617FC0
/* 80617F98  38 7F 5C CC */	addi r3, r31, 0x5ccc
/* 80617F9C  C0 3E 00 BC */	lfs f1, 0xbc(r30)
/* 80617FA0  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80617FA4  C0 7F 5C D0 */	lfs f3, 0x5cd0(r31)
/* 80617FA8  4B C5 7A 94 */	b cLib_addCalc2__FPffff
/* 80617FAC  38 7F 5C D0 */	addi r3, r31, 0x5cd0
/* 80617FB0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80617FB4  FC 40 08 90 */	fmr f2, f1
/* 80617FB8  C0 7E 00 B8 */	lfs f3, 0xb8(r30)
/* 80617FBC  4B C5 7A 80 */	b cLib_addCalc2__FPffff
lbl_80617FC0:
/* 80617FC0  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 80617FC4  2C 00 00 34 */	cmpwi r0, 0x34
/* 80617FC8  40 82 01 60 */	bne lbl_80618128
/* 80617FCC  80 7F 05 C0 */	lwz r3, 0x5c0(r31)
/* 80617FD0  48 00 2D 51 */	bl isStop__13mDoExt_morf_cFv
/* 80617FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80617FD8  41 82 01 50 */	beq lbl_80618128
/* 80617FDC  38 60 00 64 */	li r3, 0x64
/* 80617FE0  B0 7F 5C 80 */	sth r3, 0x5c80(r31)
/* 80617FE4  38 00 00 1E */	li r0, 0x1e
/* 80617FE8  90 1F 47 38 */	stw r0, 0x4738(r31)
/* 80617FEC  38 00 00 02 */	li r0, 2
/* 80617FF0  98 1F 47 3C */	stb r0, 0x473c(r31)
/* 80617FF4  B0 7F 47 94 */	sth r3, 0x4794(r31)
/* 80617FF8  48 00 01 30 */	b lbl_80618128
lbl_80617FFC:
/* 80617FFC  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80618000  48 00 2A 11 */	bl checkCommandDemoAccrpt__11dEvt_info_cFv
/* 80618004  2C 03 00 00 */	cmpwi r3, 0
/* 80618008  40 82 00 68 */	bne lbl_80618070
/* 8061800C  7F E3 FB 78 */	mr r3, r31
/* 80618010  38 80 00 02 */	li r4, 2
/* 80618014  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 80618018  38 A5 FF FF */	addi r5, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8061801C  38 C0 00 00 */	li r6, 0
/* 80618020  4B A0 38 E8 */	b fopAcM_orderPotentialEvent__FP10fopAc_ac_cUsUsUs
/* 80618024  38 7F 00 F4 */	addi r3, r31, 0xf4
/* 80618028  38 80 00 02 */	li r4, 2
/* 8061802C  48 00 29 D5 */	bl onCondition__11dEvt_info_cFUs
/* 80618030  38 61 01 48 */	addi r3, r1, 0x148
/* 80618034  38 80 FF FF */	li r4, -1
/* 80618038  4B FF 93 D1 */	bl __dt__4cXyzFv
/* 8061803C  38 61 01 54 */	addi r3, r1, 0x154
/* 80618040  38 80 FF FF */	li r4, -1
/* 80618044  4B FF 93 C5 */	bl __dt__4cXyzFv
/* 80618048  38 61 01 60 */	addi r3, r1, 0x160
/* 8061804C  38 80 FF FF */	li r4, -1
/* 80618050  4B FF 93 B9 */	bl __dt__4cXyzFv
/* 80618054  38 61 01 6C */	addi r3, r1, 0x16c
/* 80618058  38 80 FF FF */	li r4, -1
/* 8061805C  4B FF 93 AD */	bl __dt__4cXyzFv
/* 80618060  38 61 01 78 */	addi r3, r1, 0x178
/* 80618064  38 80 FF FF */	li r4, -1
/* 80618068  4B FF 93 A1 */	bl __dt__4cXyzFv
/* 8061806C  48 00 04 B4 */	b lbl_80618520
lbl_80618070:
/* 80618070  38 7C 02 48 */	addi r3, r28, 0x248
/* 80618074  4B B4 94 5C */	b Stop__9dCamera_cFv
/* 80618078  38 00 00 3D */	li r0, 0x3d
/* 8061807C  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
/* 80618080  38 00 00 00 */	li r0, 0
/* 80618084  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 80618088  C0 1E 00 BC */	lfs f0, 0xbc(r30)
/* 8061808C  D0 1F 5C CC */	stfs f0, 0x5ccc(r31)
/* 80618090  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80618094  D0 1F 5C D0 */	stfs f0, 0x5cd0(r31)
/* 80618098  38 7C 02 48 */	addi r3, r28, 0x248
/* 8061809C  38 80 00 03 */	li r4, 3
/* 806180A0  4B B4 AF 6C */	b SetTrimSize__9dCamera_cFl
/* 806180A4  48 00 29 4D */	bl daPy_getPlayerActorClass__Fv
/* 806180A8  48 00 29 35 */	bl changeOriginalDemo__9daPy_py_cFv
lbl_806180AC:
/* 806180AC  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806180B0  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 806180B4  80 63 00 00 */	lwz r3, 0(r3)
/* 806180B8  A8 9F 04 B6 */	lha r4, 0x4b6(r31)
/* 806180BC  38 04 20 00 */	addi r0, r4, 0x2000
/* 806180C0  7C 04 07 34 */	extsh r4, r0
/* 806180C4  4B 9F 43 18 */	b mDoMtx_YrotS__FPA4_fs
/* 806180C8  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 806180CC  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 806180D0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 806180D4  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 806180D8  C0 1E 02 E0 */	lfs f0, 0x2e0(r30)
/* 806180DC  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 806180E0  38 61 01 78 */	addi r3, r1, 0x178
/* 806180E4  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 806180E8  4B C5 8E 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 806180EC  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 806180F0  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 806180F4  48 00 28 69 */	bl __apl__4cXyzFRC3Vec
/* 806180F8  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 806180FC  38 9F 04 A8 */	addi r4, r31, 0x4a8
/* 80618100  48 00 28 AD */	bl __as__4cXyzFRC4cXyz
/* 80618104  C0 3F 5C 94 */	lfs f1, 0x5c94(r31)
/* 80618108  C0 1E 01 60 */	lfs f0, 0x160(r30)
/* 8061810C  EC 01 00 2A */	fadds f0, f1, f0
/* 80618110  D0 1F 5C 94 */	stfs f0, 0x5c94(r31)
/* 80618114  38 7F 5C CC */	addi r3, r31, 0x5ccc
/* 80618118  C0 3E 01 7C */	lfs f1, 0x17c(r30)
/* 8061811C  C0 5E 00 B8 */	lfs f2, 0xb8(r30)
/* 80618120  C0 7E 00 04 */	lfs f3, 4(r30)
/* 80618124  4B C5 79 18 */	b cLib_addCalc2__FPffff
lbl_80618128:
/* 80618128  A8 7F 5C 80 */	lha r3, 0x5c80(r31)
/* 8061812C  7C 60 07 35 */	extsh. r0, r3
/* 80618130  41 82 03 34 */	beq lbl_80618464
/* 80618134  2C 03 00 64 */	cmpwi r3, 0x64
/* 80618138  41 80 00 D4 */	blt lbl_8061820C
/* 8061813C  2C 03 00 65 */	cmpwi r3, 0x65
/* 80618140  40 82 00 64 */	bne lbl_806181A4
/* 80618144  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80618148  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8061814C  80 63 00 00 */	lwz r3, 0(r3)
/* 80618150  A8 9D 04 E6 */	lha r4, 0x4e6(r29)
/* 80618154  4B 9F 42 88 */	b mDoMtx_YrotS__FPA4_fs
/* 80618158  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 8061815C  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80618160  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 80618164  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 80618168  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 8061816C  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 80618170  38 61 01 78 */	addi r3, r1, 0x178
/* 80618174  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80618178  4B C5 8D 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 8061817C  38 7F 5C 84 */	addi r3, r31, 0x5c84
/* 80618180  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80618184  48 00 27 D9 */	bl __apl__4cXyzFRC3Vec
/* 80618188  38 7F 5C 90 */	addi r3, r31, 0x5c90
/* 8061818C  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 80618190  48 00 28 1D */	bl __as__4cXyzFRC4cXyz
/* 80618194  C0 3F 5C 94 */	lfs f1, 0x5c94(r31)
/* 80618198  C0 1E 02 DC */	lfs f0, 0x2dc(r30)
/* 8061819C  EC 01 00 2A */	fadds f0, f1, f0
/* 806181A0  D0 1F 5C 94 */	stfs f0, 0x5c94(r31)
lbl_806181A4:
/* 806181A4  38 61 00 94 */	addi r3, r1, 0x94
/* 806181A8  38 9F 5C 90 */	addi r4, r31, 0x5c90
/* 806181AC  48 00 28 E1 */	bl __ct__4cXyzFRC4cXyz
/* 806181B0  38 61 00 88 */	addi r3, r1, 0x88
/* 806181B4  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 806181B8  48 00 28 D5 */	bl __ct__4cXyzFRC4cXyz
/* 806181BC  38 7C 02 48 */	addi r3, r28, 0x248
/* 806181C0  38 81 00 94 */	addi r4, r1, 0x94
/* 806181C4  38 A1 00 88 */	addi r5, r1, 0x88
/* 806181C8  4B B6 8A 50 */	b Reset__9dCamera_cF4cXyz4cXyz
/* 806181CC  38 61 00 88 */	addi r3, r1, 0x88
/* 806181D0  38 80 FF FF */	li r4, -1
/* 806181D4  4B FF 92 35 */	bl __dt__4cXyzFv
/* 806181D8  38 61 00 94 */	addi r3, r1, 0x94
/* 806181DC  38 80 FF FF */	li r4, -1
/* 806181E0  4B FF 92 29 */	bl __dt__4cXyzFv
/* 806181E4  38 7C 02 48 */	addi r3, r28, 0x248
/* 806181E8  4B B4 92 C4 */	b Start__9dCamera_cFv
/* 806181EC  38 7C 02 48 */	addi r3, r28, 0x248
/* 806181F0  38 80 00 00 */	li r4, 0
/* 806181F4  4B B4 AE 18 */	b SetTrimSize__9dCamera_cFl
/* 806181F8  48 00 26 B9 */	bl dComIfGp_event_reset__Fv
/* 806181FC  48 00 27 F5 */	bl daPy_getPlayerActorClass__Fv
/* 80618200  48 00 26 9D */	bl cancelOriginalDemo__9daPy_py_cFv
/* 80618204  38 00 00 00 */	li r0, 0
/* 80618208  B0 1F 5C 80 */	sth r0, 0x5c80(r31)
lbl_8061820C:
/* 8061820C  38 61 01 18 */	addi r3, r1, 0x118
/* 80618210  38 9F 5C 90 */	addi r4, r31, 0x5c90
/* 80618214  48 00 27 99 */	bl __as__4cXyzFRC4cXyz
/* 80618218  38 61 01 0C */	addi r3, r1, 0x10c
/* 8061821C  38 9F 5C 84 */	addi r4, r31, 0x5c84
/* 80618220  48 00 27 8D */	bl __as__4cXyzFRC4cXyz
/* 80618224  3A A0 00 00 */	li r21, 0
/* 80618228  C0 3F 5C E4 */	lfs f1, 0x5ce4(r31)
/* 8061822C  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80618230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80618234  40 81 01 58 */	ble lbl_8061838C
/* 80618238  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 8061823C  1C 00 1B 00 */	mulli r0, r0, 0x1b00
/* 80618240  7C 03 07 34 */	extsh r3, r0
/* 80618244  48 00 03 F9 */	bl cM_ssin__Fs
/* 80618248  C0 1F 5C E4 */	lfs f0, 0x5ce4(r31)
/* 8061824C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80618250  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 80618254  EC 00 00 72 */	fmuls f0, f0, f1
/* 80618258  FC 00 00 1E */	fctiwz f0, f0
/* 8061825C  D8 01 01 88 */	stfd f0, 0x188(r1)
/* 80618260  82 A1 01 8C */	lwz r21, 0x18c(r1)
/* 80618264  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80618268  1C 00 19 00 */	mulli r0, r0, 0x1900
/* 8061826C  7C 03 07 34 */	extsh r3, r0
/* 80618270  48 00 03 CD */	bl cM_ssin__Fs
/* 80618274  C0 1F 5C E4 */	lfs f0, 0x5ce4(r31)
/* 80618278  EC 20 00 72 */	fmuls f1, f0, f1
/* 8061827C  C0 1E 02 E8 */	lfs f0, 0x2e8(r30)
/* 80618280  EC 00 00 72 */	fmuls f0, f0, f1
/* 80618284  FC 00 00 1E */	fctiwz f0, f0
/* 80618288  D8 01 01 90 */	stfd f0, 0x190(r1)
/* 8061828C  82 C1 01 94 */	lwz r22, 0x194(r1)
/* 80618290  38 61 00 7C */	addi r3, r1, 0x7c
/* 80618294  38 81 01 18 */	addi r4, r1, 0x118
/* 80618298  38 A1 01 0C */	addi r5, r1, 0x10c
/* 8061829C  4B C4 E8 98 */	b __mi__4cXyzCFRC3Vec
/* 806182A0  38 61 01 78 */	addi r3, r1, 0x178
/* 806182A4  38 81 00 7C */	addi r4, r1, 0x7c
/* 806182A8  48 00 27 05 */	bl __as__4cXyzFRC4cXyz
/* 806182AC  38 61 00 7C */	addi r3, r1, 0x7c
/* 806182B0  38 80 FF FF */	li r4, -1
/* 806182B4  4B FF 91 55 */	bl __dt__4cXyzFv
/* 806182B8  C0 21 01 78 */	lfs f1, 0x178(r1)
/* 806182BC  C0 41 01 80 */	lfs f2, 0x180(r1)
/* 806182C0  4B C4 F3 B4 */	b cM_atan2s__Fff
/* 806182C4  7C 15 1A 14 */	add r0, r21, r3
/* 806182C8  7C 15 07 34 */	extsh r21, r0
/* 806182CC  C0 01 01 78 */	lfs f0, 0x178(r1)
/* 806182D0  EC 20 00 32 */	fmuls f1, f0, f0
/* 806182D4  C0 01 01 80 */	lfs f0, 0x180(r1)
/* 806182D8  EC 00 00 32 */	fmuls f0, f0, f0
/* 806182DC  EC 21 00 2A */	fadds f1, f1, f0
/* 806182E0  48 00 03 41 */	bl JMAFastSqrt__Ff
/* 806182E4  FC 40 08 90 */	fmr f2, f1
/* 806182E8  C0 21 01 7C */	lfs f1, 0x17c(r1)
/* 806182EC  4B C4 F3 88 */	b cM_atan2s__Fff
/* 806182F0  7C 03 B0 50 */	subf r0, r3, r22
/* 806182F4  7C 16 07 34 */	extsh r22, r0
/* 806182F8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 806182FC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80618300  80 63 00 00 */	lwz r3, 0(r3)
/* 80618304  7E A4 AB 78 */	mr r4, r21
/* 80618308  4B 9F 40 D4 */	b mDoMtx_YrotS__FPA4_fs
/* 8061830C  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80618310  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80618314  80 63 00 00 */	lwz r3, 0(r3)
/* 80618318  7E C4 B3 78 */	mr r4, r22
/* 8061831C  4B 9F 40 80 */	b mDoMtx_XrotM__FPA4_fs
/* 80618320  C0 1E 00 0C */	lfs f0, 0xc(r30)
/* 80618324  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 80618328  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8061832C  38 61 01 78 */	addi r3, r1, 0x178
/* 80618330  48 00 28 DD */	bl abs__4cXyzCFv
/* 80618334  D0 21 01 80 */	stfs f1, 0x180(r1)
/* 80618338  38 61 01 78 */	addi r3, r1, 0x178
/* 8061833C  38 81 01 18 */	addi r4, r1, 0x118
/* 80618340  4B C5 8B AC */	b MtxPosition__FP4cXyzP4cXyz
/* 80618344  38 61 01 18 */	addi r3, r1, 0x118
/* 80618348  38 81 01 0C */	addi r4, r1, 0x10c
/* 8061834C  48 00 26 11 */	bl __apl__4cXyzFRC3Vec
/* 80618350  A8 1F 5C 82 */	lha r0, 0x5c82(r31)
/* 80618354  1C 00 1E 00 */	mulli r0, r0, 0x1e00
/* 80618358  7C 03 07 34 */	extsh r3, r0
/* 8061835C  48 00 02 AD */	bl cM_scos__Fs
/* 80618360  C0 1F 5C E4 */	lfs f0, 0x5ce4(r31)
/* 80618364  EC 20 00 72 */	fmuls f1, f0, f1
/* 80618368  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8061836C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80618370  FC 00 00 1E */	fctiwz f0, f0
/* 80618374  D8 01 01 98 */	stfd f0, 0x198(r1)
/* 80618378  82 A1 01 9C */	lwz r21, 0x19c(r1)
/* 8061837C  38 7F 5C E4 */	addi r3, r31, 0x5ce4
/* 80618380  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80618384  C0 5E 00 50 */	lfs f2, 0x50(r30)
/* 80618388  4B C5 76 F8 */	b cLib_addCalc0__FPfff
lbl_8061838C:
/* 8061838C  38 61 00 70 */	addi r3, r1, 0x70
/* 80618390  38 81 01 18 */	addi r4, r1, 0x118
/* 80618394  48 00 26 F9 */	bl __ct__4cXyzFRC4cXyz
/* 80618398  38 61 00 64 */	addi r3, r1, 0x64
/* 8061839C  38 81 01 0C */	addi r4, r1, 0x10c
/* 806183A0  48 00 26 ED */	bl __ct__4cXyzFRC4cXyz
/* 806183A4  38 7C 02 48 */	addi r3, r28, 0x248
/* 806183A8  38 81 00 70 */	addi r4, r1, 0x70
/* 806183AC  38 A1 00 64 */	addi r5, r1, 0x64
/* 806183B0  7E A6 AB 78 */	mr r6, r21
/* 806183B4  C0 3F 5C CC */	lfs f1, 0x5ccc(r31)
/* 806183B8  4B B6 87 88 */	b Set__9dCamera_cF4cXyz4cXyzsf
/* 806183BC  38 61 00 64 */	addi r3, r1, 0x64
/* 806183C0  38 80 FF FF */	li r4, -1
/* 806183C4  4B FF 90 45 */	bl __dt__4cXyzFv
/* 806183C8  38 61 00 70 */	addi r3, r1, 0x70
/* 806183CC  38 80 FF FF */	li r4, -1
/* 806183D0  4B FF 90 39 */	bl __dt__4cXyzFv
/* 806183D4  A8 7F 5C 82 */	lha r3, 0x5c82(r31)
/* 806183D8  38 03 00 01 */	addi r0, r3, 1
/* 806183DC  B0 1F 5C 82 */	sth r0, 0x5c82(r31)
/* 806183E0  38 00 00 5A */	li r0, 0x5a
/* 806183E4  B0 1F 47 94 */	sth r0, 0x4794(r31)
/* 806183E8  38 7F 5D 0A */	addi r3, r31, 0x5d0a
/* 806183EC  A8 9F 5D 0C */	lha r4, 0x5d0c(r31)
/* 806183F0  38 A0 00 01 */	li r5, 1
/* 806183F4  38 C0 00 08 */	li r6, 8
/* 806183F8  4B C5 82 10 */	b cLib_addCalcAngleS2__FPssss
/* 806183FC  A8 1F 5C 80 */	lha r0, 0x5c80(r31)
/* 80618400  2C 00 00 1F */	cmpwi r0, 0x1f
/* 80618404  41 80 00 48 */	blt lbl_8061844C
/* 80618408  2C 00 00 28 */	cmpwi r0, 0x28
/* 8061840C  40 80 00 40 */	bge lbl_8061844C
/* 80618410  48 00 27 71 */	bl dComIfGp_getEvent__Fv
/* 80618414  48 00 01 E1 */	bl checkSkipEdge__14dEvt_control_cFv
/* 80618418  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8061841C  41 82 00 30 */	beq lbl_8061844C
/* 80618420  38 00 00 1E */	li r0, 0x1e
/* 80618424  3C 60 80 45 */	lis r3, struct_80450C98+0x0@ha
/* 80618428  98 03 0C 98 */	stb r0, struct_80450C98+0x0@l(r3)
/* 8061842C  38 60 00 01 */	li r3, 1
/* 80618430  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80618434  38 80 00 00 */	li r4, 0
/* 80618438  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 8061843C  7C 05 07 74 */	extsb r5, r0
/* 80618440  38 C0 00 00 */	li r6, 0
/* 80618444  38 E0 FF FF */	li r7, -1
/* 80618448  4B A0 ED 28 */	b dStage_changeScene__FifUlScsi
lbl_8061844C:
/* 8061844C  38 61 01 0C */	addi r3, r1, 0x10c
/* 80618450  38 80 FF FF */	li r4, -1
/* 80618454  4B FF 8F B5 */	bl __dt__4cXyzFv
/* 80618458  38 61 01 18 */	addi r3, r1, 0x118
/* 8061845C  38 80 FF FF */	li r4, -1
/* 80618460  4B FF 8F A9 */	bl __dt__4cXyzFv
lbl_80618464:
/* 80618464  2C 1B 00 00 */	cmpwi r27, 0
/* 80618468  41 82 00 7C */	beq lbl_806184E4
/* 8061846C  38 61 01 6C */	addi r3, r1, 0x16c
/* 80618470  C0 3E 00 0C */	lfs f1, 0xc(r30)
/* 80618474  C0 5E 00 FC */	lfs f2, 0xfc(r30)
/* 80618478  C0 7E 01 00 */	lfs f3, 0x100(r30)
/* 8061847C  48 00 27 79 */	bl set__4cXyzFfff
/* 80618480  3A A0 00 00 */	li r21, 0
/* 80618484  3B 00 00 00 */	li r24, 0
/* 80618488  3B 20 00 00 */	li r25, 0
/* 8061848C  3C 60 80 62 */	lis r3, iso_eff_6219@ha
/* 80618490  3A E3 B1 74 */	addi r23, r3, iso_eff_6219@l
lbl_80618494:
/* 80618494  3A D9 5D 24 */	addi r22, r25, 0x5d24
/* 80618498  7C 7F B0 2E */	lwzx r3, r31, r22
/* 8061849C  7C 97 C2 2E */	lhzx r4, r23, r24
/* 806184A0  38 A1 01 6C */	addi r5, r1, 0x16c
/* 806184A4  38 C0 00 00 */	li r6, 0
/* 806184A8  38 E0 00 00 */	li r7, 0
/* 806184AC  48 00 00 C9 */	bl dComIfGp_particle_set__FUlUsPC4cXyzPC5csXyzPC4cXyz
/* 806184B0  7C 7F B1 2E */	stwx r3, r31, r22
/* 806184B4  2C 1B 00 02 */	cmpwi r27, 2
/* 806184B8  40 82 00 18 */	bne lbl_806184D0
/* 806184BC  7C 7F B0 2E */	lwzx r3, r31, r22
/* 806184C0  48 00 00 81 */	bl dComIfGp_particle_getEmitter__FUl
/* 806184C4  28 03 00 00 */	cmplwi r3, 0
/* 806184C8  41 82 00 08 */	beq lbl_806184D0
/* 806184CC  48 00 25 DD */	bl becomeDeleteEmitter__14JPABaseEmitterFv
lbl_806184D0:
/* 806184D0  3A B5 00 01 */	addi r21, r21, 1
/* 806184D4  2C 15 00 04 */	cmpwi r21, 4
/* 806184D8  3B 18 00 02 */	addi r24, r24, 2
/* 806184DC  3B 39 00 04 */	addi r25, r25, 4
/* 806184E0  41 80 FF B4 */	blt lbl_80618494
lbl_806184E4:
/* 806184E4  38 61 01 48 */	addi r3, r1, 0x148
/* 806184E8  38 80 FF FF */	li r4, -1
/* 806184EC  4B FF 8F 1D */	bl __dt__4cXyzFv
/* 806184F0  38 61 01 54 */	addi r3, r1, 0x154
/* 806184F4  38 80 FF FF */	li r4, -1
/* 806184F8  4B FF 8F 11 */	bl __dt__4cXyzFv
/* 806184FC  38 61 01 60 */	addi r3, r1, 0x160
/* 80618500  38 80 FF FF */	li r4, -1
/* 80618504  4B FF 8F 05 */	bl __dt__4cXyzFv
/* 80618508  38 61 01 6C */	addi r3, r1, 0x16c
/* 8061850C  38 80 FF FF */	li r4, -1
/* 80618510  4B FF 8E F9 */	bl __dt__4cXyzFv
/* 80618514  38 61 01 78 */	addi r3, r1, 0x178
/* 80618518  38 80 FF FF */	li r4, -1
/* 8061851C  4B FF 8E ED */	bl __dt__4cXyzFv
lbl_80618520:
/* 80618520  E3 E1 01 D8 */	psq_l f31, 472(r1), 0, 0 /* qr0 */
/* 80618524  CB E1 01 D0 */	lfd f31, 0x1d0(r1)
/* 80618528  39 61 01 D0 */	addi r11, r1, 0x1d0
/* 8061852C  4B D4 9C DC */	b _restgpr_21
/* 80618530  80 01 01 E4 */	lwz r0, 0x1e4(r1)
/* 80618534  7C 08 03 A6 */	mtlr r0
/* 80618538  38 21 01 E0 */	addi r1, r1, 0x1e0
/* 8061853C  4E 80 00 20 */	blr 
