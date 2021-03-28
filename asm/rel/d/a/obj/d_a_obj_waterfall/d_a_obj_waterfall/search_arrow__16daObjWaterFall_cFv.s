lbl_80D2F034:
/* 80D2F034  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80D2F038  7C 08 02 A6 */	mflr r0
/* 80D2F03C  90 01 00 84 */	stw r0, 0x84(r1)
/* 80D2F040  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80D2F044  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80D2F048  DB C1 00 60 */	stfd f30, 0x60(r1)
/* 80D2F04C  F3 C1 00 68 */	psq_st f30, 104(r1), 0, 0 /* qr0 */
/* 80D2F050  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2F054  4B 63 31 70 */	b _savegpr_23
/* 80D2F058  7C 78 1B 78 */	mr r24, r3
/* 80D2F05C  3C 60 80 D3 */	lis r3, lit_3807@ha
/* 80D2F060  3B 63 FD 58 */	addi r27, r3, lit_3807@l
/* 80D2F064  80 78 00 B0 */	lwz r3, 0xb0(r24)
/* 80D2F068  54 60 C7 BF */	rlwinm. r0, r3, 0x18, 0x1e, 0x1f
/* 80D2F06C  41 82 02 90 */	beq lbl_80D2F2FC
/* 80D2F070  54 60 B7 3E */	rlwinm r0, r3, 0x16, 0x1c, 0x1f
/* 80D2F074  2C 00 00 01 */	cmpwi r0, 1
/* 80D2F078  40 82 00 08 */	bne lbl_80D2F080
/* 80D2F07C  48 00 02 80 */	b lbl_80D2F2FC
lbl_80D2F080:
/* 80D2F080  38 A0 00 00 */	li r5, 0
/* 80D2F084  3C 60 80 D3 */	lis r3, target_info_count@ha
/* 80D2F088  90 A3 FE 78 */	stw r5, target_info_count@l(r3)
/* 80D2F08C  7C A3 2B 78 */	mr r3, r5
/* 80D2F090  3C 80 80 D3 */	lis r4, target_info@ha
/* 80D2F094  38 84 FE 50 */	addi r4, r4, target_info@l
/* 80D2F098  38 00 00 0A */	li r0, 0xa
/* 80D2F09C  7C 09 03 A6 */	mtctr r0
lbl_80D2F0A0:
/* 80D2F0A0  7C A4 19 2E */	stwx r5, r4, r3
/* 80D2F0A4  38 63 00 04 */	addi r3, r3, 4
/* 80D2F0A8  42 00 FF F8 */	bdnz lbl_80D2F0A0
/* 80D2F0AC  3C 60 80 D3 */	lis r3, s_a_sub__FPvPv@ha
/* 80D2F0B0  38 63 EC A4 */	addi r3, r3, s_a_sub__FPvPv@l
/* 80D2F0B4  7F 04 C3 78 */	mr r4, r24
/* 80D2F0B8  4B 2F 22 80 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D2F0BC  3C 60 80 D3 */	lis r3, target_info_count@ha
/* 80D2F0C0  3B 83 FE 78 */	addi r28, r3, target_info_count@l
/* 80D2F0C4  80 1C 00 00 */	lwz r0, 0(r28)
/* 80D2F0C8  2C 00 00 00 */	cmpwi r0, 0
/* 80D2F0CC  41 82 02 30 */	beq lbl_80D2F2FC
/* 80D2F0D0  3B 40 00 00 */	li r26, 0
/* 80D2F0D4  3A E0 00 00 */	li r23, 0
/* 80D2F0D8  3C 60 80 D3 */	lis r3, target_info@ha
/* 80D2F0DC  3B A3 FE 50 */	addi r29, r3, target_info@l
/* 80D2F0E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D2F0E4  3B C3 D4 70 */	addi r30, r3, now__14mDoMtx_stack_c@l
/* 80D2F0E8  7F DF F3 78 */	mr r31, r30
/* 80D2F0EC  C3 FB 00 00 */	lfs f31, 0(r27)
/* 80D2F0F0  C3 DB 00 04 */	lfs f30, 4(r27)
/* 80D2F0F4  48 00 01 FC */	b lbl_80D2F2F0
lbl_80D2F0F8:
/* 80D2F0F8  7F 3D B8 2E */	lwzx r25, r29, r23
/* 80D2F0FC  38 61 00 14 */	addi r3, r1, 0x14
/* 80D2F100  38 99 04 BC */	addi r4, r25, 0x4bc
/* 80D2F104  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80D2F108  4B 53 7A 2C */	b __mi__4cXyzCFRC3Vec
/* 80D2F10C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80D2F110  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80D2F114  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 80D2F118  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80D2F11C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80D2F120  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80D2F124  38 61 00 08 */	addi r3, r1, 8
/* 80D2F128  38 99 04 D0 */	addi r4, r25, 0x4d0
/* 80D2F12C  38 B8 04 D0 */	addi r5, r24, 0x4d0
/* 80D2F130  4B 53 7A 04 */	b __mi__4cXyzCFRC3Vec
/* 80D2F134  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D2F138  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80D2F13C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D2F140  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80D2F144  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D2F148  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80D2F14C  7F C3 F3 78 */	mr r3, r30
/* 80D2F150  A8 18 04 DE */	lha r0, 0x4de(r24)
/* 80D2F154  7C 00 00 D0 */	neg r0, r0
/* 80D2F158  7C 04 07 34 */	extsh r4, r0
/* 80D2F15C  4B 2D D2 80 */	b mDoMtx_YrotS__FPA4_fs
/* 80D2F160  7F C3 F3 78 */	mr r3, r30
/* 80D2F164  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D2F168  7C 85 23 78 */	mr r5, r4
/* 80D2F16C  4B 61 7C 00 */	b PSMTXMultVec
/* 80D2F170  7F E3 FB 78 */	mr r3, r31
/* 80D2F174  38 81 00 20 */	addi r4, r1, 0x20
/* 80D2F178  7C 85 23 78 */	mr r5, r4
/* 80D2F17C  4B 61 7B F0 */	b PSMTXMultVec
/* 80D2F180  38 60 00 00 */	li r3, 0
/* 80D2F184  7C 60 1B 78 */	mr r0, r3
/* 80D2F188  C0 21 00 34 */	lfs f1, 0x34(r1)
/* 80D2F18C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80D2F190  EC 21 00 32 */	fmuls f1, f1, f0
/* 80D2F194  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80D2F198  40 80 00 64 */	bge lbl_80D2F1FC
/* 80D2F19C  C0 A1 00 2C */	lfs f5, 0x2c(r1)
/* 80D2F1A0  C0 7B 00 04 */	lfs f3, 4(r27)
/* 80D2F1A4  C0 98 04 EC */	lfs f4, 0x4ec(r24)
/* 80D2F1A8  FC 20 20 50 */	fneg f1, f4
/* 80D2F1AC  EC 43 00 72 */	fmuls f2, f3, f1
/* 80D2F1B0  FC 05 10 40 */	fcmpo cr0, f5, f2
/* 80D2F1B4  40 81 00 48 */	ble lbl_80D2F1FC
/* 80D2F1B8  EC 23 01 32 */	fmuls f1, f3, f4
/* 80D2F1BC  FC 05 08 40 */	fcmpo cr0, f5, f1
/* 80D2F1C0  40 80 00 3C */	bge lbl_80D2F1FC
/* 80D2F1C4  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80D2F1C8  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80D2F1CC  40 81 00 30 */	ble lbl_80D2F1FC
/* 80D2F1D0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F1D4  40 80 00 28 */	bge lbl_80D2F1FC
/* 80D2F1D8  C0 61 00 30 */	lfs f3, 0x30(r1)
/* 80D2F1DC  FC 03 F8 40 */	fcmpo cr0, f3, f31
/* 80D2F1E0  40 81 00 1C */	ble lbl_80D2F1FC
/* 80D2F1E4  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2F1E8  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2F1EC  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2F1F0  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F1F4  40 80 00 08 */	bge lbl_80D2F1FC
/* 80D2F1F8  38 00 00 01 */	li r0, 1
lbl_80D2F1FC:
/* 80D2F1FC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2F200  41 82 00 3C */	beq lbl_80D2F23C
/* 80D2F204  38 00 00 00 */	li r0, 0
/* 80D2F208  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80D2F20C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D2F210  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F214  40 81 00 1C */	ble lbl_80D2F230
/* 80D2F218  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2F21C  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2F220  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2F224  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F228  40 80 00 08 */	bge lbl_80D2F230
/* 80D2F22C  38 00 00 01 */	li r0, 1
lbl_80D2F230:
/* 80D2F230  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2F234  41 82 00 08 */	beq lbl_80D2F23C
/* 80D2F238  38 60 00 01 */	li r3, 1
lbl_80D2F23C:
/* 80D2F23C  38 80 00 00 */	li r4, 0
/* 80D2F240  7C 80 23 78 */	mr r0, r4
/* 80D2F244  C0 61 00 20 */	lfs f3, 0x20(r1)
/* 80D2F248  C0 58 04 EC */	lfs f2, 0x4ec(r24)
/* 80D2F24C  FC 20 10 50 */	fneg f1, f2
/* 80D2F250  EC 3E 00 72 */	fmuls f1, f30, f1
/* 80D2F254  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F258  40 81 00 38 */	ble lbl_80D2F290
/* 80D2F25C  EC 3E 00 B2 */	fmuls f1, f30, f2
/* 80D2F260  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F264  40 80 00 2C */	bge lbl_80D2F290
/* 80D2F268  C0 61 00 24 */	lfs f3, 0x24(r1)
/* 80D2F26C  C0 3B 00 00 */	lfs f1, 0(r27)
/* 80D2F270  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F274  40 81 00 1C */	ble lbl_80D2F290
/* 80D2F278  C0 5B 00 08 */	lfs f2, 8(r27)
/* 80D2F27C  C0 38 04 F0 */	lfs f1, 0x4f0(r24)
/* 80D2F280  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2F284  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80D2F288  40 80 00 08 */	bge lbl_80D2F290
/* 80D2F28C  38 00 00 01 */	li r0, 1
lbl_80D2F290:
/* 80D2F290  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2F294  41 82 00 3C */	beq lbl_80D2F2D0
/* 80D2F298  38 00 00 00 */	li r0, 0
/* 80D2F29C  C0 5B 00 04 */	lfs f2, 4(r27)
/* 80D2F2A0  C0 78 04 F4 */	lfs f3, 0x4f4(r24)
/* 80D2F2A4  FC 20 18 50 */	fneg f1, f3
/* 80D2F2A8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80D2F2AC  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D2F2B0  40 81 00 14 */	ble lbl_80D2F2C4
/* 80D2F2B4  EC 22 00 F2 */	fmuls f1, f2, f3
/* 80D2F2B8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D2F2BC  40 80 00 08 */	bge lbl_80D2F2C4
/* 80D2F2C0  38 00 00 01 */	li r0, 1
lbl_80D2F2C4:
/* 80D2F2C4  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D2F2C8  41 82 00 08 */	beq lbl_80D2F2D0
/* 80D2F2CC  38 80 00 01 */	li r4, 1
lbl_80D2F2D0:
/* 80D2F2D0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D2F2D4  40 82 00 0C */	bne lbl_80D2F2E0
/* 80D2F2D8  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D2F2DC  41 82 00 0C */	beq lbl_80D2F2E8
lbl_80D2F2E0:
/* 80D2F2E0  7F 23 CB 78 */	mr r3, r25
/* 80D2F2E4  4B 2E A9 98 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80D2F2E8:
/* 80D2F2E8  3B 5A 00 01 */	addi r26, r26, 1
/* 80D2F2EC  3A F7 00 04 */	addi r23, r23, 4
lbl_80D2F2F0:
/* 80D2F2F0  80 1C 00 00 */	lwz r0, 0(r28)
/* 80D2F2F4  7C 1A 00 00 */	cmpw r26, r0
/* 80D2F2F8  41 80 FE 00 */	blt lbl_80D2F0F8
lbl_80D2F2FC:
/* 80D2F2FC  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80D2F300  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80D2F304  E3 C1 00 68 */	psq_l f30, 104(r1), 0, 0 /* qr0 */
/* 80D2F308  CB C1 00 60 */	lfd f30, 0x60(r1)
/* 80D2F30C  39 61 00 60 */	addi r11, r1, 0x60
/* 80D2F310  4B 63 2F 00 */	b _restgpr_23
/* 80D2F314  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80D2F318  7C 08 03 A6 */	mtlr r0
/* 80D2F31C  38 21 00 80 */	addi r1, r1, 0x80
/* 80D2F320  4E 80 00 20 */	blr 
