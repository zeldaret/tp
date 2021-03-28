lbl_80D2CF98:
/* 80D2CF98  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80D2CF9C  7C 08 02 A6 */	mflr r0
/* 80D2CFA0  90 01 00 74 */	stw r0, 0x74(r1)
/* 80D2CFA4  39 61 00 70 */	addi r11, r1, 0x70
/* 80D2CFA8  4B 63 52 20 */	b _savegpr_24
/* 80D2CFAC  7C 7E 1B 78 */	mr r30, r3
/* 80D2CFB0  3C 60 80 D3 */	lis r3, lit_3746@ha
/* 80D2CFB4  C0 03 E8 00 */	lfs f0, lit_3746@l(r3)
/* 80D2CFB8  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80D2CFBC  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80D2CFC0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80D2CFC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2CFC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2CFCC  C0 3E 0B 24 */	lfs f1, 0xb24(r30)
/* 80D2CFD0  C0 5E 0B 28 */	lfs f2, 0xb28(r30)
/* 80D2CFD4  C0 7E 0B 2C */	lfs f3, 0xb2c(r30)
/* 80D2CFD8  4B 61 99 10 */	b PSMTXTrans
/* 80D2CFDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2CFE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D2CFE4  38 81 00 38 */	addi r4, r1, 0x38
/* 80D2CFE8  7C 85 23 78 */	mr r5, r4
/* 80D2CFEC  4B 61 9D 80 */	b PSMTXMultVec
/* 80D2CFF0  38 61 00 20 */	addi r3, r1, 0x20
/* 80D2CFF4  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80D2CFF8  38 A1 00 38 */	addi r5, r1, 0x38
/* 80D2CFFC  4B 53 9A E8 */	b __pl__4cXyzCFRC3Vec
/* 80D2D000  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80D2D004  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 80D2D008  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 80D2D00C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80D2D010  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D2D014  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D2D018  D0 5E 0B 6C */	stfs f2, 0xb6c(r30)
/* 80D2D01C  D0 3E 0B 70 */	stfs f1, 0xb70(r30)
/* 80D2D020  D0 1E 0B 74 */	stfs f0, 0xb74(r30)
/* 80D2D024  C0 3E 0B 70 */	lfs f1, 0xb70(r30)
/* 80D2D028  C0 1E 0A E0 */	lfs f0, 0xae0(r30)
/* 80D2D02C  EC 01 00 2A */	fadds f0, f1, f0
/* 80D2D030  D0 1E 0B 70 */	stfs f0, 0xb70(r30)
/* 80D2D034  3B 00 00 00 */	li r24, 0
/* 80D2D038  3B A0 00 00 */	li r29, 0
/* 80D2D03C  3B 80 00 00 */	li r28, 0
/* 80D2D040  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D2D044  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80D2D048  3C 60 80 D3 */	lis r3, l_eff@ha
/* 80D2D04C  3B 43 EA 04 */	addi r26, r3, l_eff@l
/* 80D2D050  3C 60 80 D3 */	lis r3, lit_3645@ha
/* 80D2D054  3B 63 E7 70 */	addi r27, r3, lit_3645@l
lbl_80D2D058:
/* 80D2D058  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2D05C  38 00 00 FF */	li r0, 0xff
/* 80D2D060  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D064  38 80 00 00 */	li r4, 0
/* 80D2D068  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D06C  38 00 FF FF */	li r0, -1
/* 80D2D070  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D074  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D078  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D07C  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D080  3B 3C 0B 48 */	addi r25, r28, 0xb48
/* 80D2D084  7C 9E C8 2E */	lwzx r4, r30, r25
/* 80D2D088  38 A0 00 00 */	li r5, 0
/* 80D2D08C  7C DA EA 2E */	lhzx r6, r26, r29
/* 80D2D090  38 FE 0B 6C */	addi r7, r30, 0xb6c
/* 80D2D094  39 00 00 00 */	li r8, 0
/* 80D2D098  39 20 00 00 */	li r9, 0
/* 80D2D09C  39 40 00 00 */	li r10, 0
/* 80D2D0A0  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D2D0A4  4B 32 04 28 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D0A8  7C 7E C9 2E */	stwx r3, r30, r25
/* 80D2D0AC  3B 18 00 01 */	addi r24, r24, 1
/* 80D2D0B0  2C 18 00 03 */	cmpwi r24, 3
/* 80D2D0B4  3B BD 00 02 */	addi r29, r29, 2
/* 80D2D0B8  3B 9C 00 04 */	addi r28, r28, 4
/* 80D2D0BC  41 80 FF 9C */	blt lbl_80D2D058
/* 80D2D0C0  88 1E 0B 79 */	lbz r0, 0xb79(r30)
/* 80D2D0C4  28 00 00 00 */	cmplwi r0, 0
/* 80D2D0C8  40 82 00 60 */	bne lbl_80D2D128
/* 80D2D0CC  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2D0D0  38 00 00 FF */	li r0, 0xff
/* 80D2D0D4  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D0D8  38 80 00 00 */	li r4, 0
/* 80D2D0DC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D0E0  38 00 FF FF */	li r0, -1
/* 80D2D0E4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D0E8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D0EC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D0F0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D0F4  80 9E 0B 54 */	lwz r4, 0xb54(r30)
/* 80D2D0F8  38 A0 00 00 */	li r5, 0
/* 80D2D0FC  3C C0 80 D3 */	lis r6, l_eff@ha
/* 80D2D100  38 C6 EA 04 */	addi r6, r6, l_eff@l
/* 80D2D104  A0 C6 00 06 */	lhz r6, 6(r6)
/* 80D2D108  38 FE 0B 6C */	addi r7, r30, 0xb6c
/* 80D2D10C  39 00 00 00 */	li r8, 0
/* 80D2D110  39 20 00 00 */	li r9, 0
/* 80D2D114  39 40 00 00 */	li r10, 0
/* 80D2D118  3D 60 80 D3 */	lis r11, lit_3645@ha
/* 80D2D11C  C0 2B E7 70 */	lfs f1, lit_3645@l(r11)
/* 80D2D120  4B 32 03 AC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D124  90 7E 0B 54 */	stw r3, 0xb54(r30)
lbl_80D2D128:
/* 80D2D128  88 1E 0B 45 */	lbz r0, 0xb45(r30)
/* 80D2D12C  28 00 00 00 */	cmplwi r0, 0
/* 80D2D130  41 82 00 60 */	beq lbl_80D2D190
/* 80D2D134  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2D138  38 00 00 FF */	li r0, 0xff
/* 80D2D13C  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D140  38 80 00 00 */	li r4, 0
/* 80D2D144  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D148  38 00 FF FF */	li r0, -1
/* 80D2D14C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D150  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D154  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D158  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D15C  80 9E 0B 58 */	lwz r4, 0xb58(r30)
/* 80D2D160  38 A0 00 00 */	li r5, 0
/* 80D2D164  3C C0 80 D3 */	lis r6, l_eff@ha
/* 80D2D168  38 C6 EA 04 */	addi r6, r6, l_eff@l
/* 80D2D16C  A0 C6 00 08 */	lhz r6, 8(r6)
/* 80D2D170  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80D2D174  39 00 00 00 */	li r8, 0
/* 80D2D178  39 20 00 00 */	li r9, 0
/* 80D2D17C  39 40 00 00 */	li r10, 0
/* 80D2D180  3D 60 80 D3 */	lis r11, lit_3645@ha
/* 80D2D184  C0 2B E7 70 */	lfs f1, lit_3645@l(r11)
/* 80D2D188  4B 32 03 44 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D18C  90 7E 0B 58 */	stw r3, 0xb58(r30)
lbl_80D2D190:
/* 80D2D190  88 1E 0B 46 */	lbz r0, 0xb46(r30)
/* 80D2D194  28 00 00 00 */	cmplwi r0, 0
/* 80D2D198  41 82 00 60 */	beq lbl_80D2D1F8
/* 80D2D19C  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2D1A0  38 00 00 FF */	li r0, 0xff
/* 80D2D1A4  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D1A8  38 80 00 00 */	li r4, 0
/* 80D2D1AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D1B0  38 00 FF FF */	li r0, -1
/* 80D2D1B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D1B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D1BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D1C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D1C4  80 9E 0B 5C */	lwz r4, 0xb5c(r30)
/* 80D2D1C8  38 A0 00 00 */	li r5, 0
/* 80D2D1CC  3C C0 80 D3 */	lis r6, l_eff@ha
/* 80D2D1D0  38 C6 EA 04 */	addi r6, r6, l_eff@l
/* 80D2D1D4  A0 C6 00 0A */	lhz r6, 0xa(r6)
/* 80D2D1D8  38 FE 04 D0 */	addi r7, r30, 0x4d0
/* 80D2D1DC  39 00 00 00 */	li r8, 0
/* 80D2D1E0  39 20 00 00 */	li r9, 0
/* 80D2D1E4  39 40 00 00 */	li r10, 0
/* 80D2D1E8  3D 60 80 D3 */	lis r11, lit_3645@ha
/* 80D2D1EC  C0 2B E7 70 */	lfs f1, lit_3645@l(r11)
/* 80D2D1F0  4B 32 02 DC */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D1F4  90 7E 0B 5C */	stw r3, 0xb5c(r30)
lbl_80D2D1F8:
/* 80D2D1F8  88 1E 0B 79 */	lbz r0, 0xb79(r30)
/* 80D2D1FC  28 00 00 00 */	cmplwi r0, 0
/* 80D2D200  41 82 00 60 */	beq lbl_80D2D260
/* 80D2D204  80 7F 5D 3C */	lwz r3, 0x5d3c(r31)
/* 80D2D208  38 00 00 FF */	li r0, 0xff
/* 80D2D20C  90 01 00 08 */	stw r0, 8(r1)
/* 80D2D210  38 80 00 00 */	li r4, 0
/* 80D2D214  90 81 00 0C */	stw r4, 0xc(r1)
/* 80D2D218  38 00 FF FF */	li r0, -1
/* 80D2D21C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D2D220  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D2D224  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D2D228  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80D2D22C  80 9E 0B 60 */	lwz r4, 0xb60(r30)
/* 80D2D230  38 A0 00 00 */	li r5, 0
/* 80D2D234  3C C0 80 D3 */	lis r6, l_eff@ha
/* 80D2D238  38 C6 EA 04 */	addi r6, r6, l_eff@l
/* 80D2D23C  A0 C6 00 0C */	lhz r6, 0xc(r6)
/* 80D2D240  38 FE 0B 6C */	addi r7, r30, 0xb6c
/* 80D2D244  39 00 00 00 */	li r8, 0
/* 80D2D248  39 20 00 00 */	li r9, 0
/* 80D2D24C  39 40 00 00 */	li r10, 0
/* 80D2D250  3D 60 80 D3 */	lis r11, lit_3645@ha
/* 80D2D254  C0 2B E7 70 */	lfs f1, lit_3645@l(r11)
/* 80D2D258  4B 32 02 74 */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D2D25C  90 7E 0B 60 */	stw r3, 0xb60(r30)
lbl_80D2D260:
/* 80D2D260  39 61 00 70 */	addi r11, r1, 0x70
/* 80D2D264  4B 63 4F B0 */	b _restgpr_24
/* 80D2D268  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80D2D26C  7C 08 03 A6 */	mtlr r0
/* 80D2D270  38 21 00 70 */	addi r1, r1, 0x70
/* 80D2D274  4E 80 00 20 */	blr 
