lbl_802FD168:
/* 802FD168  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 802FD16C  7C 08 02 A6 */	mflr r0
/* 802FD170  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FD174  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 802FD178  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 802FD17C  39 61 00 50 */	addi r11, r1, 0x50
/* 802FD180  48 06 50 51 */	bl _savegpr_26
/* 802FD184  7C 7B 1B 78 */	mr r27, r3
/* 802FD188  7C 9C 23 79 */	or. r28, r4, r4
/* 802FD18C  7C BD 2B 78 */	mr r29, r5
/* 802FD190  7C DE 33 78 */	mr r30, r6
/* 802FD194  FF E0 08 90 */	fmr f31, f1
/* 802FD198  41 82 00 24 */	beq lbl_802FD1BC
/* 802FD19C  88 9B 01 08 */	lbz r4, 0x108(r27)
/* 802FD1A0  28 04 00 02 */	cmplwi r4, 2
/* 802FD1A4  40 80 00 18 */	bge lbl_802FD1BC
/* 802FD1A8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802FD1AC  28 00 00 02 */	cmplwi r0, 2
/* 802FD1B0  40 80 00 0C */	bge lbl_802FD1BC
/* 802FD1B4  7C 00 20 40 */	cmplw r0, r4
/* 802FD1B8  40 81 00 0C */	ble lbl_802FD1C4
lbl_802FD1BC:
/* 802FD1BC  38 60 00 00 */	li r3, 0
/* 802FD1C0  48 00 02 D4 */	b lbl_802FD494
lbl_802FD1C4:
/* 802FD1C4  3B 40 00 00 */	li r26, 0
/* 802FD1C8  88 1C 00 08 */	lbz r0, 8(r28)
/* 802FD1CC  28 00 00 00 */	cmplwi r0, 0
/* 802FD1D0  41 82 00 20 */	beq lbl_802FD1F0
/* 802FD1D4  28 1D 00 00 */	cmplwi r29, 0
/* 802FD1D8  40 82 00 18 */	bne lbl_802FD1F0
/* 802FD1DC  81 83 00 00 */	lwz r12, 0(r3)
/* 802FD1E0  81 8C 01 48 */	lwz r12, 0x148(r12)
/* 802FD1E4  7D 89 03 A6 */	mtctr r12
/* 802FD1E8  4E 80 04 21 */	bctrl 
/* 802FD1EC  7C 7A 1B 78 */	mr r26, r3
lbl_802FD1F0:
/* 802FD1F0  88 1B 01 08 */	lbz r0, 0x108(r27)
/* 802FD1F4  54 00 10 3A */	slwi r0, r0, 2
/* 802FD1F8  7C 7B 02 14 */	add r3, r27, r0
/* 802FD1FC  80 63 01 00 */	lwz r3, 0x100(r3)
/* 802FD200  28 03 00 00 */	cmplwi r3, 0
/* 802FD204  40 82 00 BC */	bne lbl_802FD2C0
/* 802FD208  38 60 00 40 */	li r3, 0x40
/* 802FD20C  4B FD 1A 41 */	bl __nw__FUl
/* 802FD210  7C 7F 1B 79 */	or. r31, r3, r3
/* 802FD214  41 82 00 24 */	beq lbl_802FD238
/* 802FD218  38 00 00 00 */	li r0, 0
/* 802FD21C  90 1F 00 28 */	stw r0, 0x28(r31)
/* 802FD220  7F 84 E3 78 */	mr r4, r28
/* 802FD224  7F 45 D3 78 */	mr r5, r26
/* 802FD228  4B FE 10 81 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FD22C  88 1F 00 3B */	lbz r0, 0x3b(r31)
/* 802FD230  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FD234  98 1F 00 3B */	stb r0, 0x3b(r31)
lbl_802FD238:
/* 802FD238  28 1D 00 00 */	cmplwi r29, 0
/* 802FD23C  41 82 00 14 */	beq lbl_802FD250
/* 802FD240  7F E3 FB 78 */	mr r3, r31
/* 802FD244  7F 84 E3 78 */	mr r4, r28
/* 802FD248  7F A5 EB 78 */	mr r5, r29
/* 802FD24C  4B FE 12 01 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802FD250:
/* 802FD250  38 A0 00 01 */	li r5, 1
/* 802FD254  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 802FD258  48 00 00 28 */	b lbl_802FD280
lbl_802FD25C:
/* 802FD25C  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 802FD260  7C 9B 02 14 */	add r4, r27, r0
/* 802FD264  80 04 00 FC */	lwz r0, 0xfc(r4)
/* 802FD268  90 04 01 00 */	stw r0, 0x100(r4)
/* 802FD26C  C0 04 01 18 */	lfs f0, 0x118(r4)
/* 802FD270  D0 04 01 1C */	stfs f0, 0x11c(r4)
/* 802FD274  C0 04 01 20 */	lfs f0, 0x120(r4)
/* 802FD278  D0 04 01 24 */	stfs f0, 0x124(r4)
/* 802FD27C  38 A5 FF FF */	addi r5, r5, -1
lbl_802FD280:
/* 802FD280  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 802FD284  7C 00 18 40 */	cmplw r0, r3
/* 802FD288  41 81 FF D4 */	bgt lbl_802FD25C
/* 802FD28C  38 00 00 01 */	li r0, 1
/* 802FD290  7C 05 18 30 */	slw r5, r0, r3
/* 802FD294  38 05 FF FF */	addi r0, r5, -1
/* 802FD298  88 9B 01 09 */	lbz r4, 0x109(r27)
/* 802FD29C  7C 83 00 38 */	and r3, r4, r0
/* 802FD2A0  7C 80 00 78 */	andc r0, r4, r0
/* 802FD2A4  54 00 08 3C */	slwi r0, r0, 1
/* 802FD2A8  7C 60 03 78 */	or r0, r3, r0
/* 802FD2AC  98 1B 01 09 */	stb r0, 0x109(r27)
/* 802FD2B0  88 1B 01 09 */	lbz r0, 0x109(r27)
/* 802FD2B4  7C 00 2B 78 */	or r0, r0, r5
/* 802FD2B8  98 1B 01 09 */	stb r0, 0x109(r27)
/* 802FD2BC  48 00 01 18 */	b lbl_802FD3D4
lbl_802FD2C0:
/* 802FD2C0  7C 7F 1B 78 */	mr r31, r3
/* 802FD2C4  28 1D 00 00 */	cmplwi r29, 0
/* 802FD2C8  40 82 00 14 */	bne lbl_802FD2DC
/* 802FD2CC  7F 84 E3 78 */	mr r4, r28
/* 802FD2D0  7F 45 D3 78 */	mr r5, r26
/* 802FD2D4  4B FE 0F D5 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FD2D8  48 00 00 10 */	b lbl_802FD2E8
lbl_802FD2DC:
/* 802FD2DC  7F 84 E3 78 */	mr r4, r28
/* 802FD2E0  7F A5 EB 78 */	mr r5, r29
/* 802FD2E4  4B FE 11 69 */	bl storeTIMG__10JUTTextureFPC7ResTIMGP10JUTPalette
lbl_802FD2E8:
/* 802FD2E8  38 E0 00 00 */	li r7, 0
/* 802FD2EC  38 C0 00 01 */	li r6, 1
/* 802FD2F0  38 61 00 08 */	addi r3, r1, 8
/* 802FD2F4  48 00 00 24 */	b lbl_802FD318
lbl_802FD2F8:
/* 802FD2F8  88 9B 01 09 */	lbz r4, 0x109(r27)
/* 802FD2FC  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802FD300  7C C0 28 30 */	slw r0, r6, r5
/* 802FD304  7C 84 00 38 */	and r4, r4, r0
/* 802FD308  30 04 FF FF */	addic r0, r4, -1
/* 802FD30C  7C 00 21 10 */	subfe r0, r0, r4
/* 802FD310  7C 03 29 AE */	stbx r0, r3, r5
/* 802FD314  38 E7 00 01 */	addi r7, r7, 1
lbl_802FD318:
/* 802FD318  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802FD31C  28 00 00 02 */	cmplwi r0, 2
/* 802FD320  41 80 FF D8 */	blt lbl_802FD2F8
/* 802FD324  88 FB 01 08 */	lbz r7, 0x108(r27)
/* 802FD328  38 81 00 08 */	addi r4, r1, 8
/* 802FD32C  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802FD330  48 00 00 38 */	b lbl_802FD368
lbl_802FD334:
/* 802FD334  54 E5 06 3E */	clrlwi r5, r7, 0x18
/* 802FD338  54 E3 15 BA */	rlwinm r3, r7, 2, 0x16, 0x1d
/* 802FD33C  7C DB 1A 14 */	add r6, r27, r3
/* 802FD340  80 66 00 FC */	lwz r3, 0xfc(r6)
/* 802FD344  90 66 01 00 */	stw r3, 0x100(r6)
/* 802FD348  38 65 FF FF */	addi r3, r5, -1
/* 802FD34C  7C 64 18 AE */	lbzx r3, r4, r3
/* 802FD350  7C 64 29 AE */	stbx r3, r4, r5
/* 802FD354  C0 06 01 18 */	lfs f0, 0x118(r6)
/* 802FD358  D0 06 01 1C */	stfs f0, 0x11c(r6)
/* 802FD35C  C0 06 01 20 */	lfs f0, 0x120(r6)
/* 802FD360  D0 06 01 24 */	stfs f0, 0x124(r6)
/* 802FD364  38 E7 FF FF */	addi r7, r7, -1
lbl_802FD368:
/* 802FD368  54 E3 06 3E */	clrlwi r3, r7, 0x18
/* 802FD36C  7C 03 00 40 */	cmplw r3, r0
/* 802FD370  41 81 FF C4 */	bgt lbl_802FD334
/* 802FD374  38 00 00 00 */	li r0, 0
/* 802FD378  98 1B 01 09 */	stb r0, 0x109(r27)
/* 802FD37C  38 E0 00 00 */	li r7, 0
/* 802FD380  38 A1 00 08 */	addi r5, r1, 8
/* 802FD384  38 60 00 01 */	li r3, 1
/* 802FD388  48 00 00 28 */	b lbl_802FD3B0
lbl_802FD38C:
/* 802FD38C  54 E6 06 3E */	clrlwi r6, r7, 0x18
/* 802FD390  7C 05 30 AE */	lbzx r0, r5, r6
/* 802FD394  28 00 00 00 */	cmplwi r0, 0
/* 802FD398  41 82 00 14 */	beq lbl_802FD3AC
/* 802FD39C  88 9B 01 09 */	lbz r4, 0x109(r27)
/* 802FD3A0  7C 60 30 30 */	slw r0, r3, r6
/* 802FD3A4  7C 80 03 78 */	or r0, r4, r0
/* 802FD3A8  98 1B 01 09 */	stb r0, 0x109(r27)
lbl_802FD3AC:
/* 802FD3AC  38 E7 00 01 */	addi r7, r7, 1
lbl_802FD3B0:
/* 802FD3B0  54 E0 06 3E */	clrlwi r0, r7, 0x18
/* 802FD3B4  28 00 00 02 */	cmplwi r0, 2
/* 802FD3B8  41 80 FF D4 */	blt lbl_802FD38C
/* 802FD3BC  88 9B 01 09 */	lbz r4, 0x109(r27)
/* 802FD3C0  38 60 00 01 */	li r3, 1
/* 802FD3C4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 802FD3C8  7C 60 00 30 */	slw r0, r3, r0
/* 802FD3CC  7C 80 03 78 */	or r0, r4, r0
/* 802FD3D0  98 1B 01 09 */	stb r0, 0x109(r27)
lbl_802FD3D4:
/* 802FD3D4  57 C0 15 BA */	rlwinm r0, r30, 2, 0x16, 0x1d
/* 802FD3D8  7C 7B 02 14 */	add r3, r27, r0
/* 802FD3DC  93 E3 01 00 */	stw r31, 0x100(r3)
/* 802FD3E0  D3 E3 01 1C */	stfs f31, 0x11c(r3)
/* 802FD3E4  D3 E3 01 24 */	stfs f31, 0x124(r3)
/* 802FD3E8  88 1B 01 08 */	lbz r0, 0x108(r27)
/* 802FD3EC  28 00 00 00 */	cmplwi r0, 0
/* 802FD3F0  40 82 00 84 */	bne lbl_802FD474
/* 802FD3F4  80 7B 01 00 */	lwz r3, 0x100(r27)
/* 802FD3F8  28 03 00 00 */	cmplwi r3, 0
/* 802FD3FC  41 82 00 78 */	beq lbl_802FD474
/* 802FD400  80 63 00 20 */	lwz r3, 0x20(r3)
/* 802FD404  A0 83 00 04 */	lhz r4, 4(r3)
/* 802FD408  A0 03 00 02 */	lhz r0, 2(r3)
/* 802FD40C  C0 02 C8 6C */	lfs f0, lit_2017(r2)
/* 802FD410  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802FD414  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 802FD418  C8 22 C8 70 */	lfd f1, lit_2021(r2)
/* 802FD41C  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 802FD420  90 01 00 24 */	stw r0, 0x24(r1)
/* 802FD424  3C 60 43 30 */	lis r3, 0x4330
/* 802FD428  90 61 00 20 */	stw r3, 0x20(r1)
/* 802FD42C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 802FD430  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FD434  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 802FD438  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802FD43C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FD440  90 61 00 28 */	stw r3, 0x28(r1)
/* 802FD444  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 802FD448  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FD44C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 802FD450  7F 63 DB 78 */	mr r3, r27
/* 802FD454  38 81 00 0C */	addi r4, r1, 0xc
/* 802FD458  4B FF 98 C1 */	bl func_802F6D18
/* 802FD45C  7F 63 DB 78 */	mr r3, r27
/* 802FD460  38 80 00 00 */	li r4, 0
/* 802FD464  38 A0 00 0F */	li r5, 0xf
/* 802FD468  38 C0 00 00 */	li r6, 0
/* 802FD46C  38 E0 00 00 */	li r7, 0
/* 802FD470  48 00 18 D5 */	bl setTexCoord__10J2DPictureFPC10JUTTexture10J2DBinding9J2DMirrorb
lbl_802FD474:
/* 802FD474  88 7B 01 08 */	lbz r3, 0x108(r27)
/* 802FD478  38 03 00 01 */	addi r0, r3, 1
/* 802FD47C  98 1B 01 08 */	stb r0, 0x108(r27)
/* 802FD480  7F 63 DB 78 */	mr r3, r27
/* 802FD484  48 00 16 41 */	bl setBlendKonstColor__10J2DPictureFv
/* 802FD488  7F 63 DB 78 */	mr r3, r27
/* 802FD48C  48 00 17 09 */	bl setBlendKonstAlpha__10J2DPictureFv
/* 802FD490  38 60 00 01 */	li r3, 1
lbl_802FD494:
/* 802FD494  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 802FD498  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 802FD49C  39 61 00 50 */	addi r11, r1, 0x50
/* 802FD4A0  48 06 4D 7D */	bl _restgpr_26
/* 802FD4A4  80 01 00 64 */	lwz r0, 0x64(r1)
/* 802FD4A8  7C 08 03 A6 */	mtlr r0
/* 802FD4AC  38 21 00 60 */	addi r1, r1, 0x60
/* 802FD4B0  4E 80 00 20 */	blr 
