lbl_806FD068:
/* 806FD068  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806FD06C  7C 08 02 A6 */	mflr r0
/* 806FD070  90 01 00 24 */	stw r0, 0x24(r1)
/* 806FD074  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806FD078  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806FD07C  7C 7E 1B 78 */	mr r30, r3
/* 806FD080  3C 60 80 70 */	lis r3, lit_3792@ha
/* 806FD084  3B E3 F5 E8 */	addi r31, r3, lit_3792@l
/* 806FD088  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FD08C  80 63 00 04 */	lwz r3, 4(r3)
/* 806FD090  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806FD094  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806FD098  38 63 03 30 */	addi r3, r3, 0x330
/* 806FD09C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 806FD0A0  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 806FD0A4  4B C4 94 0C */	b PSMTXCopy
/* 806FD0A8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 806FD0AC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 806FD0B0  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806FD0B4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 806FD0B8  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806FD0BC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 806FD0C0  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806FD0C4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 806FD0C8  80 1E 06 64 */	lwz r0, 0x664(r30)
/* 806FD0CC  2C 00 00 01 */	cmpwi r0, 1
/* 806FD0D0  41 82 01 1C */	beq lbl_806FD1EC
/* 806FD0D4  40 80 00 10 */	bge lbl_806FD0E4
/* 806FD0D8  2C 00 00 00 */	cmpwi r0, 0
/* 806FD0DC  40 80 00 14 */	bge lbl_806FD0F0
/* 806FD0E0  48 00 01 9C */	b lbl_806FD27C
lbl_806FD0E4:
/* 806FD0E4  2C 00 00 03 */	cmpwi r0, 3
/* 806FD0E8  40 80 01 94 */	bge lbl_806FD27C
/* 806FD0EC  48 00 01 5C */	b lbl_806FD248
lbl_806FD0F0:
/* 806FD0F0  80 1E 04 9C */	lwz r0, 0x49c(r30)
/* 806FD0F4  54 00 00 3E */	slwi r0, r0, 0
/* 806FD0F8  90 1E 04 9C */	stw r0, 0x49c(r30)
/* 806FD0FC  80 1E 05 5C */	lwz r0, 0x55c(r30)
/* 806FD100  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 806FD104  90 1E 05 5C */	stw r0, 0x55c(r30)
/* 806FD108  38 60 00 00 */	li r3, 0
/* 806FD10C  98 7E 05 46 */	stb r3, 0x546(r30)
/* 806FD110  A0 1E 05 8E */	lhz r0, 0x58e(r30)
/* 806FD114  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 806FD118  B0 1E 05 8E */	sth r0, 0x58e(r30)
/* 806FD11C  B0 7E 05 62 */	sth r3, 0x562(r30)
/* 806FD120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 806FD124  D0 1E 05 2C */	stfs f0, 0x52c(r30)
/* 806FD128  80 1E 09 DC */	lwz r0, 0x9dc(r30)
/* 806FD12C  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FD130  90 1E 09 DC */	stw r0, 0x9dc(r30)
/* 806FD134  80 1E 09 F0 */	lwz r0, 0x9f0(r30)
/* 806FD138  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FD13C  90 1E 09 F0 */	stw r0, 0x9f0(r30)
/* 806FD140  80 1E 0B 00 */	lwz r0, 0xb00(r30)
/* 806FD144  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FD148  90 1E 0B 00 */	stw r0, 0xb00(r30)
/* 806FD14C  7F C3 F3 78 */	mr r3, r30
/* 806FD150  38 81 00 0C */	addi r4, r1, 0xc
/* 806FD154  4B FF E5 6D */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD158  3C 60 00 07 */	lis r3, 0x0007 /* 0x00070381@ha */
/* 806FD15C  38 03 03 81 */	addi r0, r3, 0x0381 /* 0x00070381@l */
/* 806FD160  90 01 00 08 */	stw r0, 8(r1)
/* 806FD164  38 7E 05 BC */	addi r3, r30, 0x5bc
/* 806FD168  38 81 00 08 */	addi r4, r1, 8
/* 806FD16C  38 A0 00 00 */	li r5, 0
/* 806FD170  38 C0 FF FF */	li r6, -1
/* 806FD174  81 9E 05 BC */	lwz r12, 0x5bc(r30)
/* 806FD178  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806FD17C  7D 89 03 A6 */	mtctr r12
/* 806FD180  4E 80 04 21 */	bctrl 
/* 806FD184  88 1E 06 79 */	lbz r0, 0x679(r30)
/* 806FD188  28 00 00 01 */	cmplwi r0, 1
/* 806FD18C  41 82 00 24 */	beq lbl_806FD1B0
/* 806FD190  88 9E 06 7B */	lbz r4, 0x67b(r30)
/* 806FD194  28 04 00 FF */	cmplwi r4, 0xff
/* 806FD198  41 82 00 18 */	beq lbl_806FD1B0
/* 806FD19C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 806FD1A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 806FD1A4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 806FD1A8  7C 05 07 74 */	extsb r5, r0
/* 806FD1AC  4B 93 80 54 */	b onSwitch__10dSv_info_cFii
lbl_806FD1B0:
/* 806FD1B0  38 00 00 01 */	li r0, 1
/* 806FD1B4  98 1E 06 7D */	stb r0, 0x67d(r30)
/* 806FD1B8  80 1E 0A 60 */	lwz r0, 0xa60(r30)
/* 806FD1BC  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 806FD1C0  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 806FD1C4  7F C3 F3 78 */	mr r3, r30
/* 806FD1C8  38 80 00 0E */	li r4, 0xe
/* 806FD1CC  38 A0 00 00 */	li r5, 0
/* 806FD1D0  C0 3F 00 58 */	lfs f1, 0x58(r31)
/* 806FD1D4  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806FD1D8  4B FF D8 91 */	bl setBck__8daE_KK_cFiUcff
/* 806FD1DC  80 7E 06 64 */	lwz r3, 0x664(r30)
/* 806FD1E0  38 03 00 01 */	addi r0, r3, 1
/* 806FD1E4  90 1E 06 64 */	stw r0, 0x664(r30)
/* 806FD1E8  48 00 00 94 */	b lbl_806FD27C
lbl_806FD1EC:
/* 806FD1EC  80 7E 05 B4 */	lwz r3, 0x5b4(r30)
/* 806FD1F0  38 80 00 01 */	li r4, 1
/* 806FD1F4  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806FD1F8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806FD1FC  40 82 00 18 */	bne lbl_806FD214
/* 806FD200  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806FD204  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806FD208  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806FD20C  41 82 00 08 */	beq lbl_806FD214
/* 806FD210  38 80 00 00 */	li r4, 0
lbl_806FD214:
/* 806FD214  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806FD218  41 82 00 64 */	beq lbl_806FD27C
/* 806FD21C  38 00 00 1A */	li r0, 0x1a
/* 806FD220  98 1E 05 64 */	stb r0, 0x564(r30)
/* 806FD224  7F C3 F3 78 */	mr r3, r30
/* 806FD228  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 806FD22C  38 A0 00 08 */	li r5, 8
/* 806FD230  38 C0 00 00 */	li r6, 0
/* 806FD234  88 FE 05 64 */	lbz r7, 0x564(r30)
/* 806FD238  4B 91 F8 A0 */	b fopAcM_createDisappear__FPC10fopAc_ac_cPC4cXyzUcUcUc
/* 806FD23C  7F C3 F3 78 */	mr r3, r30
/* 806FD240  4B 91 CA 3C */	b fopAcM_delete__FP10fopAc_ac_c
/* 806FD244  48 00 00 38 */	b lbl_806FD27C
lbl_806FD248:
/* 806FD248  A8 1E 06 70 */	lha r0, 0x670(r30)
/* 806FD24C  2C 00 00 01 */	cmpwi r0, 1
/* 806FD250  41 82 00 18 */	beq lbl_806FD268
/* 806FD254  7C 00 07 35 */	extsh. r0, r0
/* 806FD258  40 82 00 24 */	bne lbl_806FD27C
/* 806FD25C  80 1E 07 DC */	lwz r0, 0x7dc(r30)
/* 806FD260  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806FD264  41 82 00 18 */	beq lbl_806FD27C
lbl_806FD268:
/* 806FD268  7F C3 F3 78 */	mr r3, r30
/* 806FD26C  38 81 00 0C */	addi r4, r1, 0xc
/* 806FD270  4B FF E4 51 */	bl mDeadEffSet__8daE_KK_cFR4cXyz
/* 806FD274  7F C3 F3 78 */	mr r3, r30
/* 806FD278  4B 91 CA 04 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_806FD27C:
/* 806FD27C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806FD280  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806FD284  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806FD288  7C 08 03 A6 */	mtlr r0
/* 806FD28C  38 21 00 20 */	addi r1, r1, 0x20
/* 806FD290  4E 80 00 20 */	blr 
