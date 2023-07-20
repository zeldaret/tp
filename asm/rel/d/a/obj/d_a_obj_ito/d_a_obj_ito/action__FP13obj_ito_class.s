lbl_8047C034:
/* 8047C034  94 21 FC F0 */	stwu r1, -0x310(r1)
/* 8047C038  7C 08 02 A6 */	mflr r0
/* 8047C03C  90 01 03 14 */	stw r0, 0x314(r1)
/* 8047C040  DB E1 03 00 */	stfd f31, 0x300(r1)
/* 8047C044  F3 E1 03 08 */	psq_st f31, 776(r1), 0, 0 /* qr0 */
/* 8047C048  DB C1 02 F0 */	stfd f30, 0x2f0(r1)
/* 8047C04C  F3 C1 02 F8 */	psq_st f30, 760(r1), 0, 0 /* qr0 */
/* 8047C050  DB A1 02 E0 */	stfd f29, 0x2e0(r1)
/* 8047C054  F3 A1 02 E8 */	psq_st f29, 744(r1), 0, 0 /* qr0 */
/* 8047C058  DB 81 02 D0 */	stfd f28, 0x2d0(r1)
/* 8047C05C  F3 81 02 D8 */	psq_st f28, 728(r1), 0, 0 /* qr0 */
/* 8047C060  DB 61 02 C0 */	stfd f27, 0x2c0(r1)
/* 8047C064  F3 61 02 C8 */	psq_st f27, 712(r1), 0, 0 /* qr0 */
/* 8047C068  DB 41 02 B0 */	stfd f26, 0x2b0(r1)
/* 8047C06C  F3 41 02 B8 */	psq_st f26, 696(r1), 0, 0 /* qr0 */
/* 8047C070  DB 21 02 A0 */	stfd f25, 0x2a0(r1)
/* 8047C074  F3 21 02 A8 */	psq_st f25, 680(r1), 0, 0 /* qr0 */
/* 8047C078  DB 01 02 90 */	stfd f24, 0x290(r1)
/* 8047C07C  F3 01 02 98 */	psq_st f24, 664(r1), 0, 0 /* qr0 */
/* 8047C080  39 61 02 90 */	addi r11, r1, 0x290
/* 8047C084  4B EE 61 1D */	bl _savegpr_14
/* 8047C088  7C 76 1B 78 */	mr r22, r3
/* 8047C08C  3C 60 80 48 */	lis r3, lit_3770@ha /* 0x8047D810@ha */
/* 8047C090  3B 03 D8 10 */	addi r24, r3, lit_3770@l /* 0x8047D810@l */
/* 8047C094  80 16 04 A4 */	lwz r0, 0x4a4(r22)
/* 8047C098  90 01 00 28 */	stw r0, 0x28(r1)
/* 8047C09C  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha /* 0x80023590@ha */
/* 8047C0A0  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l /* 0x80023590@l */
/* 8047C0A4  38 81 00 28 */	addi r4, r1, 0x28
/* 8047C0A8  4B B9 D7 51 */	bl fopAcIt_Judge__FPFPvPv_PvPv
/* 8047C0AC  7C 79 1B 79 */	or. r25, r3, r3
/* 8047C0B0  40 82 00 0C */	bne lbl_8047C0BC
/* 8047C0B4  38 00 00 01 */	li r0, 1
/* 8047C0B8  98 16 06 38 */	stb r0, 0x638(r22)
lbl_8047C0BC:
/* 8047C0BC  C0 16 04 EC */	lfs f0, 0x4ec(r22)
/* 8047C0C0  D0 16 06 34 */	stfs f0, 0x634(r22)
/* 8047C0C4  28 19 00 00 */	cmplwi r25, 0
/* 8047C0C8  41 82 01 14 */	beq lbl_8047C1DC
/* 8047C0CC  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047C0D0  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8047C0D4  38 63 06 14 */	addi r3, r3, 0x614
/* 8047C0D8  7C 79 1A 14 */	add r3, r25, r3
/* 8047C0DC  C0 16 06 18 */	lfs f0, 0x618(r22)
/* 8047C0E0  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047C0E4  C0 16 06 1C */	lfs f0, 0x61c(r22)
/* 8047C0E8  D0 03 00 04 */	stfs f0, 4(r3)
/* 8047C0EC  C0 16 06 20 */	lfs f0, 0x620(r22)
/* 8047C0F0  D0 03 00 08 */	stfs f0, 8(r3)
/* 8047C0F4  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047C0F8  1C 60 00 0C */	mulli r3, r0, 0xc
/* 8047C0FC  38 63 06 54 */	addi r3, r3, 0x654
/* 8047C100  7C 79 1A 14 */	add r3, r25, r3
/* 8047C104  C0 03 00 00 */	lfs f0, 0(r3)
/* 8047C108  D0 16 04 D0 */	stfs f0, 0x4d0(r22)
/* 8047C10C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8047C110  D0 16 04 D4 */	stfs f0, 0x4d4(r22)
/* 8047C114  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047C118  D0 16 04 D8 */	stfs f0, 0x4d8(r22)
/* 8047C11C  38 61 01 40 */	addi r3, r1, 0x140
/* 8047C120  38 96 06 18 */	addi r4, r22, 0x618
/* 8047C124  38 B6 04 D0 */	addi r5, r22, 0x4d0
/* 8047C128  4B DE AA 0D */	bl __mi__4cXyzCFRC3Vec
/* 8047C12C  C0 01 01 40 */	lfs f0, 0x140(r1)
/* 8047C130  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8047C134  C0 01 01 44 */	lfs f0, 0x144(r1)
/* 8047C138  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8047C13C  C0 01 01 48 */	lfs f0, 0x148(r1)
/* 8047C140  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 8047C144  38 61 01 34 */	addi r3, r1, 0x134
/* 8047C148  38 81 01 94 */	addi r4, r1, 0x194
/* 8047C14C  C0 38 00 24 */	lfs f1, 0x24(r24)
/* 8047C150  4B DE AA 35 */	bl __ml__4cXyzCFf
/* 8047C154  38 61 01 28 */	addi r3, r1, 0x128
/* 8047C158  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 8047C15C  38 A1 01 34 */	addi r5, r1, 0x134
/* 8047C160  4B DE A9 85 */	bl __pl__4cXyzCFRC3Vec
/* 8047C164  C0 01 01 28 */	lfs f0, 0x128(r1)
/* 8047C168  D0 16 06 24 */	stfs f0, 0x624(r22)
/* 8047C16C  C0 01 01 2C */	lfs f0, 0x12c(r1)
/* 8047C170  D0 16 06 28 */	stfs f0, 0x628(r22)
/* 8047C174  C0 01 01 30 */	lfs f0, 0x130(r1)
/* 8047C178  D0 16 06 2C */	stfs f0, 0x62c(r22)
/* 8047C17C  A8 19 06 0A */	lha r0, 0x60a(r25)
/* 8047C180  2C 00 00 00 */	cmpwi r0, 0
/* 8047C184  40 82 00 58 */	bne lbl_8047C1DC
/* 8047C188  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047C18C  1C 00 00 0C */	mulli r0, r0, 0xc
/* 8047C190  7C B9 02 14 */	add r5, r25, r0
/* 8047C194  38 61 01 1C */	addi r3, r1, 0x11c
/* 8047C198  38 85 06 54 */	addi r4, r5, 0x654
/* 8047C19C  38 A5 06 6C */	addi r5, r5, 0x66c
/* 8047C1A0  4B DE A9 95 */	bl __mi__4cXyzCFRC3Vec
/* 8047C1A4  C0 01 01 1C */	lfs f0, 0x11c(r1)
/* 8047C1A8  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8047C1AC  C0 01 01 20 */	lfs f0, 0x120(r1)
/* 8047C1B0  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8047C1B4  C0 01 01 24 */	lfs f0, 0x124(r1)
/* 8047C1B8  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 8047C1BC  38 61 01 10 */	addi r3, r1, 0x110
/* 8047C1C0  38 81 01 94 */	addi r4, r1, 0x194
/* 8047C1C4  C0 38 00 78 */	lfs f1, 0x78(r24)
/* 8047C1C8  4B DE A9 BD */	bl __ml__4cXyzCFf
/* 8047C1CC  38 76 06 24 */	addi r3, r22, 0x624
/* 8047C1D0  38 81 01 10 */	addi r4, r1, 0x110
/* 8047C1D4  7C 65 1B 78 */	mr r5, r3
/* 8047C1D8  4B EC AE B9 */	bl PSVECAdd
lbl_8047C1DC:
/* 8047C1DC  3C 60 80 48 */	lis r3, l_HIO@ha /* 0x8047D9D8@ha */
/* 8047C1E0  39 C3 D9 D8 */	addi r14, r3, l_HIO@l /* 0x8047D9D8@l */
/* 8047C1E4  A8 6E 00 10 */	lha r3, 0x10(r14)
/* 8047C1E8  7C 60 07 35 */	extsh. r0, r3
/* 8047C1EC  41 82 00 18 */	beq lbl_8047C204
/* 8047C1F0  88 16 10 38 */	lbz r0, 0x1038(r22)
/* 8047C1F4  7C 00 07 75 */	extsb. r0, r0
/* 8047C1F8  40 82 04 D0 */	bne lbl_8047C6C8
/* 8047C1FC  2C 03 00 01 */	cmpwi r3, 1
/* 8047C200  40 82 04 C8 */	bne lbl_8047C6C8
lbl_8047C204:
/* 8047C204  38 61 01 04 */	addi r3, r1, 0x104
/* 8047C208  38 96 06 24 */	addi r4, r22, 0x624
/* 8047C20C  38 B6 04 D0 */	addi r5, r22, 0x4d0
/* 8047C210  4B DE A9 25 */	bl __mi__4cXyzCFRC3Vec
/* 8047C214  C0 01 01 04 */	lfs f0, 0x104(r1)
/* 8047C218  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8047C21C  C0 01 01 08 */	lfs f0, 0x108(r1)
/* 8047C220  D0 01 01 98 */	stfs f0, 0x198(r1)
/* 8047C224  C0 01 01 0C */	lfs f0, 0x10c(r1)
/* 8047C228  D0 01 01 9C */	stfs f0, 0x19c(r1)
/* 8047C22C  88 16 06 38 */	lbz r0, 0x638(r22)
/* 8047C230  7C 00 07 75 */	extsb. r0, r0
/* 8047C234  40 82 01 10 */	bne lbl_8047C344
/* 8047C238  38 61 01 94 */	addi r3, r1, 0x194
/* 8047C23C  4B EC AE FD */	bl PSVECSquareMag
/* 8047C240  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047C244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C248  40 81 00 58 */	ble lbl_8047C2A0
/* 8047C24C  FC 00 08 34 */	frsqrte f0, f1
/* 8047C250  C8 98 00 50 */	lfd f4, 0x50(r24)
/* 8047C254  FC 44 00 32 */	fmul f2, f4, f0
/* 8047C258  C8 78 00 58 */	lfd f3, 0x58(r24)
/* 8047C25C  FC 00 00 32 */	fmul f0, f0, f0
/* 8047C260  FC 01 00 32 */	fmul f0, f1, f0
/* 8047C264  FC 03 00 28 */	fsub f0, f3, f0
/* 8047C268  FC 02 00 32 */	fmul f0, f2, f0
/* 8047C26C  FC 44 00 32 */	fmul f2, f4, f0
/* 8047C270  FC 00 00 32 */	fmul f0, f0, f0
/* 8047C274  FC 01 00 32 */	fmul f0, f1, f0
/* 8047C278  FC 03 00 28 */	fsub f0, f3, f0
/* 8047C27C  FC 02 00 32 */	fmul f0, f2, f0
/* 8047C280  FC 44 00 32 */	fmul f2, f4, f0
/* 8047C284  FC 00 00 32 */	fmul f0, f0, f0
/* 8047C288  FC 01 00 32 */	fmul f0, f1, f0
/* 8047C28C  FC 03 00 28 */	fsub f0, f3, f0
/* 8047C290  FC 02 00 32 */	fmul f0, f2, f0
/* 8047C294  FC 21 00 32 */	fmul f1, f1, f0
/* 8047C298  FC 20 08 18 */	frsp f1, f1
/* 8047C29C  48 00 00 88 */	b lbl_8047C324
lbl_8047C2A0:
/* 8047C2A0  C8 18 00 60 */	lfd f0, 0x60(r24)
/* 8047C2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C2A8  40 80 00 10 */	bge lbl_8047C2B8
/* 8047C2AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8047C2B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8047C2B4  48 00 00 70 */	b lbl_8047C324
lbl_8047C2B8:
/* 8047C2B8  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8047C2BC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 8047C2C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8047C2C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8047C2C8  7C 03 00 00 */	cmpw r3, r0
/* 8047C2CC  41 82 00 14 */	beq lbl_8047C2E0
/* 8047C2D0  40 80 00 40 */	bge lbl_8047C310
/* 8047C2D4  2C 03 00 00 */	cmpwi r3, 0
/* 8047C2D8  41 82 00 20 */	beq lbl_8047C2F8
/* 8047C2DC  48 00 00 34 */	b lbl_8047C310
lbl_8047C2E0:
/* 8047C2E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047C2E4  41 82 00 0C */	beq lbl_8047C2F0
/* 8047C2E8  38 00 00 01 */	li r0, 1
/* 8047C2EC  48 00 00 28 */	b lbl_8047C314
lbl_8047C2F0:
/* 8047C2F0  38 00 00 02 */	li r0, 2
/* 8047C2F4  48 00 00 20 */	b lbl_8047C314
lbl_8047C2F8:
/* 8047C2F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8047C2FC  41 82 00 0C */	beq lbl_8047C308
/* 8047C300  38 00 00 05 */	li r0, 5
/* 8047C304  48 00 00 10 */	b lbl_8047C314
lbl_8047C308:
/* 8047C308  38 00 00 03 */	li r0, 3
/* 8047C30C  48 00 00 08 */	b lbl_8047C314
lbl_8047C310:
/* 8047C310  38 00 00 04 */	li r0, 4
lbl_8047C314:
/* 8047C314  2C 00 00 01 */	cmpwi r0, 1
/* 8047C318  40 82 00 0C */	bne lbl_8047C324
/* 8047C31C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8047C320  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8047C324:
/* 8047C324  C0 58 00 7C */	lfs f2, 0x7c(r24)
/* 8047C328  3C 60 80 48 */	lis r3, l_HIO@ha /* 0x8047D9D8@ha */
/* 8047C32C  38 63 D9 D8 */	addi r3, r3, l_HIO@l /* 0x8047D9D8@l */
/* 8047C330  C0 03 00 08 */	lfs f0, 8(r3)
/* 8047C334  EC 00 00 72 */	fmuls f0, f0, f1
/* 8047C338  EC 02 00 32 */	fmuls f0, f2, f0
/* 8047C33C  D0 16 06 30 */	stfs f0, 0x630(r22)
/* 8047C340  48 00 00 34 */	b lbl_8047C374
lbl_8047C344:
/* 8047C344  38 76 06 30 */	addi r3, r22, 0x630
/* 8047C348  C0 38 00 2C */	lfs f1, 0x2c(r24)
/* 8047C34C  C0 58 00 24 */	lfs f2, 0x24(r24)
/* 8047C350  4B DF 37 31 */	bl cLib_addCalc0__FPfff
/* 8047C354  C0 36 06 30 */	lfs f1, 0x630(r22)
/* 8047C358  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 8047C35C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C360  4C 40 13 82 */	cror 2, 0, 2
/* 8047C364  40 82 00 10 */	bne lbl_8047C374
/* 8047C368  7E C3 B3 78 */	mr r3, r22
/* 8047C36C  4B B9 D9 11 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8047C370  48 00 0B 1C */	b lbl_8047CE8C
lbl_8047C374:
/* 8047C374  C0 21 01 98 */	lfs f1, 0x198(r1)
/* 8047C378  C0 41 01 9C */	lfs f2, 0x19c(r1)
/* 8047C37C  4B DE B2 F9 */	bl cM_atan2s__Fff
/* 8047C380  7C 03 00 D0 */	neg r0, r3
/* 8047C384  7C 0F 07 34 */	extsh r15, r0
/* 8047C388  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 8047C38C  EC 20 00 32 */	fmuls f1, f0, f0
/* 8047C390  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8047C394  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047C398  EC 41 00 2A */	fadds f2, f1, f0
/* 8047C39C  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047C3A0  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047C3A4  40 81 00 0C */	ble lbl_8047C3B0
/* 8047C3A8  FC 00 10 34 */	frsqrte f0, f2
/* 8047C3AC  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8047C3B0:
/* 8047C3B0  C0 21 01 94 */	lfs f1, 0x194(r1)
/* 8047C3B4  4B DE B2 C1 */	bl cM_atan2s__Fff
/* 8047C3B8  7C 70 07 34 */	extsh r16, r3
/* 8047C3BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C3C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C3C4  C0 36 04 D0 */	lfs f1, 0x4d0(r22)
/* 8047C3C8  C0 56 04 D4 */	lfs f2, 0x4d4(r22)
/* 8047C3CC  C0 76 04 D8 */	lfs f3, 0x4d8(r22)
/* 8047C3D0  4B EC A5 19 */	bl PSMTXTrans
/* 8047C3D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C3D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C3DC  7D E4 7B 78 */	mr r4, r15
/* 8047C3E0  4B B8 FF BD */	bl mDoMtx_XrotM__FPA4_fs
/* 8047C3E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C3E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C3EC  7E 04 83 78 */	mr r4, r16
/* 8047C3F0  4B B9 00 45 */	bl mDoMtx_YrotM__FPA4_fs
/* 8047C3F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C3F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C3FC  38 80 C0 00 */	li r4, -16384
/* 8047C400  4B B8 FF 9D */	bl mDoMtx_XrotM__FPA4_fs
/* 8047C404  28 19 00 00 */	cmplwi r25, 0
/* 8047C408  41 82 00 14 */	beq lbl_8047C41C
/* 8047C40C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C410  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C414  A8 99 06 4C */	lha r4, 0x64c(r25)
/* 8047C418  4B B9 00 1D */	bl mDoMtx_YrotM__FPA4_fs
lbl_8047C41C:
/* 8047C41C  C0 36 06 34 */	lfs f1, 0x634(r22)
/* 8047C420  C0 56 06 30 */	lfs f2, 0x630(r22)
/* 8047C424  FC 60 08 90 */	fmr f3, f1
/* 8047C428  4B B9 0A 11 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8047C42C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C430  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C434  80 96 05 74 */	lwz r4, 0x574(r22)
/* 8047C438  38 84 00 24 */	addi r4, r4, 0x24
/* 8047C43C  4B EC A0 75 */	bl PSMTXCopy
/* 8047C440  38 61 00 F8 */	addi r3, r1, 0xf8
/* 8047C444  38 96 06 24 */	addi r4, r22, 0x624
/* 8047C448  38 B6 06 18 */	addi r5, r22, 0x618
/* 8047C44C  4B DE A6 E9 */	bl __mi__4cXyzCFRC3Vec
/* 8047C450  C0 01 00 F8 */	lfs f0, 0xf8(r1)
/* 8047C454  D0 01 01 94 */	stfs f0, 0x194(r1)
/* 8047C458  C0 21 00 FC */	lfs f1, 0xfc(r1)
/* 8047C45C  D0 21 01 98 */	stfs f1, 0x198(r1)
/* 8047C460  C0 41 01 00 */	lfs f2, 0x100(r1)
/* 8047C464  D0 41 01 9C */	stfs f2, 0x19c(r1)
/* 8047C468  4B DE B2 0D */	bl cM_atan2s__Fff
/* 8047C46C  7C 03 00 D0 */	neg r0, r3
/* 8047C470  7C 0F 07 34 */	extsh r15, r0
/* 8047C474  C0 01 01 98 */	lfs f0, 0x198(r1)
/* 8047C478  EC 20 00 32 */	fmuls f1, f0, f0
/* 8047C47C  C0 01 01 9C */	lfs f0, 0x19c(r1)
/* 8047C480  EC 00 00 32 */	fmuls f0, f0, f0
/* 8047C484  EC 41 00 2A */	fadds f2, f1, f0
/* 8047C488  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047C48C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8047C490  40 81 00 0C */	ble lbl_8047C49C
/* 8047C494  FC 00 10 34 */	frsqrte f0, f2
/* 8047C498  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_8047C49C:
/* 8047C49C  C0 21 01 94 */	lfs f1, 0x194(r1)
/* 8047C4A0  4B DE B1 D5 */	bl cM_atan2s__Fff
/* 8047C4A4  7C 70 07 34 */	extsh r16, r3
/* 8047C4A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C4AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C4B0  C0 36 06 18 */	lfs f1, 0x618(r22)
/* 8047C4B4  C0 56 06 1C */	lfs f2, 0x61c(r22)
/* 8047C4B8  C0 76 06 20 */	lfs f3, 0x620(r22)
/* 8047C4BC  4B EC A4 2D */	bl PSMTXTrans
/* 8047C4C0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C4C4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C4C8  7D E4 7B 78 */	mr r4, r15
/* 8047C4CC  4B B8 FE D1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047C4D0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C4D4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C4D8  7E 04 83 78 */	mr r4, r16
/* 8047C4DC  4B B8 FF 59 */	bl mDoMtx_YrotM__FPA4_fs
/* 8047C4E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C4E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C4E8  38 80 C0 00 */	li r4, -16384
/* 8047C4EC  4B B8 FE B1 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047C4F0  28 19 00 00 */	cmplwi r25, 0
/* 8047C4F4  41 82 00 20 */	beq lbl_8047C514
/* 8047C4F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C4FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C500  A8 19 06 4C */	lha r0, 0x64c(r25)
/* 8047C504  7C 00 0E 70 */	srawi r0, r0, 1
/* 8047C508  7C 00 01 94 */	addze r0, r0
/* 8047C50C  7C 04 07 34 */	extsh r4, r0
/* 8047C510  4B B8 FF 25 */	bl mDoMtx_YrotM__FPA4_fs
lbl_8047C514:
/* 8047C514  C0 36 06 34 */	lfs f1, 0x634(r22)
/* 8047C518  C0 56 06 30 */	lfs f2, 0x630(r22)
/* 8047C51C  FC 60 08 90 */	fmr f3, f1
/* 8047C520  4B B9 09 19 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8047C524  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8047C528  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8047C52C  80 96 05 78 */	lwz r4, 0x578(r22)
/* 8047C530  38 84 00 24 */	addi r4, r4, 0x24
/* 8047C534  4B EC 9F 7D */	bl PSMTXCopy
/* 8047C538  88 16 15 09 */	lbz r0, 0x1509(r22)
/* 8047C53C  7C 00 07 75 */	extsb. r0, r0
/* 8047C540  41 82 01 88 */	beq lbl_8047C6C8
/* 8047C544  C0 16 14 F8 */	lfs f0, 0x14f8(r22)
/* 8047C548  D0 01 01 7C */	stfs f0, 0x17c(r1)
/* 8047C54C  C0 16 14 FC */	lfs f0, 0x14fc(r22)
/* 8047C550  D0 01 01 80 */	stfs f0, 0x180(r1)
/* 8047C554  C0 16 15 00 */	lfs f0, 0x1500(r22)
/* 8047C558  D0 01 01 84 */	stfs f0, 0x184(r1)
/* 8047C55C  38 61 00 EC */	addi r3, r1, 0xec
/* 8047C560  38 96 06 18 */	addi r4, r22, 0x618
/* 8047C564  38 B6 04 D0 */	addi r5, r22, 0x4d0
/* 8047C568  4B DE A5 CD */	bl __mi__4cXyzCFRC3Vec
/* 8047C56C  38 61 00 E0 */	addi r3, r1, 0xe0
/* 8047C570  38 81 00 EC */	addi r4, r1, 0xec
/* 8047C574  C0 36 15 04 */	lfs f1, 0x1504(r22)
/* 8047C578  4B DE A6 0D */	bl __ml__4cXyzCFf
/* 8047C57C  38 61 00 D4 */	addi r3, r1, 0xd4
/* 8047C580  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 8047C584  38 A1 00 E0 */	addi r5, r1, 0xe0
/* 8047C588  4B DE A5 5D */	bl __pl__4cXyzCFRC3Vec
/* 8047C58C  C0 01 00 D4 */	lfs f0, 0xd4(r1)
/* 8047C590  D0 16 14 F8 */	stfs f0, 0x14f8(r22)
/* 8047C594  C0 01 00 D8 */	lfs f0, 0xd8(r1)
/* 8047C598  D0 16 14 FC */	stfs f0, 0x14fc(r22)
/* 8047C59C  C0 01 00 DC */	lfs f0, 0xdc(r1)
/* 8047C5A0  D0 16 15 00 */	stfs f0, 0x1500(r22)
/* 8047C5A4  88 16 15 08 */	lbz r0, 0x1508(r22)
/* 8047C5A8  7C 00 07 75 */	extsb. r0, r0
/* 8047C5AC  40 82 00 38 */	bne lbl_8047C5E4
/* 8047C5B0  C0 36 15 04 */	lfs f1, 0x1504(r22)
/* 8047C5B4  C0 18 00 80 */	lfs f0, 0x80(r24)
/* 8047C5B8  EC 01 00 2A */	fadds f0, f1, f0
/* 8047C5BC  D0 16 15 04 */	stfs f0, 0x1504(r22)
/* 8047C5C0  C0 36 15 04 */	lfs f1, 0x1504(r22)
/* 8047C5C4  C0 18 00 2C */	lfs f0, 0x2c(r24)
/* 8047C5C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C5CC  4C 41 13 82 */	cror 2, 1, 2
/* 8047C5D0  40 82 00 44 */	bne lbl_8047C614
/* 8047C5D4  D0 16 15 04 */	stfs f0, 0x1504(r22)
/* 8047C5D8  38 00 00 01 */	li r0, 1
/* 8047C5DC  98 16 15 08 */	stb r0, 0x1508(r22)
/* 8047C5E0  48 00 00 34 */	b lbl_8047C614
lbl_8047C5E4:
/* 8047C5E4  C0 36 15 04 */	lfs f1, 0x1504(r22)
/* 8047C5E8  C0 18 00 80 */	lfs f0, 0x80(r24)
/* 8047C5EC  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047C5F0  D0 16 15 04 */	stfs f0, 0x1504(r22)
/* 8047C5F4  C0 36 15 04 */	lfs f1, 0x1504(r22)
/* 8047C5F8  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047C5FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8047C600  4C 40 13 82 */	cror 2, 0, 2
/* 8047C604  40 82 00 10 */	bne lbl_8047C614
/* 8047C608  D0 16 15 04 */	stfs f0, 0x1504(r22)
/* 8047C60C  38 00 00 00 */	li r0, 0
/* 8047C610  98 16 15 08 */	stb r0, 0x1508(r22)
lbl_8047C614:
/* 8047C614  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047C618  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047C61C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 8047C620  38 00 00 FF */	li r0, 0xff
/* 8047C624  90 01 00 08 */	stw r0, 8(r1)
/* 8047C628  38 80 00 00 */	li r4, 0
/* 8047C62C  90 81 00 0C */	stw r4, 0xc(r1)
/* 8047C630  38 00 FF FF */	li r0, -1
/* 8047C634  90 01 00 10 */	stw r0, 0x10(r1)
/* 8047C638  90 81 00 14 */	stw r4, 0x14(r1)
/* 8047C63C  90 81 00 18 */	stw r4, 0x18(r1)
/* 8047C640  90 81 00 1C */	stw r4, 0x1c(r1)
/* 8047C644  80 96 14 F4 */	lwz r4, 0x14f4(r22)
/* 8047C648  38 A0 00 00 */	li r5, 0
/* 8047C64C  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000840D@ha */
/* 8047C650  38 C6 84 0D */	addi r6, r6, 0x840D /* 0x0000840D@l */
/* 8047C654  38 F6 14 F8 */	addi r7, r22, 0x14f8
/* 8047C658  39 00 00 00 */	li r8, 0
/* 8047C65C  39 20 00 00 */	li r9, 0
/* 8047C660  39 40 00 00 */	li r10, 0
/* 8047C664  C0 38 00 2C */	lfs f1, 0x2c(r24)
/* 8047C668  4B BD 0E 65 */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 8047C66C  90 76 14 F4 */	stw r3, 0x14f4(r22)
/* 8047C670  88 16 04 E2 */	lbz r0, 0x4e2(r22)
/* 8047C674  7C 03 07 74 */	extsb r3, r0
/* 8047C678  4B BB 09 F5 */	bl dComIfGp_getReverb__Fi
/* 8047C67C  7C 67 1B 78 */	mr r7, r3
/* 8047C680  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080112@ha */
/* 8047C684  38 03 01 12 */	addi r0, r3, 0x0112 /* 0x00080112@l */
/* 8047C688  90 01 00 24 */	stw r0, 0x24(r1)
/* 8047C68C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 8047C690  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 8047C694  80 63 00 00 */	lwz r3, 0(r3)
/* 8047C698  38 81 00 24 */	addi r4, r1, 0x24
/* 8047C69C  38 B6 14 F8 */	addi r5, r22, 0x14f8
/* 8047C6A0  38 C0 00 00 */	li r6, 0
/* 8047C6A4  C0 38 00 2C */	lfs f1, 0x2c(r24)
/* 8047C6A8  FC 40 08 90 */	fmr f2, f1
/* 8047C6AC  C0 78 00 84 */	lfs f3, 0x84(r24)
/* 8047C6B0  FC 80 18 90 */	fmr f4, f3
/* 8047C6B4  39 00 00 00 */	li r8, 0
/* 8047C6B8  4B E2 FE 55 */	bl seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8047C6BC  88 76 15 09 */	lbz r3, 0x1509(r22)
/* 8047C6C0  38 03 00 01 */	addi r0, r3, 1
/* 8047C6C4  98 16 15 09 */	stb r0, 0x1509(r22)
lbl_8047C6C8:
/* 8047C6C8  C0 16 06 24 */	lfs f0, 0x624(r22)
/* 8047C6CC  D0 16 05 38 */	stfs f0, 0x538(r22)
/* 8047C6D0  C0 16 06 28 */	lfs f0, 0x628(r22)
/* 8047C6D4  D0 16 05 3C */	stfs f0, 0x53c(r22)
/* 8047C6D8  C0 16 06 2C */	lfs f0, 0x62c(r22)
/* 8047C6DC  D0 16 05 40 */	stfs f0, 0x540(r22)
/* 8047C6E0  C0 36 05 3C */	lfs f1, 0x53c(r22)
/* 8047C6E4  C0 18 00 70 */	lfs f0, 0x70(r24)
/* 8047C6E8  EC 01 00 2A */	fadds f0, f1, f0
/* 8047C6EC  D0 16 05 3C */	stfs f0, 0x53c(r22)
/* 8047C6F0  C0 16 05 38 */	lfs f0, 0x538(r22)
/* 8047C6F4  D0 16 05 50 */	stfs f0, 0x550(r22)
/* 8047C6F8  C0 16 05 3C */	lfs f0, 0x53c(r22)
/* 8047C6FC  D0 16 05 54 */	stfs f0, 0x554(r22)
/* 8047C700  C0 16 05 40 */	lfs f0, 0x540(r22)
/* 8047C704  D0 16 05 58 */	stfs f0, 0x558(r22)
/* 8047C708  39 E0 00 00 */	li r15, 0
/* 8047C70C  3A 00 00 00 */	li r16, 0
/* 8047C710  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047C714  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047C718  3A 43 23 3C */	addi r18, r3, 0x233c
/* 8047C71C  CB 18 00 40 */	lfd f24, 0x40(r24)
/* 8047C720  3E 20 43 30 */	lis r17, 0x4330
lbl_8047C724:
/* 8047C724  38 61 00 C8 */	addi r3, r1, 0xc8
/* 8047C728  38 96 04 D0 */	addi r4, r22, 0x4d0
/* 8047C72C  38 B6 06 18 */	addi r5, r22, 0x618
/* 8047C730  4B DE A4 05 */	bl __mi__4cXyzCFRC3Vec
/* 8047C734  C0 01 00 C8 */	lfs f0, 0xc8(r1)
/* 8047C738  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8047C73C  C0 01 00 CC */	lfs f0, 0xcc(r1)
/* 8047C740  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8047C744  C0 01 00 D0 */	lfs f0, 0xd0(r1)
/* 8047C748  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8047C74C  38 61 00 BC */	addi r3, r1, 0xbc
/* 8047C750  38 81 01 88 */	addi r4, r1, 0x188
/* 8047C754  38 0F 00 01 */	addi r0, r15, 1
/* 8047C758  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8047C75C  90 01 02 3C */	stw r0, 0x23c(r1)
/* 8047C760  92 21 02 38 */	stw r17, 0x238(r1)
/* 8047C764  C8 01 02 38 */	lfd f0, 0x238(r1)
/* 8047C768  EC 20 C0 28 */	fsubs f1, f0, f24
/* 8047C76C  4B DE A4 19 */	bl __ml__4cXyzCFf
/* 8047C770  38 61 00 B0 */	addi r3, r1, 0xb0
/* 8047C774  38 81 00 BC */	addi r4, r1, 0xbc
/* 8047C778  C0 38 00 80 */	lfs f1, 0x80(r24)
/* 8047C77C  4B DE A4 09 */	bl __ml__4cXyzCFf
/* 8047C780  38 61 00 A4 */	addi r3, r1, 0xa4
/* 8047C784  38 96 06 18 */	addi r4, r22, 0x618
/* 8047C788  38 A1 00 B0 */	addi r5, r1, 0xb0
/* 8047C78C  4B DE A3 59 */	bl __pl__4cXyzCFRC3Vec
/* 8047C790  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 8047C794  D0 01 01 88 */	stfs f0, 0x188(r1)
/* 8047C798  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8047C79C  D0 01 01 8C */	stfs f0, 0x18c(r1)
/* 8047C7A0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8047C7A4  D0 01 01 90 */	stfs f0, 0x190(r1)
/* 8047C7A8  28 19 00 00 */	cmplwi r25, 0
/* 8047C7AC  41 82 00 10 */	beq lbl_8047C7BC
/* 8047C7B0  A8 16 06 3A */	lha r0, 0x63a(r22)
/* 8047C7B4  2C 00 00 00 */	cmpwi r0, 0
/* 8047C7B8  41 82 00 14 */	beq lbl_8047C7CC
lbl_8047C7BC:
/* 8047C7BC  C0 21 01 8C */	lfs f1, 0x18c(r1)
/* 8047C7C0  C0 18 00 88 */	lfs f0, 0x88(r24)
/* 8047C7C4  EC 01 00 28 */	fsubs f0, f1, f0
/* 8047C7C8  D0 01 01 8C */	stfs f0, 0x18c(r1)
lbl_8047C7CC:
/* 8047C7CC  7E 96 82 14 */	add r20, r22, r16
/* 8047C7D0  3A 74 07 9C */	addi r19, r20, 0x79c
/* 8047C7D4  7E 63 9B 78 */	mr r3, r19
/* 8047C7D8  38 81 01 88 */	addi r4, r1, 0x188
/* 8047C7DC  4B DF 2E 6D */	bl SetC__8cM3dGSphFRC4cXyz
/* 8047C7E0  7E 63 9B 78 */	mr r3, r19
/* 8047C7E4  C0 38 00 14 */	lfs f1, 0x14(r24)
/* 8047C7E8  4B DF 2F 21 */	bl SetR__8cM3dGSphFf
/* 8047C7EC  7E 43 93 78 */	mr r3, r18
/* 8047C7F0  3A 74 06 78 */	addi r19, r20, 0x678
/* 8047C7F4  7E 64 9B 78 */	mr r4, r19
/* 8047C7F8  4B DE 83 B1 */	bl Set__4cCcSFP8cCcD_Obj
/* 8047C7FC  7E 63 9B 78 */	mr r3, r19
/* 8047C800  4B C0 7E 59 */	bl ChkCoHit__12dCcD_GObjInfFv
/* 8047C804  28 03 00 00 */	cmplwi r3, 0
/* 8047C808  41 82 00 2C */	beq lbl_8047C834
/* 8047C80C  7E 63 9B 78 */	mr r3, r19
/* 8047C810  4B C0 7E E1 */	bl GetCoHitObj__12dCcD_GObjInfFv
/* 8047C814  4B DE 72 35 */	bl GetAc__8cCcD_ObjFv
/* 8047C818  28 19 00 00 */	cmplwi r25, 0
/* 8047C81C  41 82 00 18 */	beq lbl_8047C834
/* 8047C820  7C 03 C8 40 */	cmplw r3, r25
/* 8047C824  41 82 00 10 */	beq lbl_8047C834
/* 8047C828  88 19 0A E4 */	lbz r0, 0xae4(r25)
/* 8047C82C  60 00 00 04 */	ori r0, r0, 4
/* 8047C830  98 19 0A E4 */	stb r0, 0xae4(r25)
lbl_8047C834:
/* 8047C834  39 EF 00 01 */	addi r15, r15, 1
/* 8047C838  2C 0F 00 08 */	cmpwi r15, 8
/* 8047C83C  3A 10 01 38 */	addi r16, r16, 0x138
/* 8047C840  41 80 FE E4 */	blt lbl_8047C724
/* 8047C844  28 19 00 00 */	cmplwi r25, 0
/* 8047C848  41 82 00 30 */	beq lbl_8047C878
/* 8047C84C  88 19 05 67 */	lbz r0, 0x567(r25)
/* 8047C850  7C 00 07 75 */	extsb. r0, r0
/* 8047C854  41 82 00 24 */	beq lbl_8047C878
/* 8047C858  38 00 00 00 */	li r0, 0
/* 8047C85C  98 19 05 67 */	stb r0, 0x567(r25)
/* 8047C860  88 19 0A E4 */	lbz r0, 0xae4(r25)
/* 8047C864  60 00 00 02 */	ori r0, r0, 2
/* 8047C868  98 19 0A E4 */	stb r0, 0xae4(r25)
/* 8047C86C  7E C3 B3 78 */	mr r3, r22
/* 8047C870  38 80 00 64 */	li r4, 0x64
/* 8047C874  4B FF F2 85 */	bl cut_set__FP13obj_ito_classi
lbl_8047C878:
/* 8047C878  A8 16 06 3A */	lha r0, 0x63a(r22)
/* 8047C87C  2C 00 00 00 */	cmpwi r0, 0
/* 8047C880  40 82 01 A8 */	bne lbl_8047CA28
/* 8047C884  88 16 06 38 */	lbz r0, 0x638(r22)
/* 8047C888  7C 00 07 75 */	extsb. r0, r0
/* 8047C88C  40 82 01 9C */	bne lbl_8047CA28
/* 8047C890  39 E0 00 00 */	li r15, 0
/* 8047C894  3A 40 00 00 */	li r18, 0
/* 8047C898  3A 00 00 00 */	li r16, 0
lbl_8047C89C:
/* 8047C89C  3A 30 06 78 */	addi r17, r16, 0x678
/* 8047C8A0  7E 36 8A 14 */	add r17, r22, r17
/* 8047C8A4  7E 23 8B 78 */	mr r3, r17
/* 8047C8A8  4B C0 7B B9 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 8047C8AC  28 03 00 00 */	cmplwi r3, 0
/* 8047C8B0  41 82 00 98 */	beq lbl_8047C948
/* 8047C8B4  7E 23 8B 78 */	mr r3, r17
/* 8047C8B8  4B C0 7C 41 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8047C8BC  90 61 01 A0 */	stw r3, 0x1a0(r1)
/* 8047C8C0  38 61 01 A0 */	addi r3, r1, 0x1a0
/* 8047C8C4  4B C0 B1 95 */	bl at_power_check__FP11dCcU_AtInfo
/* 8047C8C8  A0 01 01 BC */	lhz r0, 0x1bc(r1)
/* 8047C8CC  28 00 00 00 */	cmplwi r0, 0
/* 8047C8D0  40 82 00 30 */	bne lbl_8047C900
/* 8047C8D4  80 61 01 A0 */	lwz r3, 0x1a0(r1)
/* 8047C8D8  80 63 00 10 */	lwz r3, 0x10(r3)
/* 8047C8DC  54 60 03 DF */	rlwinm. r0, r3, 0, 0xf, 0xf
/* 8047C8E0  40 82 00 20 */	bne lbl_8047C900
/* 8047C8E4  54 60 04 63 */	rlwinm. r0, r3, 0, 0x11, 0x11
/* 8047C8E8  40 82 00 18 */	bne lbl_8047C900
/* 8047C8EC  7E 23 8B 78 */	mr r3, r17
/* 8047C8F0  4B C0 7C 59 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8047C8F4  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8047C8F8  28 00 00 01 */	cmplwi r0, 1
/* 8047C8FC  40 82 00 34 */	bne lbl_8047C930
lbl_8047C900:
/* 8047C900  7E 23 8B 78 */	mr r3, r17
/* 8047C904  4B C0 7C 45 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 8047C908  88 03 00 75 */	lbz r0, 0x75(r3)
/* 8047C90C  28 00 00 01 */	cmplwi r0, 1
/* 8047C910  40 82 00 18 */	bne lbl_8047C928
/* 8047C914  38 00 00 01 */	li r0, 1
/* 8047C918  98 16 15 09 */	stb r0, 0x1509(r22)
/* 8047C91C  38 12 00 01 */	addi r0, r18, 1
/* 8047C920  98 16 15 0A */	stb r0, 0x150a(r22)
/* 8047C924  48 00 00 34 */	b lbl_8047C958
lbl_8047C928:
/* 8047C928  39 F2 00 01 */	addi r15, r18, 1
/* 8047C92C  48 00 00 2C */	b lbl_8047C958
lbl_8047C930:
/* 8047C930  28 19 00 00 */	cmplwi r25, 0
/* 8047C934  41 82 00 24 */	beq lbl_8047C958
/* 8047C938  88 19 0A E4 */	lbz r0, 0xae4(r25)
/* 8047C93C  60 00 00 04 */	ori r0, r0, 4
/* 8047C940  98 19 0A E4 */	stb r0, 0xae4(r25)
/* 8047C944  48 00 00 14 */	b lbl_8047C958
lbl_8047C948:
/* 8047C948  3A 52 00 01 */	addi r18, r18, 1
/* 8047C94C  2C 12 00 08 */	cmpwi r18, 8
/* 8047C950  3A 10 01 38 */	addi r16, r16, 0x138
/* 8047C954  41 80 FF 48 */	blt lbl_8047C89C
lbl_8047C958:
/* 8047C958  88 16 15 09 */	lbz r0, 0x1509(r22)
/* 8047C95C  2C 00 00 0F */	cmpwi r0, 0xf
/* 8047C960  40 82 00 0C */	bne lbl_8047C96C
/* 8047C964  89 F6 15 0A */	lbz r15, 0x150a(r22)
/* 8047C968  7D EF 07 74 */	extsb r15, r15
lbl_8047C96C:
/* 8047C96C  2C 0F 00 00 */	cmpwi r15, 0
/* 8047C970  41 82 00 88 */	beq lbl_8047C9F8
/* 8047C974  38 00 00 64 */	li r0, 0x64
/* 8047C978  B0 16 06 3A */	sth r0, 0x63a(r22)
/* 8047C97C  88 16 15 09 */	lbz r0, 0x1509(r22)
/* 8047C980  7C 00 07 75 */	extsb. r0, r0
/* 8047C984  40 82 00 2C */	bne lbl_8047C9B0
/* 8047C988  38 0F FF FF */	addi r0, r15, -1
/* 8047C98C  1C 60 01 38 */	mulli r3, r0, 0x138
/* 8047C990  38 63 06 78 */	addi r3, r3, 0x678
/* 8047C994  7C 76 1A 14 */	add r3, r22, r3
/* 8047C998  4B C0 7B 61 */	bl GetTgHitObj__12dCcD_GObjInfFv
/* 8047C99C  7C 64 1B 78 */	mr r4, r3
/* 8047C9A0  38 76 05 7C */	addi r3, r22, 0x57c
/* 8047C9A4  38 A0 00 21 */	li r5, 0x21
/* 8047C9A8  38 C0 00 00 */	li r6, 0
/* 8047C9AC  4B C0 AB 69 */	bl def_se_set__FP10Z2CreatureP8cCcD_ObjUlP10fopAc_ac_c
lbl_8047C9B0:
/* 8047C9B0  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047C9B4  28 00 00 01 */	cmplwi r0, 1
/* 8047C9B8  40 82 00 20 */	bne lbl_8047C9D8
/* 8047C9BC  88 19 0A E4 */	lbz r0, 0xae4(r25)
/* 8047C9C0  60 00 00 01 */	ori r0, r0, 1
/* 8047C9C4  98 19 0A E4 */	stb r0, 0xae4(r25)
/* 8047C9C8  7E C3 B3 78 */	mr r3, r22
/* 8047C9CC  7D E4 7B 78 */	mr r4, r15
/* 8047C9D0  4B FF F1 29 */	bl cut_set__FP13obj_ito_classi
/* 8047C9D4  48 00 00 24 */	b lbl_8047C9F8
lbl_8047C9D8:
/* 8047C9D8  28 00 00 00 */	cmplwi r0, 0
/* 8047C9DC  40 82 00 1C */	bne lbl_8047C9F8
/* 8047C9E0  88 19 0A E4 */	lbz r0, 0xae4(r25)
/* 8047C9E4  60 00 00 02 */	ori r0, r0, 2
/* 8047C9E8  98 19 0A E4 */	stb r0, 0xae4(r25)
/* 8047C9EC  7E C3 B3 78 */	mr r3, r22
/* 8047C9F0  7D E4 7B 78 */	mr r4, r15
/* 8047C9F4  4B FF F1 05 */	bl cut_set__FP13obj_ito_classi
lbl_8047C9F8:
/* 8047C9F8  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047C9FC  28 00 00 00 */	cmplwi r0, 0
/* 8047CA00  40 82 00 28 */	bne lbl_8047CA28
/* 8047CA04  A8 19 06 0A */	lha r0, 0x60a(r25)
/* 8047CA08  2C 00 00 02 */	cmpwi r0, 2
/* 8047CA0C  40 82 00 1C */	bne lbl_8047CA28
/* 8047CA10  88 16 10 38 */	lbz r0, 0x1038(r22)
/* 8047CA14  7C 00 07 75 */	extsb. r0, r0
/* 8047CA18  40 82 00 10 */	bne lbl_8047CA28
/* 8047CA1C  7E C3 B3 78 */	mr r3, r22
/* 8047CA20  38 80 00 64 */	li r4, 0x64
/* 8047CA24  4B FF F0 D5 */	bl cut_set__FP13obj_ito_classi
lbl_8047CA28:
/* 8047CA28  A8 6E 00 10 */	lha r3, 0x10(r14)
/* 8047CA2C  7C 60 07 35 */	extsh. r0, r3
/* 8047CA30  41 82 04 5C */	beq lbl_8047CE8C
/* 8047CA34  88 96 10 38 */	lbz r4, 0x1038(r22)
/* 8047CA38  7C 80 07 75 */	extsb. r0, r4
/* 8047CA3C  40 82 00 0C */	bne lbl_8047CA48
/* 8047CA40  2C 03 00 02 */	cmpwi r3, 2
/* 8047CA44  40 82 04 48 */	bne lbl_8047CE8C
lbl_8047CA48:
/* 8047CA48  2C 03 00 01 */	cmpwi r3, 1
/* 8047CA4C  40 82 00 10 */	bne lbl_8047CA5C
/* 8047CA50  7C 80 07 74 */	extsb r0, r4
/* 8047CA54  2C 00 00 02 */	cmpwi r0, 2
/* 8047CA58  41 82 00 14 */	beq lbl_8047CA6C
lbl_8047CA5C:
/* 8047CA5C  2C 03 00 02 */	cmpwi r3, 2
/* 8047CA60  40 82 00 68 */	bne lbl_8047CAC8
/* 8047CA64  7C 80 07 75 */	extsb. r0, r4
/* 8047CA68  41 82 00 60 */	beq lbl_8047CAC8
lbl_8047CA6C:
/* 8047CA6C  38 00 00 64 */	li r0, 0x64
/* 8047CA70  B0 16 06 3A */	sth r0, 0x63a(r22)
/* 8047CA74  88 16 06 38 */	lbz r0, 0x638(r22)
/* 8047CA78  7C 00 07 75 */	extsb. r0, r0
/* 8047CA7C  41 82 00 40 */	beq lbl_8047CABC
/* 8047CA80  38 76 10 3C */	addi r3, r22, 0x103c
/* 8047CA84  4B FF F5 09 */	bl ito_end__FP5ito_s
/* 8047CA88  38 76 12 98 */	addi r3, r22, 0x1298
/* 8047CA8C  4B FF F5 01 */	bl ito_end__FP5ito_s
/* 8047CA90  C0 16 12 8C */	lfs f0, 0x128c(r22)
/* 8047CA94  C0 38 00 20 */	lfs f1, 0x20(r24)
/* 8047CA98  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8047CA9C  4C 40 13 82 */	cror 2, 0, 2
/* 8047CAA0  40 82 00 1C */	bne lbl_8047CABC
/* 8047CAA4  C0 16 14 E8 */	lfs f0, 0x14e8(r22)
/* 8047CAA8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8047CAAC  4C 40 13 82 */	cror 2, 0, 2
/* 8047CAB0  40 82 00 0C */	bne lbl_8047CABC
/* 8047CAB4  7E C3 B3 78 */	mr r3, r22
/* 8047CAB8  4B B9 D1 C5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_8047CABC:
/* 8047CABC  7E C3 B3 78 */	mr r3, r22
/* 8047CAC0  4B FF EF 21 */	bl cut_line__FP13obj_ito_class
/* 8047CAC4  48 00 03 C8 */	b lbl_8047CE8C
lbl_8047CAC8:
/* 8047CAC8  88 16 06 38 */	lbz r0, 0x638(r22)
/* 8047CACC  7C 00 07 75 */	extsb. r0, r0
/* 8047CAD0  41 82 00 10 */	beq lbl_8047CAE0
/* 8047CAD4  7E C3 B3 78 */	mr r3, r22
/* 8047CAD8  4B B9 D1 A5 */	bl fopAcM_delete__FP10fopAc_ac_c
/* 8047CADC  48 00 03 B0 */	b lbl_8047CE8C
lbl_8047CAE0:
/* 8047CAE0  2C 03 00 01 */	cmpwi r3, 1
/* 8047CAE4  40 82 00 18 */	bne lbl_8047CAFC
/* 8047CAE8  7C 80 07 74 */	extsb r0, r4
/* 8047CAEC  2C 00 00 01 */	cmpwi r0, 1
/* 8047CAF0  40 82 00 0C */	bne lbl_8047CAFC
/* 8047CAF4  38 00 00 02 */	li r0, 2
/* 8047CAF8  98 16 10 38 */	stb r0, 0x1038(r22)
lbl_8047CAFC:
/* 8047CAFC  A8 19 04 DC */	lha r0, 0x4dc(r25)
/* 8047CB00  B0 16 04 DC */	sth r0, 0x4dc(r22)
/* 8047CB04  A8 19 04 DE */	lha r0, 0x4de(r25)
/* 8047CB08  B0 16 04 DE */	sth r0, 0x4de(r22)
/* 8047CB0C  A8 19 04 E0 */	lha r0, 0x4e0(r25)
/* 8047CB10  B0 16 04 E0 */	sth r0, 0x4e0(r22)
/* 8047CB14  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8047CB18  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8047CB1C  80 63 00 00 */	lwz r3, 0(r3)
/* 8047CB20  A8 96 04 DE */	lha r4, 0x4de(r22)
/* 8047CB24  4B B8 F8 B9 */	bl mDoMtx_YrotS__FPA4_fs
/* 8047CB28  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8047CB2C  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 8047CB30  80 63 00 00 */	lwz r3, 0(r3)
/* 8047CB34  A8 96 04 DC */	lha r4, 0x4dc(r22)
/* 8047CB38  4B B8 F8 65 */	bl mDoMtx_XrotM__FPA4_fs
/* 8047CB3C  3A 60 00 00 */	li r19, 0
/* 8047CB40  3A 40 00 00 */	li r18, 0
/* 8047CB44  3A 00 00 00 */	li r16, 0
/* 8047CB48  3B E0 00 00 */	li r31, 0
/* 8047CB4C  3B C0 00 00 */	li r30, 0
/* 8047CB50  3B A0 00 00 */	li r29, 0
/* 8047CB54  3B 80 00 00 */	li r28, 0
/* 8047CB58  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8047CB5C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8047CB60  3A E3 0F 38 */	addi r23, r3, 0xf38
/* 8047CB64  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 8047CB68  3B 43 07 68 */	addi r26, r3, calc_mtx@l /* 0x80450768@l */
/* 8047CB6C  CB F8 00 40 */	lfd f31, 0x40(r24)
/* 8047CB70  C3 18 00 9C */	lfs f24, 0x9c(r24)
/* 8047CB74  C3 38 00 A0 */	lfs f25, 0xa0(r24)
/* 8047CB78  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8047CB7C  39 C3 9A 20 */	addi r14, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8047CB80  C3 98 00 70 */	lfs f28, 0x70(r24)
/* 8047CB84  C3 B8 00 98 */	lfs f29, 0x98(r24)
/* 8047CB88  C3 D8 00 18 */	lfs f30, 0x18(r24)
lbl_8047CB8C:
/* 8047CB8C  80 76 10 54 */	lwz r3, 0x1054(r22)
/* 8047CB90  7E A3 E0 2E */	lwzx r21, r3, r28
/* 8047CB94  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047CB98  28 00 00 00 */	cmplwi r0, 0
/* 8047CB9C  40 82 00 10 */	bne lbl_8047CBAC
/* 8047CBA0  3A 3D 06 84 */	addi r17, r29, 0x684
/* 8047CBA4  7E 39 8A 14 */	add r17, r25, r17
/* 8047CBA8  48 00 00 0C */	b lbl_8047CBB4
lbl_8047CBAC:
/* 8047CBAC  3A 3D 06 CC */	addi r17, r29, 0x6cc
/* 8047CBB0  7E 39 8A 14 */	add r17, r25, r17
lbl_8047CBB4:
/* 8047CBB4  A8 16 06 10 */	lha r0, 0x610(r22)
/* 8047CBB8  2C 00 00 00 */	cmpwi r0, 0
/* 8047CBBC  40 82 00 EC */	bne lbl_8047CCA8
/* 8047CBC0  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047CBC4  D0 01 01 64 */	stfs f0, 0x164(r1)
/* 8047CBC8  88 16 05 70 */	lbz r0, 0x570(r22)
/* 8047CBCC  28 00 00 00 */	cmplwi r0, 0
/* 8047CBD0  40 82 00 10 */	bne lbl_8047CBE0
/* 8047CBD4  C0 18 00 8C */	lfs f0, 0x8c(r24)
/* 8047CBD8  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8047CBDC  48 00 00 0C */	b lbl_8047CBE8
lbl_8047CBE0:
/* 8047CBE0  C0 18 00 90 */	lfs f0, 0x90(r24)
/* 8047CBE4  D0 01 01 68 */	stfs f0, 0x168(r1)
lbl_8047CBE8:
/* 8047CBE8  C0 18 00 18 */	lfs f0, 0x18(r24)
/* 8047CBEC  D0 01 01 6C */	stfs f0, 0x16c(r1)
/* 8047CBF0  38 61 01 64 */	addi r3, r1, 0x164
/* 8047CBF4  38 81 01 58 */	addi r4, r1, 0x158
/* 8047CBF8  4B DF 42 F5 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8047CBFC  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8047CC00  4B BF B0 69 */	bl __ct__11dBgS_LinChkFv
/* 8047CC04  38 61 00 98 */	addi r3, r1, 0x98
/* 8047CC08  7E 24 8B 78 */	mr r4, r17
/* 8047CC0C  38 A1 01 58 */	addi r5, r1, 0x158
/* 8047CC10  4B DE 9E D5 */	bl __pl__4cXyzCFRC3Vec
/* 8047CC14  C0 01 00 98 */	lfs f0, 0x98(r1)
/* 8047CC18  D0 01 01 4C */	stfs f0, 0x14c(r1)
/* 8047CC1C  C0 01 00 9C */	lfs f0, 0x9c(r1)
/* 8047CC20  D0 01 01 50 */	stfs f0, 0x150(r1)
/* 8047CC24  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8047CC28  D0 01 01 54 */	stfs f0, 0x154(r1)
/* 8047CC2C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8047CC30  7E 24 8B 78 */	mr r4, r17
/* 8047CC34  38 A1 01 4C */	addi r5, r1, 0x14c
/* 8047CC38  7E C6 B3 78 */	mr r6, r22
/* 8047CC3C  4B BF B1 29 */	bl Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 8047CC40  7E E3 BB 78 */	mr r3, r23
/* 8047CC44  38 81 01 C4 */	addi r4, r1, 0x1c4
/* 8047CC48  4B BF 77 6D */	bl LineCross__4cBgSFP11cBgS_LinChk
/* 8047CC4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8047CC50  41 82 00 4C */	beq lbl_8047CC9C
/* 8047CC54  C0 21 01 68 */	lfs f1, 0x168(r1)
/* 8047CC58  C0 18 00 10 */	lfs f0, 0x10(r24)
/* 8047CC5C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8047CC60  D0 01 01 68 */	stfs f0, 0x168(r1)
/* 8047CC64  38 61 01 64 */	addi r3, r1, 0x164
/* 8047CC68  38 81 01 58 */	addi r4, r1, 0x158
/* 8047CC6C  4B DF 42 81 */	bl MtxPosition__FP4cXyzP4cXyz
/* 8047CC70  38 61 00 8C */	addi r3, r1, 0x8c
/* 8047CC74  38 81 01 F4 */	addi r4, r1, 0x1f4
/* 8047CC78  38 A1 01 58 */	addi r5, r1, 0x158
/* 8047CC7C  4B DE 9E 69 */	bl __pl__4cXyzCFRC3Vec
/* 8047CC80  C0 01 00 8C */	lfs f0, 0x8c(r1)
/* 8047CC84  7C 76 EA 14 */	add r3, r22, r29
/* 8047CC88  D0 03 12 38 */	stfs f0, 0x1238(r3)
/* 8047CC8C  C0 01 00 90 */	lfs f0, 0x90(r1)
/* 8047CC90  D0 03 12 3C */	stfs f0, 0x123c(r3)
/* 8047CC94  C0 01 00 94 */	lfs f0, 0x94(r1)
/* 8047CC98  D0 03 12 40 */	stfs f0, 0x1240(r3)
lbl_8047CC9C:
/* 8047CC9C  38 61 01 C4 */	addi r3, r1, 0x1c4
/* 8047CCA0  38 80 FF FF */	li r4, -1
/* 8047CCA4  4B BF B0 39 */	bl __dt__11dBgS_LinChkFv
lbl_8047CCA8:
/* 8047CCA8  38 61 00 80 */	addi r3, r1, 0x80
/* 8047CCAC  38 9D 12 38 */	addi r4, r29, 0x1238
/* 8047CCB0  7C 96 22 14 */	add r4, r22, r4
/* 8047CCB4  7E 25 8B 78 */	mr r5, r17
/* 8047CCB8  4B DE 9E 7D */	bl __mi__4cXyzCFRC3Vec
/* 8047CCBC  38 61 00 74 */	addi r3, r1, 0x74
/* 8047CCC0  38 81 00 80 */	addi r4, r1, 0x80
/* 8047CCC4  C0 38 00 94 */	lfs f1, 0x94(r24)
/* 8047CCC8  4B DE 9E BD */	bl __ml__4cXyzCFf
/* 8047CCCC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8047CCD0  D0 01 01 70 */	stfs f0, 0x170(r1)
/* 8047CCD4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8047CCD8  D0 01 01 74 */	stfs f0, 0x174(r1)
/* 8047CCDC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8047CCE0  D0 01 01 78 */	stfs f0, 0x178(r1)
/* 8047CCE4  C0 16 04 EC */	lfs f0, 0x4ec(r22)
/* 8047CCE8  EF 7C 00 32 */	fmuls f27, f28, f0
/* 8047CCEC  EF 5D 06 F2 */	fmuls f26, f29, f27
/* 8047CCF0  38 1E 55 F0 */	addi r0, r30, 0x55f0
/* 8047CCF4  7C 14 07 34 */	extsh r20, r0
/* 8047CCF8  28 19 00 00 */	cmplwi r25, 0
/* 8047CCFC  41 82 00 14 */	beq lbl_8047CD10
/* 8047CD00  AA 79 06 4C */	lha r19, 0x64c(r25)
/* 8047CD04  38 00 00 0A */	li r0, 0xa
/* 8047CD08  7C 13 03 D6 */	divw r0, r19, r0
/* 8047CD0C  7C 12 07 34 */	extsh r18, r0
lbl_8047CD10:
/* 8047CD10  D3 C1 01 94 */	stfs f30, 0x194(r1)
/* 8047CD14  D3 C1 01 98 */	stfs f30, 0x198(r1)
/* 8047CD18  39 E0 00 00 */	li r15, 0
/* 8047CD1C  3B 60 00 00 */	li r27, 0
lbl_8047CD20:
/* 8047CD20  D3 61 01 9C */	stfs f27, 0x19c(r1)
/* 8047CD24  4B DF 41 F9 */	bl MtxPush__Fv
/* 8047CD28  80 7A 00 00 */	lwz r3, 0(r26)
/* 8047CD2C  7C 14 9A 14 */	add r0, r20, r19
/* 8047CD30  7C 04 07 34 */	extsh r4, r0
/* 8047CD34  4B B8 F7 01 */	bl mDoMtx_YrotM__FPA4_fs
/* 8047CD38  38 61 01 94 */	addi r3, r1, 0x194
/* 8047CD3C  38 81 01 88 */	addi r4, r1, 0x188
/* 8047CD40  4B DF 41 AD */	bl MtxPosition__FP4cXyzP4cXyz
/* 8047CD44  4B DF 42 15 */	bl MtxPull__Fv
/* 8047CD48  38 61 00 68 */	addi r3, r1, 0x68
/* 8047CD4C  38 81 01 70 */	addi r4, r1, 0x170
/* 8047CD50  6D E0 80 00 */	xoris r0, r15, 0x8000
/* 8047CD54  90 01 02 3C */	stw r0, 0x23c(r1)
/* 8047CD58  3C 00 43 30 */	lis r0, 0x4330
/* 8047CD5C  90 01 02 38 */	stw r0, 0x238(r1)
/* 8047CD60  C8 01 02 38 */	lfd f0, 0x238(r1)
/* 8047CD64  EC 20 F8 28 */	fsubs f1, f0, f31
/* 8047CD68  4B DE 9E 1D */	bl __ml__4cXyzCFf
/* 8047CD6C  38 61 00 5C */	addi r3, r1, 0x5c
/* 8047CD70  7E 24 8B 78 */	mr r4, r17
/* 8047CD74  38 A1 00 68 */	addi r5, r1, 0x68
/* 8047CD78  4B DE 9D 6D */	bl __pl__4cXyzCFRC3Vec
/* 8047CD7C  38 61 00 50 */	addi r3, r1, 0x50
/* 8047CD80  38 81 00 5C */	addi r4, r1, 0x5c
/* 8047CD84  38 A1 01 88 */	addi r5, r1, 0x188
/* 8047CD88  4B DE 9D 5D */	bl __pl__4cXyzCFRC3Vec
/* 8047CD8C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 8047CD90  D0 15 00 00 */	stfs f0, 0(r21)
/* 8047CD94  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 8047CD98  D0 15 00 04 */	stfs f0, 4(r21)
/* 8047CD9C  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 8047CDA0  D0 15 00 08 */	stfs f0, 8(r21)
/* 8047CDA4  7C 1B FA 14 */	add r0, r27, r31
/* 8047CDA8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8047CDAC  7C 0E 04 2E */	lfsx f0, r14, r0
/* 8047CDB0  EC 19 00 32 */	fmuls f0, f25, f0
/* 8047CDB4  EC 18 00 2A */	fadds f0, f24, f0
/* 8047CDB8  FC 00 00 1E */	fctiwz f0, f0
/* 8047CDBC  D8 01 02 40 */	stfd f0, 0x240(r1)
/* 8047CDC0  80 01 02 44 */	lwz r0, 0x244(r1)
/* 8047CDC4  7E 94 02 14 */	add r20, r20, r0
/* 8047CDC8  2C 0F 00 0A */	cmpwi r15, 0xa
/* 8047CDCC  41 80 00 34 */	blt lbl_8047CE00
/* 8047CDD0  EF 7B D0 28 */	fsubs f27, f27, f26
/* 8047CDD4  7E 72 98 50 */	subf r19, r18, r19
/* 8047CDD8  2C 0F 00 13 */	cmpwi r15, 0x13
/* 8047CDDC  40 82 00 24 */	bne lbl_8047CE00
/* 8047CDE0  80 16 12 B0 */	lwz r0, 0x12b0(r22)
/* 8047CDE4  7C 7C 00 2E */	lwzx r3, r28, r0
/* 8047CDE8  C0 15 00 00 */	lfs f0, 0(r21)
/* 8047CDEC  D0 03 00 00 */	stfs f0, 0(r3)
/* 8047CDF0  C0 15 00 04 */	lfs f0, 4(r21)
/* 8047CDF4  D0 03 00 04 */	stfs f0, 4(r3)
/* 8047CDF8  C0 15 00 08 */	lfs f0, 8(r21)
/* 8047CDFC  D0 03 00 08 */	stfs f0, 8(r3)
lbl_8047CE00:
/* 8047CE00  39 EF 00 01 */	addi r15, r15, 1
/* 8047CE04  2C 0F 00 14 */	cmpwi r15, 0x14
/* 8047CE08  3B 7B 13 88 */	addi r27, r27, 0x1388
/* 8047CE0C  3A B5 00 0C */	addi r21, r21, 0xc
/* 8047CE10  41 80 FF 10 */	blt lbl_8047CD20
/* 8047CE14  3A 10 00 01 */	addi r16, r16, 1
/* 8047CE18  2C 10 00 06 */	cmpwi r16, 6
/* 8047CE1C  3B FF 0B B8 */	addi r31, r31, 0xbb8
/* 8047CE20  3B DE 2A AA */	addi r30, r30, 0x2aaa
/* 8047CE24  3B BD 00 0C */	addi r29, r29, 0xc
/* 8047CE28  3B 9C 00 20 */	addi r28, r28, 0x20
/* 8047CE2C  41 80 FD 60 */	blt lbl_8047CB8C
/* 8047CE30  A8 16 06 10 */	lha r0, 0x610(r22)
/* 8047CE34  2C 00 00 00 */	cmpwi r0, 0
/* 8047CE38  40 82 00 54 */	bne lbl_8047CE8C
/* 8047CE3C  38 00 00 01 */	li r0, 1
/* 8047CE40  B0 16 06 10 */	sth r0, 0x610(r22)
/* 8047CE44  38 61 00 44 */	addi r3, r1, 0x44
/* 8047CE48  38 96 12 5C */	addi r4, r22, 0x125c
/* 8047CE4C  38 B6 12 38 */	addi r5, r22, 0x1238
/* 8047CE50  4B DE 9C E5 */	bl __mi__4cXyzCFRC3Vec
/* 8047CE54  38 61 00 38 */	addi r3, r1, 0x38
/* 8047CE58  38 81 00 44 */	addi r4, r1, 0x44
/* 8047CE5C  C0 38 00 24 */	lfs f1, 0x24(r24)
/* 8047CE60  4B DE 9D 25 */	bl __ml__4cXyzCFf
/* 8047CE64  38 61 00 2C */	addi r3, r1, 0x2c
/* 8047CE68  38 96 12 38 */	addi r4, r22, 0x1238
/* 8047CE6C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8047CE70  4B DE 9C 75 */	bl __pl__4cXyzCFRC3Vec
/* 8047CE74  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8047CE78  D0 16 06 18 */	stfs f0, 0x618(r22)
/* 8047CE7C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8047CE80  D0 16 06 1C */	stfs f0, 0x61c(r22)
/* 8047CE84  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8047CE88  D0 16 06 20 */	stfs f0, 0x620(r22)
lbl_8047CE8C:
/* 8047CE8C  E3 E1 03 08 */	psq_l f31, 776(r1), 0, 0 /* qr0 */
/* 8047CE90  CB E1 03 00 */	lfd f31, 0x300(r1)
/* 8047CE94  E3 C1 02 F8 */	psq_l f30, 760(r1), 0, 0 /* qr0 */
/* 8047CE98  CB C1 02 F0 */	lfd f30, 0x2f0(r1)
/* 8047CE9C  E3 A1 02 E8 */	psq_l f29, 744(r1), 0, 0 /* qr0 */
/* 8047CEA0  CB A1 02 E0 */	lfd f29, 0x2e0(r1)
/* 8047CEA4  E3 81 02 D8 */	psq_l f28, 728(r1), 0, 0 /* qr0 */
/* 8047CEA8  CB 81 02 D0 */	lfd f28, 0x2d0(r1)
/* 8047CEAC  E3 61 02 C8 */	psq_l f27, 712(r1), 0, 0 /* qr0 */
/* 8047CEB0  CB 61 02 C0 */	lfd f27, 0x2c0(r1)
/* 8047CEB4  E3 41 02 B8 */	psq_l f26, 696(r1), 0, 0 /* qr0 */
/* 8047CEB8  CB 41 02 B0 */	lfd f26, 0x2b0(r1)
/* 8047CEBC  E3 21 02 A8 */	psq_l f25, 680(r1), 0, 0 /* qr0 */
/* 8047CEC0  CB 21 02 A0 */	lfd f25, 0x2a0(r1)
/* 8047CEC4  E3 01 02 98 */	psq_l f24, 664(r1), 0, 0 /* qr0 */
/* 8047CEC8  CB 01 02 90 */	lfd f24, 0x290(r1)
/* 8047CECC  39 61 02 90 */	addi r11, r1, 0x290
/* 8047CED0  4B EE 53 1D */	bl _restgpr_14
/* 8047CED4  80 01 03 14 */	lwz r0, 0x314(r1)
/* 8047CED8  7C 08 03 A6 */	mtlr r0
/* 8047CEDC  38 21 03 10 */	addi r1, r1, 0x310
/* 8047CEE0  4E 80 00 20 */	blr 
