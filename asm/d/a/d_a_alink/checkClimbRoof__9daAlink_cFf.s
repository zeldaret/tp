lbl_800FEC70:
/* 800FEC70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800FEC74  7C 08 02 A6 */	mflr r0
/* 800FEC78  90 01 00 34 */	stw r0, 0x34(r1)
/* 800FEC7C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 800FEC80  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 800FEC84  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800FEC88  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800FEC8C  7C 7E 1B 78 */	mr r30, r3
/* 800FEC90  FF E0 08 90 */	fmr f31, f1
/* 800FEC94  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 800FEC98  38 83 9A 20 */	addi r4, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 800FEC9C  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 800FECA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 800FECA4  7C 64 02 14 */	add r3, r4, r0
/* 800FECA8  C0 03 00 04 */	lfs f0, 4(r3)
/* 800FECAC  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 800FECB0  C0 42 92 E0 */	lfs f2, lit_6845(r2)
/* 800FECB4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FECB8  EC 61 00 28 */	fsubs f3, f1, f0
/* 800FECBC  7C 04 04 2E */	lfsx f0, r4, r0
/* 800FECC0  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 800FECC4  EC 02 00 32 */	fmuls f0, f2, f0
/* 800FECC8  EC 21 00 28 */	fsubs f1, f1, f0
/* 800FECCC  D0 21 00 08 */	stfs f1, 8(r1)
/* 800FECD0  EC 1F 10 28 */	fsubs f0, f31, f2
/* 800FECD4  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 800FECD8  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 800FECDC  D0 3E 1D 98 */	stfs f1, 0x1d98(r30)
/* 800FECE0  D0 1E 1D 9C */	stfs f0, 0x1d9c(r30)
/* 800FECE4  D0 7E 1D A0 */	stfs f3, 0x1da0(r30)
/* 800FECE8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 800FECEC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 800FECF0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 800FECF4  7F E3 FB 78 */	mr r3, r31
/* 800FECF8  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 800FECFC  4B F7 67 A1 */	bl RoofChk__4dBgSFP12dBgS_RoofChk
/* 800FED00  C0 02 92 E0 */	lfs f0, lit_6845(r2)
/* 800FED04  EC 00 F8 2A */	fadds f0, f0, f31
/* 800FED08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 800FED0C  40 80 00 20 */	bge lbl_800FED2C
/* 800FED10  7F E3 FB 78 */	mr r3, r31
/* 800FED14  38 9E 1D 5C */	addi r4, r30, 0x1d5c
/* 800FED18  4B F7 60 45 */	bl GetMonkeyBarsCode__4dBgSFRC13cBgS_PolyInfo
/* 800FED1C  2C 03 00 00 */	cmpwi r3, 0
/* 800FED20  41 82 00 0C */	beq lbl_800FED2C
/* 800FED24  38 60 00 01 */	li r3, 1
/* 800FED28  48 00 00 08 */	b lbl_800FED30
lbl_800FED2C:
/* 800FED2C  38 60 00 00 */	li r3, 0
lbl_800FED30:
/* 800FED30  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 800FED34  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 800FED38  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800FED3C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800FED40  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800FED44  7C 08 03 A6 */	mtlr r0
/* 800FED48  38 21 00 30 */	addi r1, r1, 0x30
/* 800FED4C  4E 80 00 20 */	blr 
