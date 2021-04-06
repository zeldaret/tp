lbl_80B8F00C:
/* 80B8F00C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B8F010  7C 08 02 A6 */	mflr r0
/* 80B8F014  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B8F018  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B8F01C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B8F020  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80B8F024  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80B8F028  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80B8F02C  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80B8F030  39 61 00 90 */	addi r11, r1, 0x90
/* 80B8F034  4B 7D 31 95 */	bl _savegpr_24
/* 80B8F038  7C 7D 1B 78 */	mr r29, r3
/* 80B8F03C  3C 60 80 B9 */	lis r3, lit_1109@ha /* 0x80B93C10@ha */
/* 80B8F040  3B C3 3C 10 */	addi r30, r3, lit_1109@l /* 0x80B93C10@l */
/* 80B8F044  3C 60 80 B9 */	lis r3, m__17daNpc_zrC_Param_c@ha /* 0x80B931FC@ha */
/* 80B8F048  3B E3 31 FC */	addi r31, r3, m__17daNpc_zrC_Param_c@l /* 0x80B931FC@l */
/* 80B8F04C  88 1E 00 5C */	lbz r0, 0x5c(r30)
/* 80B8F050  7C 00 07 75 */	extsb. r0, r0
/* 80B8F054  40 82 00 34 */	bne lbl_80B8F088
/* 80B8F058  C0 1F 00 B4 */	lfs f0, 0xb4(r31)
/* 80B8F05C  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80B8F060  38 7E 00 60 */	addi r3, r30, 0x60
/* 80B8F064  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B8F068  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B8F06C  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B8F070  3C 80 80 B9 */	lis r4, __dt__4cXyzFv@ha /* 0x80B92AB8@ha */
/* 80B8F074  38 84 2A B8 */	addi r4, r4, __dt__4cXyzFv@l /* 0x80B92AB8@l */
/* 80B8F078  38 BE 00 50 */	addi r5, r30, 0x50
/* 80B8F07C  4B FF EB 1D */	bl __register_global_object
/* 80B8F080  38 00 00 01 */	li r0, 1
/* 80B8F084  98 1E 00 5C */	stb r0, 0x5c(r30)
lbl_80B8F088:
/* 80B8F088  C3 FF 00 00 */	lfs f31, 0(r31)
/* 80B8F08C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F090  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F094  A8 9D 09 90 */	lha r4, 0x990(r29)
/* 80B8F098  4B 47 D3 45 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8F09C  38 7D 09 84 */	addi r3, r29, 0x984
/* 80B8F0A0  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80B8F0A4  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80B8F0A8  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80B8F0AC  4B 6E 09 91 */	bl cLib_addCalc2__FPffff
/* 80B8F0B0  38 7D 09 8C */	addi r3, r29, 0x98c
/* 80B8F0B4  C0 3F 00 9C */	lfs f1, 0x9c(r31)
/* 80B8F0B8  C0 5F 00 B8 */	lfs f2, 0xb8(r31)
/* 80B8F0BC  C0 7F 00 BC */	lfs f3, 0xbc(r31)
/* 80B8F0C0  4B 6E 09 7D */	bl cLib_addCalc2__FPffff
/* 80B8F0C4  3B 00 00 00 */	li r24, 0
/* 80B8F0C8  3B 80 00 00 */	li r28, 0
/* 80B8F0CC  3B 60 00 00 */	li r27, 0
/* 80B8F0D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 80B8F0D4  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 80B8F0D8  C3 DF 00 9C */	lfs f30, 0x9c(r31)
/* 80B8F0DC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F0E0  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_80B8F0E4:
/* 80B8F0E4  A8 1D 09 92 */	lha r0, 0x992(r29)
/* 80B8F0E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B8F0EC  7C 39 04 2E */	lfsx f1, r25, r0
/* 80B8F0F0  38 1B 09 84 */	addi r0, r27, 0x984
/* 80B8F0F4  7C 1D 04 2E */	lfsx f0, r29, r0
/* 80B8F0F8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B8F0FC  D3 C1 00 30 */	stfs f30, 0x30(r1)
/* 80B8F100  D3 C1 00 34 */	stfs f30, 0x34(r1)
/* 80B8F104  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B8F108  7F 43 D3 78 */	mr r3, r26
/* 80B8F10C  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8F110  38 A1 00 24 */	addi r5, r1, 0x24
/* 80B8F114  4B 7B 7C 59 */	bl PSMTXMultVec
/* 80B8F118  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80B8F11C  FC 00 00 50 */	fneg f0, f0
/* 80B8F120  FC 00 00 1E */	fctiwz f0, f0
/* 80B8F124  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 80B8F128  80 01 00 5C */	lwz r0, 0x5c(r1)
/* 80B8F12C  7C 7D E2 14 */	add r3, r29, r28
/* 80B8F130  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80B8F134  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 80B8F138  FC 00 00 50 */	fneg f0, f0
/* 80B8F13C  FC 00 00 1E */	fctiwz f0, f0
/* 80B8F140  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B8F144  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B8F148  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80B8F14C  3B 18 00 01 */	addi r24, r24, 1
/* 80B8F150  2C 18 00 03 */	cmpwi r24, 3
/* 80B8F154  3B 9C 00 06 */	addi r28, r28, 6
/* 80B8F158  3B 7B 00 04 */	addi r27, r27, 4
/* 80B8F15C  41 80 FF 88 */	blt lbl_80B8F0E4
/* 80B8F160  38 7D 09 92 */	addi r3, r29, 0x992
/* 80B8F164  38 80 00 00 */	li r4, 0
/* 80B8F168  38 A0 05 55 */	li r5, 0x555
/* 80B8F16C  4B 6E 15 65 */	bl cLib_chaseS__FPsss
/* 80B8F170  A8 1D 0E 24 */	lha r0, 0xe24(r29)
/* 80B8F174  2C 00 00 01 */	cmpwi r0, 1
/* 80B8F178  40 82 00 2C */	bne lbl_80B8F1A4
/* 80B8F17C  38 60 00 00 */	li r3, 0
/* 80B8F180  38 80 00 00 */	li r4, 0
/* 80B8F184  38 00 00 03 */	li r0, 3
/* 80B8F188  7C 09 03 A6 */	mtctr r0
lbl_80B8F18C:
/* 80B8F18C  7C BD 1A 14 */	add r5, r29, r3
/* 80B8F190  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80B8F194  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80B8F198  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80B8F19C  38 63 00 06 */	addi r3, r3, 6
/* 80B8F1A0  42 00 FF EC */	bdnz lbl_80B8F18C
lbl_80B8F1A4:
/* 80B8F1A4  7F A3 EB 78 */	mr r3, r29
/* 80B8F1A8  81 9D 0B 44 */	lwz r12, 0xb44(r29)
/* 80B8F1AC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B8F1B0  7D 89 03 A6 */	mtctr r12
/* 80B8F1B4  4E 80 04 21 */	bctrl 
/* 80B8F1B8  7F A3 EB 78 */	mr r3, r29
/* 80B8F1BC  48 00 1F A5 */	bl lookat__11daNpc_zrC_cFv
/* 80B8F1C0  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8F1C4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8F1C8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8F1CC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8F1D0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8F1D4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F1D8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F1DC  4B 7B 72 D5 */	bl PSMTXCopy
/* 80B8F1E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F1E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F1E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80B8F1EC  D0 1D 08 E4 */	stfs f0, 0x8e4(r29)
/* 80B8F1F0  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80B8F1F4  D0 1D 08 E8 */	stfs f0, 0x8e8(r29)
/* 80B8F1F8  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8F1FC  D0 1D 08 EC */	stfs f0, 0x8ec(r29)
/* 80B8F200  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B8F204  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B8F208  4B 7B 7B 65 */	bl PSMTXMultVec
/* 80B8F20C  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B8F210  D0 1E 00 60 */	stfs f0, 0x60(r30)
/* 80B8F214  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F218  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F21C  38 9E 00 60 */	addi r4, r30, 0x60
/* 80B8F220  38 A1 00 30 */	addi r5, r1, 0x30
/* 80B8F224  4B 7B 7B 49 */	bl PSMTXMultVec
/* 80B8F228  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B8F22C  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8F230  4B 6E 1A 45 */	bl cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8F234  B0 7D 09 02 */	sth r3, 0x902(r29)
/* 80B8F238  38 7D 08 E4 */	addi r3, r29, 0x8e4
/* 80B8F23C  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8F240  4B 6E 19 C5 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8F244  B0 7D 09 04 */	sth r3, 0x904(r29)
/* 80B8F248  80 9D 0C 0C */	lwz r4, 0xc0c(r29)
/* 80B8F24C  28 04 00 00 */	cmplwi r4, 0
/* 80B8F250  41 82 01 84 */	beq lbl_80B8F3D4
/* 80B8F254  38 61 00 18 */	addi r3, r1, 0x18
/* 80B8F258  38 BD 05 38 */	addi r5, r29, 0x538
/* 80B8F25C  4B 6D 78 D9 */	bl __mi__4cXyzCFRC3Vec
/* 80B8F260  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80B8F264  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8F268  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B8F26C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8F270  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 80B8F274  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8F278  A8 7D 09 28 */	lha r3, 0x928(r29)
/* 80B8F27C  A8 1D 08 F2 */	lha r0, 0x8f2(r29)
/* 80B8F280  7C 03 02 14 */	add r0, r3, r0
/* 80B8F284  7C 00 00 D0 */	neg r0, r0
/* 80B8F288  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B8F28C  C0 21 00 3C */	lfs f1, 0x3c(r1)
/* 80B8F290  C0 41 00 44 */	lfs f2, 0x44(r1)
/* 80B8F294  4B 6D 83 E1 */	bl cM_atan2s__Fff
/* 80B8F298  A8 1D 08 FE */	lha r0, 0x8fe(r29)
/* 80B8F29C  7C 00 1A 14 */	add r0, r0, r3
/* 80B8F2A0  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B8F2A4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B8F2A8  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B8F2AC  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B8F2B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B8F2B4  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80B8F2B8  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B8F2BC  38 61 00 0C */	addi r3, r1, 0xc
/* 80B8F2C0  4B 7B 7E 79 */	bl PSVECSquareMag
/* 80B8F2C4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B8F2C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8F2CC  40 81 00 58 */	ble lbl_80B8F324
/* 80B8F2D0  FC 00 08 34 */	frsqrte f0, f1
/* 80B8F2D4  C8 9F 00 C0 */	lfd f4, 0xc0(r31)
/* 80B8F2D8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8F2DC  C8 7F 00 C8 */	lfd f3, 0xc8(r31)
/* 80B8F2E0  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8F2E4  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8F2E8  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8F2EC  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8F2F0  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8F2F4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8F2F8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8F2FC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8F300  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8F304  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8F308  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8F30C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8F310  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8F314  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8F318  FC 41 00 32 */	fmul f2, f1, f0
/* 80B8F31C  FC 40 10 18 */	frsp f2, f2
/* 80B8F320  48 00 00 90 */	b lbl_80B8F3B0
lbl_80B8F324:
/* 80B8F324  C8 1F 00 D0 */	lfd f0, 0xd0(r31)
/* 80B8F328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8F32C  40 80 00 10 */	bge lbl_80B8F33C
/* 80B8F330  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8F334  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8F338  48 00 00 78 */	b lbl_80B8F3B0
lbl_80B8F33C:
/* 80B8F33C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B8F340  80 81 00 08 */	lwz r4, 8(r1)
/* 80B8F344  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8F348  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8F34C  7C 03 00 00 */	cmpw r3, r0
/* 80B8F350  41 82 00 14 */	beq lbl_80B8F364
/* 80B8F354  40 80 00 40 */	bge lbl_80B8F394
/* 80B8F358  2C 03 00 00 */	cmpwi r3, 0
/* 80B8F35C  41 82 00 20 */	beq lbl_80B8F37C
/* 80B8F360  48 00 00 34 */	b lbl_80B8F394
lbl_80B8F364:
/* 80B8F364  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8F368  41 82 00 0C */	beq lbl_80B8F374
/* 80B8F36C  38 00 00 01 */	li r0, 1
/* 80B8F370  48 00 00 28 */	b lbl_80B8F398
lbl_80B8F374:
/* 80B8F374  38 00 00 02 */	li r0, 2
/* 80B8F378  48 00 00 20 */	b lbl_80B8F398
lbl_80B8F37C:
/* 80B8F37C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8F380  41 82 00 0C */	beq lbl_80B8F38C
/* 80B8F384  38 00 00 05 */	li r0, 5
/* 80B8F388  48 00 00 10 */	b lbl_80B8F398
lbl_80B8F38C:
/* 80B8F38C  38 00 00 03 */	li r0, 3
/* 80B8F390  48 00 00 08 */	b lbl_80B8F398
lbl_80B8F394:
/* 80B8F394  38 00 00 04 */	li r0, 4
lbl_80B8F398:
/* 80B8F398  2C 00 00 01 */	cmpwi r0, 1
/* 80B8F39C  40 82 00 10 */	bne lbl_80B8F3AC
/* 80B8F3A0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80B8F3A4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80B8F3A8  48 00 00 08 */	b lbl_80B8F3B0
lbl_80B8F3AC:
/* 80B8F3AC  FC 40 08 90 */	fmr f2, f1
lbl_80B8F3B0:
/* 80B8F3B0  C0 21 00 40 */	lfs f1, 0x40(r1)
/* 80B8F3B4  4B 6D 82 C1 */	bl cM_atan2s__Fff
/* 80B8F3B8  7C 03 00 D0 */	neg r0, r3
/* 80B8F3BC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80B8F3C0  A8 7D 08 FC */	lha r3, 0x8fc(r29)
/* 80B8F3C4  A8 1D 09 02 */	lha r0, 0x902(r29)
/* 80B8F3C8  7C 03 02 14 */	add r0, r3, r0
/* 80B8F3CC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
/* 80B8F3D0  48 00 00 10 */	b lbl_80B8F3E0
lbl_80B8F3D4:
/* 80B8F3D4  38 00 00 00 */	li r0, 0
/* 80B8F3D8  B0 1D 08 FE */	sth r0, 0x8fe(r29)
/* 80B8F3DC  B0 1D 08 FC */	sth r0, 0x8fc(r29)
lbl_80B8F3E0:
/* 80B8F3E0  88 1D 0E 28 */	lbz r0, 0xe28(r29)
/* 80B8F3E4  28 00 00 01 */	cmplwi r0, 1
/* 80B8F3E8  40 82 00 6C */	bne lbl_80B8F454
/* 80B8F3EC  C3 DF 00 D8 */	lfs f30, 0xd8(r31)
/* 80B8F3F0  C3 BF 00 DC */	lfs f29, 0xdc(r31)
/* 80B8F3F4  C0 1F 00 9C */	lfs f0, 0x9c(r31)
/* 80B8F3F8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8F3FC  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8F400  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8F404  80 7D 05 68 */	lwz r3, 0x568(r29)
/* 80B8F408  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8F40C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8F410  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8F414  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F418  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F41C  4B 7B 70 95 */	bl PSMTXCopy
/* 80B8F420  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8F424  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8F428  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B8F42C  38 A1 00 48 */	addi r5, r1, 0x48
/* 80B8F430  4B 7B 79 3D */	bl PSMTXMultVec
/* 80B8F434  C0 41 00 50 */	lfs f2, 0x50(r1)
/* 80B8F438  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B8F43C  EC 20 F8 2A */	fadds f1, f0, f31
/* 80B8F440  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B8F444  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80B8F448  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80B8F44C  D0 5D 05 58 */	stfs f2, 0x558(r29)
/* 80B8F450  48 00 00 48 */	b lbl_80B8F498
lbl_80B8F454:
/* 80B8F454  C3 DF 00 9C */	lfs f30, 0x9c(r31)
/* 80B8F458  FF A0 F0 90 */	fmr f29, f30
/* 80B8F45C  D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 80B8F460  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 80B8F464  D3 C1 00 44 */	stfs f30, 0x44(r1)
/* 80B8F468  C0 5D 08 E4 */	lfs f2, 0x8e4(r29)
/* 80B8F46C  D0 41 00 48 */	stfs f2, 0x48(r1)
/* 80B8F470  C0 3D 08 E8 */	lfs f1, 0x8e8(r29)
/* 80B8F474  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80B8F478  C0 1D 08 EC */	lfs f0, 0x8ec(r29)
/* 80B8F47C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80B8F480  EC 21 F8 2A */	fadds f1, f1, f31
/* 80B8F484  D0 5D 05 50 */	stfs f2, 0x550(r29)
/* 80B8F488  D0 3D 05 54 */	stfs f1, 0x554(r29)
/* 80B8F48C  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80B8F490  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B8F494  D0 01 00 4C */	stfs f0, 0x4c(r1)
lbl_80B8F498:
/* 80B8F498  88 1D 09 F2 */	lbz r0, 0x9f2(r29)
/* 80B8F49C  28 00 00 00 */	cmplwi r0, 0
/* 80B8F4A0  40 82 00 88 */	bne lbl_80B8F528
/* 80B8F4A4  88 1D 09 F0 */	lbz r0, 0x9f0(r29)
/* 80B8F4A8  28 00 00 00 */	cmplwi r0, 0
/* 80B8F4AC  40 82 00 28 */	bne lbl_80B8F4D4
/* 80B8F4B0  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B8F4B4  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B8F4B8  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80B8F4BC  38 00 00 1F */	li r0, 0x1f
/* 80B8F4C0  90 1D 0C AC */	stw r0, 0xcac(r29)
/* 80B8F4C4  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 80B8F4C8  60 00 00 04 */	ori r0, r0, 4
/* 80B8F4CC  90 1D 0D 30 */	stw r0, 0xd30(r29)
/* 80B8F4D0  48 00 00 10 */	b lbl_80B8F4E0
lbl_80B8F4D4:
/* 80B8F4D4  38 00 00 00 */	li r0, 0
/* 80B8F4D8  90 1D 0C BC */	stw r0, 0xcbc(r29)
/* 80B8F4DC  90 1D 0C AC */	stw r0, 0xcac(r29)
lbl_80B8F4E0:
/* 80B8F4E0  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80B8F4E4  38 81 00 48 */	addi r4, r1, 0x48
/* 80B8F4E8  4B 6D FC F5 */	bl SetC__8cM3dGCylFRC4cXyz
/* 80B8F4EC  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80B8F4F0  38 9F 00 00 */	addi r4, r31, 0
/* 80B8F4F4  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80B8F4F8  EC 20 F0 2A */	fadds f1, f0, f30
/* 80B8F4FC  4B 6D FC FD */	bl SetH__8cM3dGCylFf
/* 80B8F500  38 7D 0D B8 */	addi r3, r29, 0xdb8
/* 80B8F504  38 9F 00 00 */	addi r4, r31, 0
/* 80B8F508  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80B8F50C  EC 20 E8 2A */	fadds f1, f0, f29
/* 80B8F510  4B 6D FC F1 */	bl SetR__8cM3dGCylFf
/* 80B8F514  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80B8F518  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80B8F51C  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B8F520  38 9D 0C 94 */	addi r4, r29, 0xc94
/* 80B8F524  4B 6D 56 85 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80B8F528:
/* 80B8F528  38 7D 0C 94 */	addi r3, r29, 0xc94
/* 80B8F52C  81 9D 0C D0 */	lwz r12, 0xcd0(r29)
/* 80B8F530  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B8F534  7D 89 03 A6 */	mtctr r12
/* 80B8F538  4E 80 04 21 */	bctrl 
/* 80B8F53C  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B8F540  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B8F544  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80B8F548  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80B8F54C  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80B8F550  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80B8F554  39 61 00 90 */	addi r11, r1, 0x90
/* 80B8F558  4B 7D 2C BD */	bl _restgpr_24
/* 80B8F55C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B8F560  7C 08 03 A6 */	mtlr r0
/* 80B8F564  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B8F568  4E 80 00 20 */	blr 
