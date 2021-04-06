lbl_8045F058:
/* 8045F058  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8045F05C  7C 08 02 A6 */	mflr r0
/* 8045F060  90 01 00 74 */	stw r0, 0x74(r1)
/* 8045F064  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8045F068  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8045F06C  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 8045F070  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 8045F074  DB A1 00 40 */	stfd f29, 0x40(r1)
/* 8045F078  F3 A1 00 48 */	psq_st f29, 72(r1), 0, 0 /* qr0 */
/* 8045F07C  39 61 00 40 */	addi r11, r1, 0x40
/* 8045F080  4B F0 31 5D */	bl _savegpr_29
/* 8045F084  7C 7E 1B 78 */	mr r30, r3
/* 8045F088  FF A0 08 90 */	fmr f29, f1
/* 8045F08C  FF C0 10 90 */	fmr f30, f2
/* 8045F090  FF E0 18 90 */	fmr f31, f3
/* 8045F094  3C 60 80 46 */	lis r3, lit_3876@ha /* 0x80460668@ha */
/* 8045F098  3B A3 06 68 */	addi r29, r3, lit_3876@l /* 0x80460668@l */
/* 8045F09C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8045F0A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8045F0A4  83 E3 5D AC */	lwz r31, 0x5dac(r3)
/* 8045F0A8  38 61 00 0C */	addi r3, r1, 0xc
/* 8045F0AC  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 8045F0B0  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 8045F0B4  4B E0 7A 81 */	bl __mi__4cXyzCFRC3Vec
/* 8045F0B8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8045F0BC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8045F0C0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8045F0C4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8045F0C8  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8045F0CC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8045F0D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045F0D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045F0D8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 8045F0DC  7C 00 00 D0 */	neg r0, r0
/* 8045F0E0  7C 04 07 34 */	extsh r4, r0
/* 8045F0E4  4B BA D2 F9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8045F0E8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045F0EC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045F0F0  38 81 00 18 */	addi r4, r1, 0x18
/* 8045F0F4  7C 85 23 78 */	mr r5, r4
/* 8045F0F8  4B EE 7C 75 */	bl PSMTXMultVec
/* 8045F0FC  38 61 00 18 */	addi r3, r1, 0x18
/* 8045F100  4B EE 80 39 */	bl PSVECSquareMag
/* 8045F104  C0 1D 00 08 */	lfs f0, 8(r29)
/* 8045F108  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F10C  40 81 00 58 */	ble lbl_8045F164
/* 8045F110  FC 00 08 34 */	frsqrte f0, f1
/* 8045F114  C8 9D 00 18 */	lfd f4, 0x18(r29)
/* 8045F118  FC 44 00 32 */	fmul f2, f4, f0
/* 8045F11C  C8 7D 00 20 */	lfd f3, 0x20(r29)
/* 8045F120  FC 00 00 32 */	fmul f0, f0, f0
/* 8045F124  FC 01 00 32 */	fmul f0, f1, f0
/* 8045F128  FC 03 00 28 */	fsub f0, f3, f0
/* 8045F12C  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F130  FC 44 00 32 */	fmul f2, f4, f0
/* 8045F134  FC 00 00 32 */	fmul f0, f0, f0
/* 8045F138  FC 01 00 32 */	fmul f0, f1, f0
/* 8045F13C  FC 03 00 28 */	fsub f0, f3, f0
/* 8045F140  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F144  FC 44 00 32 */	fmul f2, f4, f0
/* 8045F148  FC 00 00 32 */	fmul f0, f0, f0
/* 8045F14C  FC 01 00 32 */	fmul f0, f1, f0
/* 8045F150  FC 03 00 28 */	fsub f0, f3, f0
/* 8045F154  FC 02 00 32 */	fmul f0, f2, f0
/* 8045F158  FC 21 00 32 */	fmul f1, f1, f0
/* 8045F15C  FC 20 08 18 */	frsp f1, f1
/* 8045F160  48 00 00 88 */	b lbl_8045F1E8
lbl_8045F164:
/* 8045F164  C8 1D 00 28 */	lfd f0, 0x28(r29)
/* 8045F168  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8045F16C  40 80 00 10 */	bge lbl_8045F17C
/* 8045F170  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8045F174  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8045F178  48 00 00 70 */	b lbl_8045F1E8
lbl_8045F17C:
/* 8045F17C  D0 21 00 08 */	stfs f1, 8(r1)
/* 8045F180  80 81 00 08 */	lwz r4, 8(r1)
/* 8045F184  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8045F188  3C 00 7F 80 */	lis r0, 0x7f80
/* 8045F18C  7C 03 00 00 */	cmpw r3, r0
/* 8045F190  41 82 00 14 */	beq lbl_8045F1A4
/* 8045F194  40 80 00 40 */	bge lbl_8045F1D4
/* 8045F198  2C 03 00 00 */	cmpwi r3, 0
/* 8045F19C  41 82 00 20 */	beq lbl_8045F1BC
/* 8045F1A0  48 00 00 34 */	b lbl_8045F1D4
lbl_8045F1A4:
/* 8045F1A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8045F1A8  41 82 00 0C */	beq lbl_8045F1B4
/* 8045F1AC  38 00 00 01 */	li r0, 1
/* 8045F1B0  48 00 00 28 */	b lbl_8045F1D8
lbl_8045F1B4:
/* 8045F1B4  38 00 00 02 */	li r0, 2
/* 8045F1B8  48 00 00 20 */	b lbl_8045F1D8
lbl_8045F1BC:
/* 8045F1BC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8045F1C0  41 82 00 0C */	beq lbl_8045F1CC
/* 8045F1C4  38 00 00 05 */	li r0, 5
/* 8045F1C8  48 00 00 10 */	b lbl_8045F1D8
lbl_8045F1CC:
/* 8045F1CC  38 00 00 03 */	li r0, 3
/* 8045F1D0  48 00 00 08 */	b lbl_8045F1D8
lbl_8045F1D4:
/* 8045F1D4  38 00 00 04 */	li r0, 4
lbl_8045F1D8:
/* 8045F1D8  2C 00 00 01 */	cmpwi r0, 1
/* 8045F1DC  40 82 00 0C */	bne lbl_8045F1E8
/* 8045F1E0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8045F1E4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8045F1E8:
/* 8045F1E8  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8045F1EC  40 81 00 0C */	ble lbl_8045F1F8
/* 8045F1F0  38 60 00 00 */	li r3, 0
/* 8045F1F4  48 00 00 78 */	b lbl_8045F26C
lbl_8045F1F8:
/* 8045F1F8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8045F1FC  FC 00 02 10 */	fabs f0, f0
/* 8045F200  FC 00 00 18 */	frsp f0, f0
/* 8045F204  FC 00 E8 40 */	fcmpo cr0, f0, f29
/* 8045F208  40 81 00 0C */	ble lbl_8045F214
/* 8045F20C  38 60 00 00 */	li r3, 0
/* 8045F210  48 00 00 5C */	b lbl_8045F26C
lbl_8045F214:
/* 8045F214  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8045F218  FC 00 02 10 */	fabs f0, f0
/* 8045F21C  FC 00 00 18 */	frsp f0, f0
/* 8045F220  FC 00 F0 40 */	fcmpo cr0, f0, f30
/* 8045F224  40 81 00 0C */	ble lbl_8045F230
/* 8045F228  38 60 00 00 */	li r3, 0
/* 8045F22C  48 00 00 40 */	b lbl_8045F26C
lbl_8045F230:
/* 8045F230  A8 7E 04 DE */	lha r3, 0x4de(r30)
/* 8045F234  88 1E 06 0F */	lbz r0, 0x60f(r30)
/* 8045F238  28 00 00 01 */	cmplwi r0, 1
/* 8045F23C  40 82 00 0C */	bne lbl_8045F248
/* 8045F240  38 03 7F FF */	addi r0, r3, 0x7fff
/* 8045F244  7C 03 07 34 */	extsh r3, r0
lbl_8045F248:
/* 8045F248  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 8045F24C  7C 00 18 50 */	subf r0, r0, r3
/* 8045F250  7C 03 07 34 */	extsh r3, r0
/* 8045F254  4B F0 5E 7D */	bl abs
/* 8045F258  2C 03 50 00 */	cmpwi r3, 0x5000
/* 8045F25C  40 80 00 0C */	bge lbl_8045F268
/* 8045F260  38 60 00 00 */	li r3, 0
/* 8045F264  48 00 00 08 */	b lbl_8045F26C
lbl_8045F268:
/* 8045F268  38 60 00 01 */	li r3, 1
lbl_8045F26C:
/* 8045F26C  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8045F270  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8045F274  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 8045F278  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 8045F27C  E3 A1 00 48 */	psq_l f29, 72(r1), 0, 0 /* qr0 */
/* 8045F280  CB A1 00 40 */	lfd f29, 0x40(r1)
/* 8045F284  39 61 00 40 */	addi r11, r1, 0x40
/* 8045F288  4B F0 2F A1 */	bl _restgpr_29
/* 8045F28C  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8045F290  7C 08 03 A6 */	mtlr r0
/* 8045F294  38 21 00 70 */	addi r1, r1, 0x70
/* 8045F298  4E 80 00 20 */	blr 
