lbl_80790950:
/* 80790950  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80790954  7C 08 02 A6 */	mflr r0
/* 80790958  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 8079095C  DB E1 00 90 */	stfd f31, 0x90(r1)
/* 80790960  F3 E1 00 98 */	psq_st f31, 152(r1), 0, 0 /* qr0 */
/* 80790964  39 61 00 90 */	addi r11, r1, 0x90
/* 80790968  4B BD 18 54 */	b _savegpr_21
/* 8079096C  7C 7F 1B 78 */	mr r31, r3
/* 80790970  3C 60 80 79 */	lis r3, lit_3902@ha
/* 80790974  3B 83 1D 70 */	addi r28, r3, lit_3902@l
/* 80790978  A8 7F 06 74 */	lha r3, 0x674(r31)
/* 8079097C  38 03 00 01 */	addi r0, r3, 1
/* 80790980  B0 1F 06 74 */	sth r0, 0x674(r31)
/* 80790984  38 60 00 00 */	li r3, 0
/* 80790988  38 00 00 04 */	li r0, 4
/* 8079098C  7C 09 03 A6 */	mtctr r0
lbl_80790990:
/* 80790990  38 A3 06 98 */	addi r5, r3, 0x698
/* 80790994  7C 9F 2A AE */	lhax r4, r31, r5
/* 80790998  2C 04 00 00 */	cmpwi r4, 0
/* 8079099C  41 82 00 0C */	beq lbl_807909A8
/* 807909A0  38 04 FF FF */	addi r0, r4, -1
/* 807909A4  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_807909A8:
/* 807909A8  38 63 00 02 */	addi r3, r3, 2
/* 807909AC  42 00 FF E4 */	bdnz lbl_80790990
/* 807909B0  A8 7F 06 A0 */	lha r3, 0x6a0(r31)
/* 807909B4  2C 03 00 00 */	cmpwi r3, 0
/* 807909B8  41 82 00 0C */	beq lbl_807909C4
/* 807909BC  38 03 FF FF */	addi r0, r3, -1
/* 807909C0  B0 1F 06 A0 */	sth r0, 0x6a0(r31)
lbl_807909C4:
/* 807909C4  7F E3 FB 78 */	mr r3, r31
/* 807909C8  4B FF F3 E9 */	bl action__FP10e_sh_class
/* 807909CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807909D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807909D4  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 807909D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 807909DC  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 807909E0  4B BB 5F 08 */	b PSMTXTrans
/* 807909E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807909E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807909EC  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 807909F0  4B 87 BA 44 */	b mDoMtx_YrotM__FPA4_fs
/* 807909F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 807909F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 807909FC  A8 9F 04 E4 */	lha r4, 0x4e4(r31)
/* 80790A00  4B 87 B9 9C */	b mDoMtx_XrotM__FPA4_fs
/* 80790A04  3C 60 80 79 */	lis r3, l_HIO@ha
/* 80790A08  3B A3 21 08 */	addi r29, r3, l_HIO@l
/* 80790A0C  C0 3D 00 08 */	lfs f1, 8(r29)
/* 80790A10  FC 40 08 90 */	fmr f2, f1
/* 80790A14  FC 60 08 90 */	fmr f3, f1
/* 80790A18  4B 87 C4 20 */	b scaleM__14mDoMtx_stack_cFfff
/* 80790A1C  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80790A20  83 63 00 04 */	lwz r27, 4(r3)
/* 80790A24  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80790A28  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80790A2C  38 9B 00 24 */	addi r4, r27, 0x24
/* 80790A30  4B BB 5A 80 */	b PSMTXCopy
/* 80790A34  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80790A38  7C 03 07 74 */	extsb r3, r0
/* 80790A3C  4B 89 C6 30 */	b dComIfGp_getReverb__Fi
/* 80790A40  7C 65 1B 78 */	mr r5, r3
/* 80790A44  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80790A48  38 80 00 00 */	li r4, 0
/* 80790A4C  4B 88 06 64 */	b play__16mDoExt_McaMorfSOFUlSc
/* 80790A50  7F E3 FB 78 */	mr r3, r31
/* 80790A54  4B FF FA 45 */	bl anm_se_set__FP10e_sh_class
/* 80790A58  80 7F 05 B8 */	lwz r3, 0x5b8(r31)
/* 80790A5C  4B 88 07 90 */	b modelCalc__16mDoExt_McaMorfSOFv
/* 80790A60  38 7F 06 6C */	addi r3, r31, 0x66c
/* 80790A64  C0 3F 06 70 */	lfs f1, 0x670(r31)
/* 80790A68  C0 5C 00 08 */	lfs f2, 8(r28)
/* 80790A6C  C0 7C 01 10 */	lfs f3, 0x110(r28)
/* 80790A70  4B AD EF CC */	b cLib_addCalc2__FPffff
/* 80790A74  C0 1C 00 08 */	lfs f0, 8(r28)
/* 80790A78  D0 1F 06 70 */	stfs f0, 0x670(r31)
/* 80790A7C  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80790A80  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80790A84  38 63 02 70 */	addi r3, r3, 0x270
/* 80790A88  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80790A8C  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80790A90  80 84 00 00 */	lwz r4, 0(r4)
/* 80790A94  4B BB 5A 1C */	b PSMTXCopy
/* 80790A98  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80790A9C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80790AA0  83 43 5D 74 */	lwz r26, 0x5d74(r3)
/* 80790AA4  3A E0 00 00 */	li r23, 0
/* 80790AA8  3A C0 00 00 */	li r22, 0
/* 80790AAC  3C 60 80 43 */	lis r3, g_env_light@ha
/* 80790AB0  3B C3 CA 54 */	addi r30, r3, g_env_light@l
/* 80790AB4  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80790AB8  3A A3 07 68 */	addi r21, r3, calc_mtx@l
lbl_80790ABC:
/* 80790ABC  4B AE 04 60 */	b MtxPush__Fv
/* 80790AC0  2C 17 00 00 */	cmpwi r23, 0
/* 80790AC4  40 82 01 E0 */	bne lbl_80790CA4
/* 80790AC8  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 80790ACC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790AD0  C0 1C 01 14 */	lfs f0, 0x114(r28)
/* 80790AD4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790AD8  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790ADC  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790AE0  38 61 00 48 */	addi r3, r1, 0x48
/* 80790AE4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790AE8  4B AE 04 04 */	b MtxPosition__FP4cXyzP4cXyz
/* 80790AEC  38 61 00 24 */	addi r3, r1, 0x24
/* 80790AF0  38 9A 00 D8 */	addi r4, r26, 0xd8
/* 80790AF4  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80790AF8  4B AD 60 3C */	b __mi__4cXyzCFRC3Vec
/* 80790AFC  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80790B00  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80790B04  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80790B08  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790B0C  C0 41 00 2C */	lfs f2, 0x2c(r1)
/* 80790B10  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80790B14  4B AD 6B 60 */	b cM_atan2s__Fff
/* 80790B18  7C 78 1B 78 */	mr r24, r3
/* 80790B1C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80790B20  EC 20 00 32 */	fmuls f1, f0, f0
/* 80790B24  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80790B28  EC 00 00 32 */	fmuls f0, f0, f0
/* 80790B2C  EC 41 00 2A */	fadds f2, f1, f0
/* 80790B30  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790B34  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80790B38  40 81 00 0C */	ble lbl_80790B44
/* 80790B3C  FC 00 10 34 */	frsqrte f0, f2
/* 80790B40  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80790B44:
/* 80790B44  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80790B48  4B AD 6B 2C */	b cM_atan2s__Fff
/* 80790B4C  7C 03 00 D0 */	neg r0, r3
/* 80790B50  7C 19 07 34 */	extsh r25, r0
/* 80790B54  38 61 00 48 */	addi r3, r1, 0x48
/* 80790B58  4B BB 65 E0 */	b PSVECSquareMag
/* 80790B5C  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790B60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80790B64  40 81 00 58 */	ble lbl_80790BBC
/* 80790B68  FC 00 08 34 */	frsqrte f0, f1
/* 80790B6C  C8 9C 00 10 */	lfd f4, 0x10(r28)
/* 80790B70  FC 44 00 32 */	fmul f2, f4, f0
/* 80790B74  C8 7C 00 18 */	lfd f3, 0x18(r28)
/* 80790B78  FC 00 00 32 */	fmul f0, f0, f0
/* 80790B7C  FC 01 00 32 */	fmul f0, f1, f0
/* 80790B80  FC 03 00 28 */	fsub f0, f3, f0
/* 80790B84  FC 02 00 32 */	fmul f0, f2, f0
/* 80790B88  FC 44 00 32 */	fmul f2, f4, f0
/* 80790B8C  FC 00 00 32 */	fmul f0, f0, f0
/* 80790B90  FC 01 00 32 */	fmul f0, f1, f0
/* 80790B94  FC 03 00 28 */	fsub f0, f3, f0
/* 80790B98  FC 02 00 32 */	fmul f0, f2, f0
/* 80790B9C  FC 44 00 32 */	fmul f2, f4, f0
/* 80790BA0  FC 00 00 32 */	fmul f0, f0, f0
/* 80790BA4  FC 01 00 32 */	fmul f0, f1, f0
/* 80790BA8  FC 03 00 28 */	fsub f0, f3, f0
/* 80790BAC  FC 02 00 32 */	fmul f0, f2, f0
/* 80790BB0  FC 21 00 32 */	fmul f1, f1, f0
/* 80790BB4  FC 20 08 18 */	frsp f1, f1
/* 80790BB8  48 00 00 88 */	b lbl_80790C40
lbl_80790BBC:
/* 80790BBC  C8 1C 00 20 */	lfd f0, 0x20(r28)
/* 80790BC0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80790BC4  40 80 00 10 */	bge lbl_80790BD4
/* 80790BC8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80790BCC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80790BD0  48 00 00 70 */	b lbl_80790C40
lbl_80790BD4:
/* 80790BD4  D0 21 00 08 */	stfs f1, 8(r1)
/* 80790BD8  80 81 00 08 */	lwz r4, 8(r1)
/* 80790BDC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80790BE0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80790BE4  7C 03 00 00 */	cmpw r3, r0
/* 80790BE8  41 82 00 14 */	beq lbl_80790BFC
/* 80790BEC  40 80 00 40 */	bge lbl_80790C2C
/* 80790BF0  2C 03 00 00 */	cmpwi r3, 0
/* 80790BF4  41 82 00 20 */	beq lbl_80790C14
/* 80790BF8  48 00 00 34 */	b lbl_80790C2C
lbl_80790BFC:
/* 80790BFC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80790C00  41 82 00 0C */	beq lbl_80790C0C
/* 80790C04  38 00 00 01 */	li r0, 1
/* 80790C08  48 00 00 28 */	b lbl_80790C30
lbl_80790C0C:
/* 80790C0C  38 00 00 02 */	li r0, 2
/* 80790C10  48 00 00 20 */	b lbl_80790C30
lbl_80790C14:
/* 80790C14  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80790C18  41 82 00 0C */	beq lbl_80790C24
/* 80790C1C  38 00 00 05 */	li r0, 5
/* 80790C20  48 00 00 10 */	b lbl_80790C30
lbl_80790C24:
/* 80790C24  38 00 00 03 */	li r0, 3
/* 80790C28  48 00 00 08 */	b lbl_80790C30
lbl_80790C2C:
/* 80790C2C  38 00 00 04 */	li r0, 4
lbl_80790C30:
/* 80790C30  2C 00 00 01 */	cmpwi r0, 1
/* 80790C34  40 82 00 0C */	bne lbl_80790C40
/* 80790C38  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80790C3C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80790C40:
/* 80790C40  C0 1C 01 18 */	lfs f0, 0x118(r28)
/* 80790C44  EF E0 00 72 */	fmuls f31, f0, f1
/* 80790C48  C0 1C 00 90 */	lfs f0, 0x90(r28)
/* 80790C4C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80790C50  40 81 00 08 */	ble lbl_80790C58
/* 80790C54  FF E0 00 90 */	fmr f31, f0
lbl_80790C58:
/* 80790C58  C0 5F 06 6C */	lfs f2, 0x66c(r31)
/* 80790C5C  C0 1E 12 44 */	lfs f0, 0x1244(r30)
/* 80790C60  C0 3C 00 60 */	lfs f1, 0x60(r28)
/* 80790C64  EC 00 08 24 */	fdivs f0, f0, f1
/* 80790C68  FC 00 00 1E */	fctiwz f0, f0
/* 80790C6C  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80790C70  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80790C74  54 00 10 3A */	slwi r0, r0, 2
/* 80790C78  3C 60 80 79 */	lis r3, time_scale@ha
/* 80790C7C  38 63 1F 4C */	addi r3, r3, time_scale@l
/* 80790C80  7C 03 04 2E */	lfsx f0, r3, r0
/* 80790C84  EC 02 00 32 */	fmuls f0, f2, f0
/* 80790C88  EF FF 00 32 */	fmuls f31, f31, f0
/* 80790C8C  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80790C90  C0 1C 01 14 */	lfs f0, 0x114(r28)
/* 80790C94  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790C98  C0 1C 00 E0 */	lfs f0, 0xe0(r28)
/* 80790C9C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790CA0  48 00 00 1C */	b lbl_80790CBC
lbl_80790CA4:
/* 80790CA4  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 80790CA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790CAC  C0 1C 01 14 */	lfs f0, 0x114(r28)
/* 80790CB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790CB4  C0 1C 01 1C */	lfs f0, 0x11c(r28)
/* 80790CB8  D0 01 00 50 */	stfs f0, 0x50(r1)
lbl_80790CBC:
/* 80790CBC  38 61 00 48 */	addi r3, r1, 0x48
/* 80790CC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790CC4  4B AE 02 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 80790CC8  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80790CCC  C0 41 00 40 */	lfs f2, 0x40(r1)
/* 80790CD0  C0 61 00 44 */	lfs f3, 0x44(r1)
/* 80790CD4  38 60 00 00 */	li r3, 0
/* 80790CD8  4B AE 01 84 */	b MtxTrans__FfffUc
/* 80790CDC  80 75 00 00 */	lwz r3, 0(r21)
/* 80790CE0  7F 04 C3 78 */	mr r4, r24
/* 80790CE4  4B 87 B7 50 */	b mDoMtx_YrotM__FPA4_fs
/* 80790CE8  80 75 00 00 */	lwz r3, 0(r21)
/* 80790CEC  7F 24 CB 78 */	mr r4, r25
/* 80790CF0  4B 87 B6 AC */	b mDoMtx_XrotM__FPA4_fs
/* 80790CF4  FC 20 F8 90 */	fmr f1, f31
/* 80790CF8  FC 40 F8 90 */	fmr f2, f31
/* 80790CFC  FC 60 F8 90 */	fmr f3, f31
/* 80790D00  38 60 00 01 */	li r3, 1
/* 80790D04  4B AE 01 A0 */	b MtxScale__FfffUc
/* 80790D08  80 75 00 00 */	lwz r3, 0(r21)
/* 80790D0C  38 16 06 64 */	addi r0, r22, 0x664
/* 80790D10  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80790D14  38 84 00 24 */	addi r4, r4, 0x24
/* 80790D18  4B BB 57 98 */	b PSMTXCopy
/* 80790D1C  4B AE 02 3C */	b MtxPull__Fv
/* 80790D20  3A F7 00 01 */	addi r23, r23, 1
/* 80790D24  2C 17 00 02 */	cmpwi r23, 2
/* 80790D28  3A D6 00 04 */	addi r22, r22, 4
/* 80790D2C  41 80 FD 90 */	blt lbl_80790ABC
/* 80790D30  38 60 00 00 */	li r3, 0
/* 80790D34  38 00 00 02 */	li r0, 2
/* 80790D38  7C 09 03 A6 */	mtctr r0
lbl_80790D3C:
/* 80790D3C  88 1F 0C E9 */	lbz r0, 0xce9(r31)
/* 80790D40  7C 00 07 75 */	extsb. r0, r0
/* 80790D44  41 82 00 18 */	beq lbl_80790D5C
/* 80790D48  38 83 09 48 */	addi r4, r3, 0x948
/* 80790D4C  7C 1F 20 2E */	lwzx r0, r31, r4
/* 80790D50  60 00 00 01 */	ori r0, r0, 1
/* 80790D54  7C 1F 21 2E */	stwx r0, r31, r4
/* 80790D58  48 00 00 14 */	b lbl_80790D6C
lbl_80790D5C:
/* 80790D5C  38 83 09 48 */	addi r4, r3, 0x948
/* 80790D60  7C 1F 20 2E */	lwzx r0, r31, r4
/* 80790D64  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 80790D68  7C 1F 21 2E */	stwx r0, r31, r4
lbl_80790D6C:
/* 80790D6C  38 63 01 38 */	addi r3, r3, 0x138
/* 80790D70  42 00 FF CC */	bdnz lbl_80790D3C
/* 80790D74  38 00 00 01 */	li r0, 1
/* 80790D78  98 1F 0C E9 */	stb r0, 0xce9(r31)
/* 80790D7C  C0 1C 01 20 */	lfs f0, 0x120(r28)
/* 80790D80  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80790D84  C0 1C 01 24 */	lfs f0, 0x124(r28)
/* 80790D88  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80790D8C  C0 1C 01 28 */	lfs f0, 0x128(r28)
/* 80790D90  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80790D94  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80790D98  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80790D9C  38 63 00 60 */	addi r3, r3, 0x60
/* 80790DA0  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80790DA4  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80790DA8  80 84 00 00 */	lwz r4, 0(r4)
/* 80790DAC  4B BB 57 04 */	b PSMTXCopy
/* 80790DB0  C0 1C 00 60 */	lfs f0, 0x60(r28)
/* 80790DB4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790DB8  C0 1C 01 2C */	lfs f0, 0x12c(r28)
/* 80790DBC  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790DC0  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790DC4  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790DC8  38 61 00 48 */	addi r3, r1, 0x48
/* 80790DCC  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790DD0  4B AE 01 1C */	b MtxPosition__FP4cXyzP4cXyz
/* 80790DD4  38 7F 0B 78 */	addi r3, r31, 0xb78
/* 80790DD8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790DDC  4B AD E8 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 80790DE0  38 7F 0B 78 */	addi r3, r31, 0xb78
/* 80790DE4  C0 3C 00 A4 */	lfs f1, 0xa4(r28)
/* 80790DE8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80790DEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80790DF0  4B AD E9 18 */	b SetR__8cM3dGSphFf
/* 80790DF4  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 80790DF8  2C 00 00 00 */	cmpwi r0, 0
/* 80790DFC  41 82 00 24 */	beq lbl_80790E20
/* 80790E00  38 61 00 18 */	addi r3, r1, 0x18
/* 80790E04  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790E08  38 A1 00 30 */	addi r5, r1, 0x30
/* 80790E0C  4B AD 5C D8 */	b __pl__4cXyzCFRC3Vec
/* 80790E10  38 7F 0B 78 */	addi r3, r31, 0xb78
/* 80790E14  38 81 00 18 */	addi r4, r1, 0x18
/* 80790E18  4B AD E8 30 */	b SetC__8cM3dGSphFRC4cXyz
/* 80790E1C  48 00 00 10 */	b lbl_80790E2C
lbl_80790E20:
/* 80790E20  38 7F 0B 78 */	addi r3, r31, 0xb78
/* 80790E24  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790E28  4B AD E8 20 */	b SetC__8cM3dGSphFRC4cXyz
lbl_80790E2C:
/* 80790E2C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80790E30  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80790E34  3A A3 23 3C */	addi r21, r3, 0x233c
/* 80790E38  7E A3 AB 78 */	mr r3, r21
/* 80790E3C  38 9F 0A 54 */	addi r4, r31, 0xa54
/* 80790E40  4B AD 3D 68 */	b Set__4cCcSFP8cCcD_Obj
/* 80790E44  80 7B 00 84 */	lwz r3, 0x84(r27)
/* 80790E48  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80790E4C  38 63 02 70 */	addi r3, r3, 0x270
/* 80790E50  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 80790E54  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 80790E58  80 84 00 00 */	lwz r4, 0(r4)
/* 80790E5C  4B BB 56 54 */	b PSMTXCopy
/* 80790E60  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790E64  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790E68  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790E6C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790E70  38 61 00 48 */	addi r3, r1, 0x48
/* 80790E74  38 9F 05 38 */	addi r4, r31, 0x538
/* 80790E78  4B AE 00 74 */	b MtxPosition__FP4cXyzP4cXyz
/* 80790E7C  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 80790E80  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 80790E84  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 80790E88  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80790E8C  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 80790E90  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 80790E94  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 80790E98  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 80790E9C  EC 01 00 2A */	fadds f0, f1, f0
/* 80790EA0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 80790EA4  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80790EA8  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790EAC  C0 1C 01 30 */	lfs f0, 0x130(r28)
/* 80790EB0  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790EB4  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790EB8  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790EBC  38 61 00 48 */	addi r3, r1, 0x48
/* 80790EC0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790EC4  4B AE 00 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 80790EC8  88 1F 0C E8 */	lbz r0, 0xce8(r31)
/* 80790ECC  7C 00 07 75 */	extsb. r0, r0
/* 80790ED0  41 82 00 30 */	beq lbl_80790F00
/* 80790ED4  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 80790ED8  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790EDC  4B AD E7 6C */	b SetC__8cM3dGSphFRC4cXyz
/* 80790EE0  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 80790EE4  C0 3C 01 34 */	lfs f1, 0x134(r28)
/* 80790EE8  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80790EEC  EC 21 00 32 */	fmuls f1, f1, f0
/* 80790EF0  4B AD E8 18 */	b SetR__8cM3dGSphFf
/* 80790EF4  38 00 00 00 */	li r0, 0
/* 80790EF8  98 1F 0C E8 */	stb r0, 0xce8(r31)
/* 80790EFC  48 00 00 10 */	b lbl_80790F0C
lbl_80790F00:
/* 80790F00  38 7F 0C B0 */	addi r3, r31, 0xcb0
/* 80790F04  38 81 00 30 */	addi r4, r1, 0x30
/* 80790F08  4B AD E7 40 */	b SetC__8cM3dGSphFRC4cXyz
lbl_80790F0C:
/* 80790F0C  7E A3 AB 78 */	mr r3, r21
/* 80790F10  38 9F 0B 8C */	addi r4, r31, 0xb8c
/* 80790F14  4B AD 3C 94 */	b Set__4cCcSFP8cCcD_Obj
/* 80790F18  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80790F1C  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 80790F20  C0 1C 00 A8 */	lfs f0, 0xa8(r28)
/* 80790F24  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80790F28  C0 1C 00 04 */	lfs f0, 4(r28)
/* 80790F2C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80790F30  38 61 00 48 */	addi r3, r1, 0x48
/* 80790F34  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790F38  4B AD FF B4 */	b MtxPosition__FP4cXyzP4cXyz
/* 80790F3C  A8 1F 06 A0 */	lha r0, 0x6a0(r31)
/* 80790F40  2C 00 00 00 */	cmpwi r0, 0
/* 80790F44  41 82 00 24 */	beq lbl_80790F68
/* 80790F48  38 61 00 0C */	addi r3, r1, 0xc
/* 80790F4C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790F50  38 A1 00 30 */	addi r5, r1, 0x30
/* 80790F54  4B AD 5B 90 */	b __pl__4cXyzCFRC3Vec
/* 80790F58  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80790F5C  38 81 00 0C */	addi r4, r1, 0xc
/* 80790F60  4B AD E6 E8 */	b SetC__8cM3dGSphFRC4cXyz
/* 80790F64  48 00 00 10 */	b lbl_80790F74
lbl_80790F68:
/* 80790F68  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80790F6C  38 81 00 3C */	addi r4, r1, 0x3c
/* 80790F70  4B AD E6 D8 */	b SetC__8cM3dGSphFRC4cXyz
lbl_80790F74:
/* 80790F74  38 7F 0A 40 */	addi r3, r31, 0xa40
/* 80790F78  C0 3C 00 5C */	lfs f1, 0x5c(r28)
/* 80790F7C  C0 1D 00 08 */	lfs f0, 8(r29)
/* 80790F80  EC 21 00 32 */	fmuls f1, f1, f0
/* 80790F84  4B AD E7 84 */	b SetR__8cM3dGSphFf
/* 80790F88  7E A3 AB 78 */	mr r3, r21
/* 80790F8C  38 9F 09 1C */	addi r4, r31, 0x91c
/* 80790F90  4B AD 3C 18 */	b Set__4cCcSFP8cCcD_Obj
/* 80790F94  7F E3 FB 78 */	mr r3, r31
/* 80790F98  4B FF F2 E1 */	bl eff_set__FP10e_sh_class
/* 80790F9C  38 60 00 01 */	li r3, 1
/* 80790FA0  E3 E1 00 98 */	psq_l f31, 152(r1), 0, 0 /* qr0 */
/* 80790FA4  CB E1 00 90 */	lfd f31, 0x90(r1)
/* 80790FA8  39 61 00 90 */	addi r11, r1, 0x90
/* 80790FAC  4B BD 12 5C */	b _restgpr_21
/* 80790FB0  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80790FB4  7C 08 03 A6 */	mtlr r0
/* 80790FB8  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80790FBC  4E 80 00 20 */	blr 
