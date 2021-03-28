lbl_80853228:
/* 80853228  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 8085322C  7C 08 02 A6 */	mflr r0
/* 80853230  90 01 00 84 */	stw r0, 0x84(r1)
/* 80853234  93 E1 00 7C */	stw r31, 0x7c(r1)
/* 80853238  93 C1 00 78 */	stw r30, 0x78(r1)
/* 8085323C  7C 7F 1B 78 */	mr r31, r3
/* 80853240  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80853244  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80853248  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 8085324C  7C 00 07 74 */	extsb r0, r0
/* 80853250  1C 00 00 38 */	mulli r0, r0, 0x38
/* 80853254  7C 63 02 14 */	add r3, r3, r0
/* 80853258  83 C3 5D 74 */	lwz r30, 0x5d74(r3)
/* 8085325C  4B 92 E3 E4 */	b dCam_getBody__Fv
/* 80853260  7C 64 1B 78 */	mr r4, r3
/* 80853264  38 61 00 34 */	addi r3, r1, 0x34
/* 80853268  4B 92 EB FC */	b Eye__9dCamera_cFv
/* 8085326C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80853270  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80853274  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80853278  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 8085327C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80853280  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80853284  A8 BE 02 32 */	lha r5, 0x232(r30)
/* 80853288  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 8085328C  7C 05 00 50 */	subf r0, r5, r0
/* 80853290  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80853294  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l
/* 80853298  38 C4 00 04 */	addi r6, r4, 4
/* 8085329C  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 808532A0  7C 00 1E 70 */	srawi r0, r0, 3
/* 808532A4  54 00 18 38 */	slwi r0, r0, 3
/* 808532A8  7C 46 04 2E */	lfsx f2, r6, r0
/* 808532AC  7C 04 04 2E */	lfsx f0, r4, r0
/* 808532B0  FC 00 02 10 */	fabs f0, f0
/* 808532B4  FC 20 00 18 */	frsp f1, f0
/* 808532B8  3C 60 80 85 */	lis r3, l_HIO@ha
/* 808532BC  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 808532C0  C0 03 00 48 */	lfs f0, 0x48(r3)
/* 808532C4  EC 20 00 72 */	fmuls f1, f0, f1
/* 808532C8  C0 03 00 44 */	lfs f0, 0x44(r3)
/* 808532CC  EC 00 00 B2 */	fmuls f0, f0, f2
/* 808532D0  EC 21 00 2A */	fadds f1, f1, f0
/* 808532D4  A8 7E 02 30 */	lha r3, 0x230(r30)
/* 808532D8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 808532DC  7C 00 1E 70 */	srawi r0, r0, 3
/* 808532E0  54 00 18 38 */	slwi r0, r0, 3
/* 808532E4  7C 06 04 2E */	lfsx f0, r6, r0
/* 808532E8  EC 41 00 32 */	fmuls f2, f1, f0
/* 808532EC  7C 03 00 D0 */	neg r0, r3
/* 808532F0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 808532F4  7C 04 04 2E */	lfsx f0, r4, r0
/* 808532F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 808532FC  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80853300  54 A0 04 38 */	rlwinm r0, r5, 0, 0x10, 0x1c
/* 80853304  7C 04 04 2E */	lfsx f0, r4, r0
/* 80853308  EC 02 00 32 */	fmuls f0, f2, f0
/* 8085330C  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80853310  7C 06 04 2E */	lfsx f0, r6, r0
/* 80853314  EC 02 00 32 */	fmuls f0, f2, f0
/* 80853318  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8085331C  38 61 00 28 */	addi r3, r1, 0x28
/* 80853320  38 81 00 58 */	addi r4, r1, 0x58
/* 80853324  38 A1 00 40 */	addi r5, r1, 0x40
/* 80853328  4B A1 37 BC */	b __pl__4cXyzCFRC3Vec
/* 8085332C  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80853330  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80853334  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 80853338  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8085333C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80853340  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80853344  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 80853348  38 81 00 58 */	addi r4, r1, 0x58
/* 8085334C  4B A1 D8 B8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80853350  7C 7E 07 34 */	extsh r30, r3
/* 80853354  38 7F 06 B0 */	addi r3, r31, 0x6b0
/* 80853358  38 81 00 58 */	addi r4, r1, 0x58
/* 8085335C  4B A1 D9 18 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80853360  7C 65 07 34 */	extsh r5, r3
/* 80853364  B0 61 00 20 */	sth r3, 0x20(r1)
/* 80853368  B3 C1 00 22 */	sth r30, 0x22(r1)
/* 8085336C  38 80 00 00 */	li r4, 0
/* 80853370  B0 81 00 24 */	sth r4, 0x24(r1)
/* 80853374  3C 60 80 85 */	lis r3, l_HIO@ha
/* 80853378  38 63 4F 78 */	addi r3, r3, l_HIO@l
/* 8085337C  88 03 00 4C */	lbz r0, 0x4c(r3)
/* 80853380  28 00 00 00 */	cmplwi r0, 0
/* 80853384  40 82 00 18 */	bne lbl_8085339C
/* 80853388  7C 05 00 D0 */	neg r0, r5
/* 8085338C  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 80853390  B3 DF 06 C0 */	sth r30, 0x6c0(r31)
/* 80853394  B0 9F 06 C2 */	sth r4, 0x6c2(r31)
/* 80853398  48 00 00 50 */	b lbl_808533E8
lbl_8085339C:
/* 8085339C  3C 60 80 85 */	lis r3, lit_5481@ha
/* 808533A0  C0 43 4B F4 */	lfs f2, lit_5481@l(r3)
/* 808533A4  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 808533A8  3C 60 80 85 */	lis r3, lit_4923@ha
/* 808533AC  C8 23 4B D4 */	lfd f1, lit_4923@l(r3)
/* 808533B0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 808533B4  90 01 00 6C */	stw r0, 0x6c(r1)
/* 808533B8  3C 00 43 30 */	lis r0, 0x4330
/* 808533BC  90 01 00 68 */	stw r0, 0x68(r1)
/* 808533C0  C8 01 00 68 */	lfd f0, 0x68(r1)
/* 808533C4  EC 00 08 28 */	fsubs f0, f0, f1
/* 808533C8  EC 02 00 32 */	fmuls f0, f2, f0
/* 808533CC  FC 00 00 1E */	fctiwz f0, f0
/* 808533D0  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 808533D4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 808533D8  B0 1F 06 BE */	sth r0, 0x6be(r31)
/* 808533DC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 808533E0  B0 1F 06 C0 */	sth r0, 0x6c0(r31)
/* 808533E4  B0 9F 06 C2 */	sth r4, 0x6c2(r31)
lbl_808533E8:
/* 808533E8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 808533EC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 808533F0  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 808533F4  38 00 00 FF */	li r0, 0xff
/* 808533F8  90 01 00 08 */	stw r0, 8(r1)
/* 808533FC  38 80 00 00 */	li r4, 0
/* 80853400  90 81 00 0C */	stw r4, 0xc(r1)
/* 80853404  38 00 FF FF */	li r0, -1
/* 80853408  90 01 00 10 */	stw r0, 0x10(r1)
/* 8085340C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80853410  90 81 00 18 */	stw r4, 0x18(r1)
/* 80853414  90 81 00 1C */	stw r4, 0x1c(r1)
/* 80853418  80 9F 0B 40 */	lwz r4, 0xb40(r31)
/* 8085341C  38 A0 00 00 */	li r5, 0
/* 80853420  3C C0 00 01 */	lis r6, 0x0001 /* 0x0000860F@ha */
/* 80853424  38 C6 86 0F */	addi r6, r6, 0x860F /* 0x0000860F@l */
/* 80853428  38 E1 00 4C */	addi r7, r1, 0x4c
/* 8085342C  39 1F 01 0C */	addi r8, r31, 0x10c
/* 80853430  39 3F 06 BE */	addi r9, r31, 0x6be
/* 80853434  39 40 00 00 */	li r10, 0
/* 80853438  3D 60 80 85 */	lis r11, lit_3932@ha
/* 8085343C  C0 2B 4B 10 */	lfs f1, lit_3932@l(r11)
/* 80853440  4B 7F A0 8C */	b set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80853444  90 7F 0B 40 */	stw r3, 0xb40(r31)
/* 80853448  83 E1 00 7C */	lwz r31, 0x7c(r1)
/* 8085344C  83 C1 00 78 */	lwz r30, 0x78(r1)
/* 80853450  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80853454  7C 08 03 A6 */	mtlr r0
/* 80853458  38 21 00 80 */	addi r1, r1, 0x80
/* 8085345C  4E 80 00 20 */	blr 
