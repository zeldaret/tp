lbl_801AF1F4:
/* 801AF1F4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 801AF1F8  7C 08 02 A6 */	mflr r0
/* 801AF1FC  90 01 00 44 */	stw r0, 0x44(r1)
/* 801AF200  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 801AF204  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 801AF208  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 801AF20C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 801AF210  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801AF214  7C 7F 1B 78 */	mr r31, r3
/* 801AF218  3C 60 80 43 */	lis r3, g_drawHIO@ha
/* 801AF21C  38 63 EB C8 */	addi r3, r3, g_drawHIO@l
/* 801AF220  A8 83 0A 2C */	lha r4, 0xa2c(r3)
/* 801AF224  A8 7F 00 FA */	lha r3, 0xfa(r31)
/* 801AF228  38 03 00 01 */	addi r0, r3, 1
/* 801AF22C  B0 1F 00 FA */	sth r0, 0xfa(r31)
/* 801AF230  A8 1F 00 FA */	lha r0, 0xfa(r31)
/* 801AF234  7C 00 20 00 */	cmpw r0, r4
/* 801AF238  41 80 00 64 */	blt lbl_801AF29C
/* 801AF23C  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF240  C0 22 A5 14 */	lfs f1, lit_3885(r2)
/* 801AF244  48 0A 65 8D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF248  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801AF24C  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF250  48 0A 65 81 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF254  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AF258  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF25C  48 0A 65 75 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF260  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801AF264  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF268  48 0A 65 69 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF26C  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AF270  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF274  48 0A 65 5D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF278  88 1F 00 FF */	lbz r0, 0xff(r31)
/* 801AF27C  28 00 00 00 */	cmplwi r0, 0
/* 801AF280  40 82 00 10 */	bne lbl_801AF290
/* 801AF284  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AF288  C0 22 A5 10 */	lfs f1, lit_3847(r2)
/* 801AF28C  4B FE 60 15 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801AF290:
/* 801AF290  38 00 00 03 */	li r0, 3
/* 801AF294  98 1F 01 00 */	stb r0, 0x100(r31)
/* 801AF298  48 00 00 C4 */	b lbl_801AF35C
lbl_801AF29C:
/* 801AF29C  C8 42 A5 18 */	lfd f2, lit_3887(r2)
/* 801AF2A0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801AF2A4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801AF2A8  3C 60 43 30 */	lis r3, 0x4330
/* 801AF2AC  90 61 00 08 */	stw r3, 8(r1)
/* 801AF2B0  C8 01 00 08 */	lfd f0, 8(r1)
/* 801AF2B4  EC 20 10 28 */	fsubs f1, f0, f2
/* 801AF2B8  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 801AF2BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 801AF2C0  90 61 00 10 */	stw r3, 0x10(r1)
/* 801AF2C4  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 801AF2C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 801AF2CC  EF C1 00 24 */	fdivs f30, f1, f0
/* 801AF2D0  80 7F 00 5C */	lwz r3, 0x5c(r31)
/* 801AF2D4  FC 20 F0 90 */	fmr f1, f30
/* 801AF2D8  48 0A 64 F9 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF2DC  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801AF2E0  48 0A 65 49 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801AF2E4  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AF2E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801AF2EC  41 82 00 24 */	beq lbl_801AF310
/* 801AF2F0  80 7F 00 58 */	lwz r3, 0x58(r31)
/* 801AF2F4  C0 02 A5 14 */	lfs f0, lit_3885(r2)
/* 801AF2F8  EF E0 F0 28 */	fsubs f31, f0, f30
/* 801AF2FC  FC 20 F8 90 */	fmr f1, f31
/* 801AF300  48 0A 64 D1 */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF304  80 7F 00 7C */	lwz r3, 0x7c(r31)
/* 801AF308  FC 20 F8 90 */	fmr f1, f31
/* 801AF30C  48 0A 64 C5 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801AF310:
/* 801AF310  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801AF314  48 0A 65 15 */	bl getAlphaRate__13CPaneMgrAlphaFv
/* 801AF318  C0 02 A5 10 */	lfs f0, lit_3847(r2)
/* 801AF31C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 801AF320  41 82 00 24 */	beq lbl_801AF344
/* 801AF324  80 7F 00 60 */	lwz r3, 0x60(r31)
/* 801AF328  C0 02 A5 14 */	lfs f0, lit_3885(r2)
/* 801AF32C  EF E0 F0 28 */	fsubs f31, f0, f30
/* 801AF330  FC 20 F8 90 */	fmr f1, f31
/* 801AF334  48 0A 64 9D */	bl setAlphaRate__13CPaneMgrAlphaFf
/* 801AF338  80 7F 00 90 */	lwz r3, 0x90(r31)
/* 801AF33C  FC 20 F8 90 */	fmr f1, f31
/* 801AF340  48 0A 64 91 */	bl setAlphaRate__13CPaneMgrAlphaFf
lbl_801AF344:
/* 801AF344  88 1F 00 FF */	lbz r0, 0xff(r31)
/* 801AF348  28 00 00 00 */	cmplwi r0, 0
/* 801AF34C  40 82 00 10 */	bne lbl_801AF35C
/* 801AF350  80 7F 00 A8 */	lwz r3, 0xa8(r31)
/* 801AF354  FC 20 F0 90 */	fmr f1, f30
/* 801AF358  4B FE 5F 49 */	bl setAlphaRate__16dSelect_cursor_cFf
lbl_801AF35C:
/* 801AF35C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 801AF360  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 801AF364  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 801AF368  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 801AF36C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801AF370  80 01 00 44 */	lwz r0, 0x44(r1)
/* 801AF374  7C 08 03 A6 */	mtlr r0
/* 801AF378  38 21 00 40 */	addi r1, r1, 0x40
/* 801AF37C  4E 80 00 20 */	blr 
