lbl_8025FF98:
/* 8025FF98  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8025FF9C  7C 08 02 A6 */	mflr r0
/* 8025FFA0  90 01 00 54 */	stw r0, 0x54(r1)
/* 8025FFA4  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8025FFA8  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 8025FFAC  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 8025FFB0  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 8025FFB4  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8025FFB8  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8025FFBC  7C 7E 1B 78 */	mr r30, r3
/* 8025FFC0  3B E0 00 00 */	li r31, 0
/* 8025FFC4  80 83 03 D8 */	lwz r4, 0x3d8(r3)
/* 8025FFC8  38 04 00 01 */	addi r0, r4, 1
/* 8025FFCC  90 03 03 D8 */	stw r0, 0x3d8(r3)
/* 8025FFD0  80 A3 03 D8 */	lwz r5, 0x3d8(r3)
/* 8025FFD4  2C 05 00 07 */	cmpwi r5, 7
/* 8025FFD8  41 81 01 D0 */	bgt lbl_802601A8
/* 8025FFDC  7C A0 07 34 */	extsh r0, r5
/* 8025FFE0  C8 62 B5 58 */	lfd f3, lit_4627(r2)
/* 8025FFE4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8025FFE8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8025FFEC  3C 80 43 30 */	lis r4, 0x4330
/* 8025FFF0  90 81 00 08 */	stw r4, 8(r1)
/* 8025FFF4  C8 01 00 08 */	lfd f0, 8(r1)
/* 8025FFF8  EC 20 18 28 */	fsubs f1, f0, f3
/* 8025FFFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80260000  90 81 00 10 */	stw r4, 0x10(r1)
/* 80260004  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80260008  EC 00 18 28 */	fsubs f0, f0, f3
/* 8026000C  EC 01 00 32 */	fmuls f0, f1, f0
/* 80260010  C0 42 B5 6C */	lfs f2, lit_5143(r2)
/* 80260014  EC 80 10 24 */	fdivs f4, f0, f2
/* 80260018  20 05 00 07 */	subfic r0, r5, 7
/* 8026001C  7C 00 07 34 */	extsh r0, r0
/* 80260020  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80260024  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80260028  90 81 00 18 */	stw r4, 0x18(r1)
/* 8026002C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80260030  EC 20 18 28 */	fsubs f1, f0, f3
/* 80260034  90 01 00 24 */	stw r0, 0x24(r1)
/* 80260038  90 81 00 20 */	stw r4, 0x20(r1)
/* 8026003C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 80260040  EC 00 18 28 */	fsubs f0, f0, f3
/* 80260044  EC 01 00 32 */	fmuls f0, f1, f0
/* 80260048  EF E0 10 24 */	fdivs f31, f0, f2
/* 8026004C  C0 02 B5 68 */	lfs f0, lit_5094(r2)
/* 80260050  EF C0 01 32 */	fmuls f30, f0, f4
/* 80260054  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80260058  28 00 00 00 */	cmplwi r0, 0
/* 8026005C  41 82 00 8C */	beq lbl_802600E8
/* 80260060  88 1E 03 E2 */	lbz r0, 0x3e2(r30)
/* 80260064  28 00 00 00 */	cmplwi r0, 0
/* 80260068  41 82 00 2C */	beq lbl_80260094
/* 8026006C  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 80260070  28 00 00 00 */	cmplwi r0, 0
/* 80260074  40 82 00 20 */	bne lbl_80260094
/* 80260078  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 8026007C  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80260080  C0 04 0B 84 */	lfs f0, 0xb84(r4)
/* 80260084  EC 20 F0 2A */	fadds f1, f0, f30
/* 80260088  C0 44 0B 88 */	lfs f2, 0xb88(r4)
/* 8026008C  4B FF F9 A1 */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
/* 80260090  48 00 00 2C */	b lbl_802600BC
lbl_80260094:
/* 80260094  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 80260098  54 05 10 3A */	slwi r5, r0, 2
/* 8026009C  7F C3 F3 78 */	mr r3, r30
/* 802600A0  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802600A4  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 802600A8  7C 80 2A 14 */	add r4, r0, r5
/* 802600AC  C0 04 0A E0 */	lfs f0, 0xae0(r4)
/* 802600B0  EC 20 F0 2A */	fadds f1, f0, f30
/* 802600B4  C0 44 0A EC */	lfs f2, 0xaec(r4)
/* 802600B8  4B FF F9 75 */	bl setTimerPos__21dDlst_TimerScrnDraw_cFff
lbl_802600BC:
/* 802600BC  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 802600C0  C0 3E 03 B0 */	lfs f1, 0x3b0(r30)
/* 802600C4  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 802600C8  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 802600CC  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 802600D0  54 00 10 3A */	slwi r0, r0, 2
/* 802600D4  7C 84 02 14 */	add r4, r4, r0
/* 802600D8  C0 04 0A F8 */	lfs f0, 0xaf8(r4)
/* 802600DC  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802600E0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802600E4  4B FF 56 ED */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802600E8:
/* 802600E8  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 802600EC  28 00 00 00 */	cmplwi r0, 0
/* 802600F0  41 82 00 58 */	beq lbl_80260148
/* 802600F4  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 802600F8  54 05 10 3A */	slwi r5, r0, 2
/* 802600FC  7F C3 F3 78 */	mr r3, r30
/* 80260100  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80260104  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80260108  7C 80 2A 14 */	add r4, r0, r5
/* 8026010C  C0 04 0B 1C */	lfs f0, 0xb1c(r4)
/* 80260110  EC 20 F0 2A */	fadds f1, f0, f30
/* 80260114  C0 44 0B 28 */	lfs f2, 0xb28(r4)
/* 80260118  4B FF F9 55 */	bl setCounterPos__21dDlst_TimerScrnDraw_cFff
/* 8026011C  80 7E 00 14 */	lwz r3, 0x14(r30)
/* 80260120  C0 3E 03 B0 */	lfs f1, 0x3b0(r30)
/* 80260124  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80260128  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8026012C  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 80260130  54 00 10 3A */	slwi r0, r0, 2
/* 80260134  7C 84 02 14 */	add r4, r4, r0
/* 80260138  C0 04 0B 34 */	lfs f0, 0xb34(r4)
/* 8026013C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 80260140  EC 21 00 32 */	fmuls f1, f1, f0
/* 80260144  4B FF 56 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_80260148:
/* 80260148  80 1E 00 1C */	lwz r0, 0x1c(r30)
/* 8026014C  28 00 00 00 */	cmplwi r0, 0
/* 80260150  41 82 00 58 */	beq lbl_802601A8
/* 80260154  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 80260158  54 05 10 3A */	slwi r5, r0, 2
/* 8026015C  7F C3 F3 78 */	mr r3, r30
/* 80260160  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80260164  38 04 EB C8 */	addi r0, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 80260168  7C 80 2A 14 */	add r4, r0, r5
/* 8026016C  C0 04 0B 58 */	lfs f0, 0xb58(r4)
/* 80260170  EC 20 F0 2A */	fadds f1, f0, f30
/* 80260174  C0 44 0B 64 */	lfs f2, 0xb64(r4)
/* 80260178  4B FF F9 21 */	bl setImagePos__21dDlst_TimerScrnDraw_cFff
/* 8026017C  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80260180  C0 3E 03 B0 */	lfs f1, 0x3b0(r30)
/* 80260184  3C 80 80 43 */	lis r4, g_drawHIO@ha /* 0x8042EBC8@ha */
/* 80260188  38 84 EB C8 */	addi r4, r4, g_drawHIO@l /* 0x8042EBC8@l */
/* 8026018C  88 1E 03 DD */	lbz r0, 0x3dd(r30)
/* 80260190  54 00 10 3A */	slwi r0, r0, 2
/* 80260194  7C 84 02 14 */	add r4, r4, r0
/* 80260198  C0 04 0B 70 */	lfs f0, 0xb70(r4)
/* 8026019C  EC 1F 00 32 */	fmuls f0, f31, f0
/* 802601A0  EC 21 00 32 */	fmuls f1, f1, f0
/* 802601A4  4B FF 56 2D */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_802601A8:
/* 802601A8  80 1E 03 D8 */	lwz r0, 0x3d8(r30)
/* 802601AC  2C 00 00 07 */	cmpwi r0, 7
/* 802601B0  41 80 00 08 */	blt lbl_802601B8
/* 802601B4  3B E0 00 01 */	li r31, 1
lbl_802601B8:
/* 802601B8  7F E3 FB 78 */	mr r3, r31
/* 802601BC  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 802601C0  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 802601C4  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 802601C8  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 802601CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 802601D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 802601D4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 802601D8  7C 08 03 A6 */	mtlr r0
/* 802601DC  38 21 00 50 */	addi r1, r1, 0x50
/* 802601E0  4E 80 00 20 */	blr 
