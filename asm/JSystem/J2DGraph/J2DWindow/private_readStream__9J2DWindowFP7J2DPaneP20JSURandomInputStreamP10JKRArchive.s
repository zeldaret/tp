lbl_802FA118:
/* 802FA118  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 802FA11C  7C 08 02 A6 */	mflr r0
/* 802FA120  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 802FA124  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 802FA128  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 802FA12C  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 802FA130  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 802FA134  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 802FA138  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 802FA13C  39 61 00 90 */	addi r11, r1, 0x90
/* 802FA140  48 06 80 8D */	bl _savegpr_25
/* 802FA144  7C 7B 1B 78 */	mr r27, r3
/* 802FA148  7C 99 23 78 */	mr r25, r4
/* 802FA14C  7C BC 2B 78 */	mr r28, r5
/* 802FA150  7C DD 33 78 */	mr r29, r6
/* 802FA154  7F 83 E3 78 */	mr r3, r28
/* 802FA158  81 9C 00 00 */	lwz r12, 0(r28)
/* 802FA15C  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802FA160  7D 89 03 A6 */	mtctr r12
/* 802FA164  4E 80 04 21 */	bctrl 
/* 802FA168  7C 7F 1B 78 */	mr r31, r3
/* 802FA16C  7F 83 E3 78 */	mr r3, r28
/* 802FA170  38 81 00 3C */	addi r4, r1, 0x3c
/* 802FA174  38 A0 00 08 */	li r5, 8
/* 802FA178  4B FE 21 21 */	bl read__14JSUInputStreamFPvl
/* 802FA17C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 802FA180  90 1B 00 08 */	stw r0, 8(r27)
/* 802FA184  7F 63 DB 78 */	mr r3, r27
/* 802FA188  7F 24 CB 78 */	mr r4, r25
/* 802FA18C  7F 85 E3 78 */	mr r5, r28
/* 802FA190  4B FF BF 35 */	bl makePaneStream__7J2DPaneFP7J2DPaneP20JSURandomInputStream
/* 802FA194  7F 83 E3 78 */	mr r3, r28
/* 802FA198  38 81 00 09 */	addi r4, r1, 9
/* 802FA19C  38 A0 00 01 */	li r5, 1
/* 802FA1A0  4B FE 20 F9 */	bl read__14JSUInputStreamFPvl
/* 802FA1A4  8B C1 00 09 */	lbz r30, 9(r1)
/* 802FA1A8  7F 83 E3 78 */	mr r3, r28
/* 802FA1AC  38 81 00 10 */	addi r4, r1, 0x10
/* 802FA1B0  38 A0 00 02 */	li r5, 2
/* 802FA1B4  4B FE 20 E5 */	bl read__14JSUInputStreamFPvl
/* 802FA1B8  A0 01 00 10 */	lhz r0, 0x10(r1)
/* 802FA1BC  C8 22 C8 48 */	lfd f1, lit_1974(r2)
/* 802FA1C0  90 01 00 4C */	stw r0, 0x4c(r1)
/* 802FA1C4  3C 00 43 30 */	lis r0, 0x4330
/* 802FA1C8  90 01 00 48 */	stw r0, 0x48(r1)
/* 802FA1CC  C8 01 00 48 */	lfd f0, 0x48(r1)
/* 802FA1D0  EF E0 08 28 */	fsubs f31, f0, f1
/* 802FA1D4  7F 83 E3 78 */	mr r3, r28
/* 802FA1D8  38 81 00 0E */	addi r4, r1, 0xe
/* 802FA1DC  38 A0 00 02 */	li r5, 2
/* 802FA1E0  4B FE 20 B9 */	bl read__14JSUInputStreamFPvl
/* 802FA1E4  A0 01 00 0E */	lhz r0, 0xe(r1)
/* 802FA1E8  C8 22 C8 48 */	lfd f1, lit_1974(r2)
/* 802FA1EC  90 01 00 54 */	stw r0, 0x54(r1)
/* 802FA1F0  3C 00 43 30 */	lis r0, 0x4330
/* 802FA1F4  90 01 00 50 */	stw r0, 0x50(r1)
/* 802FA1F8  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 802FA1FC  EF C0 08 28 */	fsubs f30, f0, f1
/* 802FA200  7F 83 E3 78 */	mr r3, r28
/* 802FA204  38 81 00 0C */	addi r4, r1, 0xc
/* 802FA208  38 A0 00 02 */	li r5, 2
/* 802FA20C  4B FE 20 8D */	bl read__14JSUInputStreamFPvl
/* 802FA210  A0 01 00 0C */	lhz r0, 0xc(r1)
/* 802FA214  C8 22 C8 48 */	lfd f1, lit_1974(r2)
/* 802FA218  90 01 00 5C */	stw r0, 0x5c(r1)
/* 802FA21C  3C 00 43 30 */	lis r0, 0x4330
/* 802FA220  90 01 00 58 */	stw r0, 0x58(r1)
/* 802FA224  C8 01 00 58 */	lfd f0, 0x58(r1)
/* 802FA228  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FA22C  EF BF 00 2A */	fadds f29, f31, f0
/* 802FA230  7F 83 E3 78 */	mr r3, r28
/* 802FA234  38 81 00 0A */	addi r4, r1, 0xa
/* 802FA238  38 A0 00 02 */	li r5, 2
/* 802FA23C  4B FE 20 5D */	bl read__14JSUInputStreamFPvl
/* 802FA240  A0 01 00 0A */	lhz r0, 0xa(r1)
/* 802FA244  C8 22 C8 48 */	lfd f1, lit_1974(r2)
/* 802FA248  90 01 00 64 */	stw r0, 0x64(r1)
/* 802FA24C  3C 00 43 30 */	lis r0, 0x4330
/* 802FA250  90 01 00 60 */	stw r0, 0x60(r1)
/* 802FA254  C8 01 00 60 */	lfd f0, 0x60(r1)
/* 802FA258  EC 00 08 28 */	fsubs f0, f0, f1
/* 802FA25C  EC 1E 00 2A */	fadds f0, f30, f0
/* 802FA260  D3 FB 01 14 */	stfs f31, 0x114(r27)
/* 802FA264  D3 DB 01 18 */	stfs f30, 0x118(r27)
/* 802FA268  D3 BB 01 1C */	stfs f29, 0x11c(r27)
/* 802FA26C  D0 1B 01 20 */	stfs f0, 0x120(r27)
/* 802FA270  7F 63 DB 78 */	mr r3, r27
/* 802FA274  7F 84 E3 78 */	mr r4, r28
/* 802FA278  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FA27C  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FA280  7F A6 EB 78 */	mr r6, r29
/* 802FA284  4B FF DB 35 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA288  7C 79 1B 79 */	or. r25, r3, r3
/* 802FA28C  41 82 00 38 */	beq lbl_802FA2C4
/* 802FA290  38 60 00 40 */	li r3, 0x40
/* 802FA294  4B FD 49 B9 */	bl __nw__FUl
/* 802FA298  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA29C  41 82 00 24 */	beq lbl_802FA2C0
/* 802FA2A0  38 00 00 00 */	li r0, 0
/* 802FA2A4  90 1A 00 28 */	stw r0, 0x28(r26)
/* 802FA2A8  7F 24 CB 78 */	mr r4, r25
/* 802FA2AC  38 A0 00 00 */	li r5, 0
/* 802FA2B0  4B FE 3F F9 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FA2B4  88 1A 00 3B */	lbz r0, 0x3b(r26)
/* 802FA2B8  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FA2BC  98 1A 00 3B */	stb r0, 0x3b(r26)
lbl_802FA2C0:
/* 802FA2C0  93 5B 01 00 */	stw r26, 0x100(r27)
lbl_802FA2C4:
/* 802FA2C4  7F 63 DB 78 */	mr r3, r27
/* 802FA2C8  7F 84 E3 78 */	mr r4, r28
/* 802FA2CC  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FA2D0  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FA2D4  7F A6 EB 78 */	mr r6, r29
/* 802FA2D8  4B FF DA E1 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA2DC  7C 79 1B 79 */	or. r25, r3, r3
/* 802FA2E0  41 82 00 38 */	beq lbl_802FA318
/* 802FA2E4  38 60 00 40 */	li r3, 0x40
/* 802FA2E8  4B FD 49 65 */	bl __nw__FUl
/* 802FA2EC  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA2F0  41 82 00 24 */	beq lbl_802FA314
/* 802FA2F4  38 00 00 00 */	li r0, 0
/* 802FA2F8  90 1A 00 28 */	stw r0, 0x28(r26)
/* 802FA2FC  7F 24 CB 78 */	mr r4, r25
/* 802FA300  38 A0 00 00 */	li r5, 0
/* 802FA304  4B FE 3F A5 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FA308  88 1A 00 3B */	lbz r0, 0x3b(r26)
/* 802FA30C  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FA310  98 1A 00 3B */	stb r0, 0x3b(r26)
lbl_802FA314:
/* 802FA314  93 5B 01 04 */	stw r26, 0x104(r27)
lbl_802FA318:
/* 802FA318  7F 63 DB 78 */	mr r3, r27
/* 802FA31C  7F 84 E3 78 */	mr r4, r28
/* 802FA320  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FA324  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FA328  7F A6 EB 78 */	mr r6, r29
/* 802FA32C  4B FF DA 8D */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA330  7C 79 1B 79 */	or. r25, r3, r3
/* 802FA334  41 82 00 38 */	beq lbl_802FA36C
/* 802FA338  38 60 00 40 */	li r3, 0x40
/* 802FA33C  4B FD 49 11 */	bl __nw__FUl
/* 802FA340  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA344  41 82 00 24 */	beq lbl_802FA368
/* 802FA348  38 00 00 00 */	li r0, 0
/* 802FA34C  90 1A 00 28 */	stw r0, 0x28(r26)
/* 802FA350  7F 24 CB 78 */	mr r4, r25
/* 802FA354  38 A0 00 00 */	li r5, 0
/* 802FA358  4B FE 3F 51 */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FA35C  88 1A 00 3B */	lbz r0, 0x3b(r26)
/* 802FA360  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FA364  98 1A 00 3B */	stb r0, 0x3b(r26)
lbl_802FA368:
/* 802FA368  93 5B 01 08 */	stw r26, 0x108(r27)
lbl_802FA36C:
/* 802FA36C  7F 63 DB 78 */	mr r3, r27
/* 802FA370  7F 84 E3 78 */	mr r4, r28
/* 802FA374  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FA378  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FA37C  7F A6 EB 78 */	mr r6, r29
/* 802FA380  4B FF DA 39 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA384  7C 79 1B 79 */	or. r25, r3, r3
/* 802FA388  41 82 00 38 */	beq lbl_802FA3C0
/* 802FA38C  38 60 00 40 */	li r3, 0x40
/* 802FA390  4B FD 48 BD */	bl __nw__FUl
/* 802FA394  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA398  41 82 00 24 */	beq lbl_802FA3BC
/* 802FA39C  38 00 00 00 */	li r0, 0
/* 802FA3A0  90 1A 00 28 */	stw r0, 0x28(r26)
/* 802FA3A4  7F 24 CB 78 */	mr r4, r25
/* 802FA3A8  38 A0 00 00 */	li r5, 0
/* 802FA3AC  4B FE 3E FD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FA3B0  88 1A 00 3B */	lbz r0, 0x3b(r26)
/* 802FA3B4  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FA3B8  98 1A 00 3B */	stb r0, 0x3b(r26)
lbl_802FA3BC:
/* 802FA3BC  93 5B 01 0C */	stw r26, 0x10c(r27)
lbl_802FA3C0:
/* 802FA3C0  7F 63 DB 78 */	mr r3, r27
/* 802FA3C4  7F 84 E3 78 */	mr r4, r28
/* 802FA3C8  3C A0 54 4C */	lis r5, 0x544C /* 0x544C5554@ha */
/* 802FA3CC  38 A5 55 54 */	addi r5, r5, 0x5554 /* 0x544C5554@l */
/* 802FA3D0  7F A6 EB 78 */	mr r6, r29
/* 802FA3D4  4B FF D9 E5 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA3D8  7C 79 1B 79 */	or. r25, r3, r3
/* 802FA3DC  41 82 00 24 */	beq lbl_802FA400
/* 802FA3E0  38 60 00 18 */	li r3, 0x18
/* 802FA3E4  4B FD 48 69 */	bl __nw__FUl
/* 802FA3E8  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA3EC  41 82 00 10 */	beq lbl_802FA3FC
/* 802FA3F0  38 80 00 00 */	li r4, 0
/* 802FA3F4  7F 25 CB 78 */	mr r5, r25
/* 802FA3F8  4B FE 44 99 */	bl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
lbl_802FA3FC:
/* 802FA3FC  93 5B 01 24 */	stw r26, 0x124(r27)
lbl_802FA400:
/* 802FA400  7F 83 E3 78 */	mr r3, r28
/* 802FA404  38 81 00 08 */	addi r4, r1, 8
/* 802FA408  38 A0 00 01 */	li r5, 1
/* 802FA40C  4B FE 1E 8D */	bl read__14JSUInputStreamFPvl
/* 802FA410  88 01 00 08 */	lbz r0, 8(r1)
/* 802FA414  98 1B 01 44 */	stb r0, 0x144(r27)
/* 802FA418  7F 83 E3 78 */	mr r3, r28
/* 802FA41C  38 81 00 28 */	addi r4, r1, 0x28
/* 802FA420  38 A0 00 04 */	li r5, 4
/* 802FA424  4B FE 1E 75 */	bl read__14JSUInputStreamFPvl
/* 802FA428  80 01 00 28 */	lwz r0, 0x28(r1)
/* 802FA42C  90 1B 01 28 */	stw r0, 0x128(r27)
/* 802FA430  7F 83 E3 78 */	mr r3, r28
/* 802FA434  38 81 00 24 */	addi r4, r1, 0x24
/* 802FA438  38 A0 00 04 */	li r5, 4
/* 802FA43C  4B FE 1E 5D */	bl read__14JSUInputStreamFPvl
/* 802FA440  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802FA444  90 1B 01 2C */	stw r0, 0x12c(r27)
/* 802FA448  7F 83 E3 78 */	mr r3, r28
/* 802FA44C  38 81 00 20 */	addi r4, r1, 0x20
/* 802FA450  38 A0 00 04 */	li r5, 4
/* 802FA454  4B FE 1E 45 */	bl read__14JSUInputStreamFPvl
/* 802FA458  80 01 00 20 */	lwz r0, 0x20(r1)
/* 802FA45C  90 1B 01 30 */	stw r0, 0x130(r27)
/* 802FA460  7F 83 E3 78 */	mr r3, r28
/* 802FA464  38 81 00 1C */	addi r4, r1, 0x1c
/* 802FA468  38 A0 00 04 */	li r5, 4
/* 802FA46C  4B FE 1E 2D */	bl read__14JSUInputStreamFPvl
/* 802FA470  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 802FA474  90 1B 01 34 */	stw r0, 0x134(r27)
/* 802FA478  38 00 00 00 */	li r0, 0
/* 802FA47C  90 1B 01 10 */	stw r0, 0x110(r27)
/* 802FA480  3B DE FF F2 */	addi r30, r30, -14
/* 802FA484  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802FA488  41 82 00 5C */	beq lbl_802FA4E4
/* 802FA48C  7F 63 DB 78 */	mr r3, r27
/* 802FA490  7F 84 E3 78 */	mr r4, r28
/* 802FA494  3C A0 54 49 */	lis r5, 0x5449 /* 0x54494D47@ha */
/* 802FA498  38 A5 4D 47 */	addi r5, r5, 0x4D47 /* 0x54494D47@l */
/* 802FA49C  7F A6 EB 78 */	mr r6, r29
/* 802FA4A0  4B FF D9 19 */	bl getPointer__7J2DPaneFP20JSURandomInputStreamUlP10JKRArchive
/* 802FA4A4  7C 7A 1B 79 */	or. r26, r3, r3
/* 802FA4A8  41 82 00 38 */	beq lbl_802FA4E0
/* 802FA4AC  38 60 00 40 */	li r3, 0x40
/* 802FA4B0  4B FD 47 9D */	bl __nw__FUl
/* 802FA4B4  7C 7D 1B 79 */	or. r29, r3, r3
/* 802FA4B8  41 82 00 24 */	beq lbl_802FA4DC
/* 802FA4BC  38 00 00 00 */	li r0, 0
/* 802FA4C0  90 1D 00 28 */	stw r0, 0x28(r29)
/* 802FA4C4  7F 44 D3 78 */	mr r4, r26
/* 802FA4C8  38 A0 00 00 */	li r5, 0
/* 802FA4CC  4B FE 3D DD */	bl storeTIMG__10JUTTextureFPC7ResTIMGUc
/* 802FA4D0  88 1D 00 3B */	lbz r0, 0x3b(r29)
/* 802FA4D4  54 00 07 BC */	rlwinm r0, r0, 0, 0x1e, 0x1e
/* 802FA4D8  98 1D 00 3B */	stb r0, 0x3b(r29)
lbl_802FA4DC:
/* 802FA4DC  93 BB 01 10 */	stw r29, 0x110(r27)
lbl_802FA4E0:
/* 802FA4E0  3B DE FF FF */	addi r30, r30, -1
lbl_802FA4E4:
/* 802FA4E4  38 00 00 00 */	li r0, 0
/* 802FA4E8  90 01 00 38 */	stw r0, 0x38(r1)
/* 802FA4EC  88 01 00 38 */	lbz r0, 0x38(r1)
/* 802FA4F0  98 1B 01 3C */	stb r0, 0x13c(r27)
/* 802FA4F4  88 01 00 39 */	lbz r0, 0x39(r1)
/* 802FA4F8  98 1B 01 3D */	stb r0, 0x13d(r27)
/* 802FA4FC  88 01 00 3A */	lbz r0, 0x3a(r1)
/* 802FA500  98 1B 01 3E */	stb r0, 0x13e(r27)
/* 802FA504  88 01 00 3B */	lbz r0, 0x3b(r1)
/* 802FA508  98 1B 01 3F */	stb r0, 0x13f(r27)
/* 802FA50C  38 00 FF FF */	li r0, -1
/* 802FA510  90 01 00 34 */	stw r0, 0x34(r1)
/* 802FA514  88 01 00 34 */	lbz r0, 0x34(r1)
/* 802FA518  98 1B 01 38 */	stb r0, 0x138(r27)
/* 802FA51C  88 01 00 35 */	lbz r0, 0x35(r1)
/* 802FA520  98 1B 01 39 */	stb r0, 0x139(r27)
/* 802FA524  88 01 00 36 */	lbz r0, 0x36(r1)
/* 802FA528  98 1B 01 3A */	stb r0, 0x13a(r27)
/* 802FA52C  88 01 00 37 */	lbz r0, 0x37(r1)
/* 802FA530  98 1B 01 3B */	stb r0, 0x13b(r27)
/* 802FA534  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802FA538  41 82 00 40 */	beq lbl_802FA578
/* 802FA53C  7F 83 E3 78 */	mr r3, r28
/* 802FA540  38 81 00 18 */	addi r4, r1, 0x18
/* 802FA544  38 A0 00 04 */	li r5, 4
/* 802FA548  4B FE 1D 51 */	bl read__14JSUInputStreamFPvl
/* 802FA54C  80 01 00 18 */	lwz r0, 0x18(r1)
/* 802FA550  90 01 00 30 */	stw r0, 0x30(r1)
/* 802FA554  88 01 00 30 */	lbz r0, 0x30(r1)
/* 802FA558  98 1B 01 3C */	stb r0, 0x13c(r27)
/* 802FA55C  88 01 00 31 */	lbz r0, 0x31(r1)
/* 802FA560  98 1B 01 3D */	stb r0, 0x13d(r27)
/* 802FA564  88 01 00 32 */	lbz r0, 0x32(r1)
/* 802FA568  98 1B 01 3E */	stb r0, 0x13e(r27)
/* 802FA56C  88 01 00 33 */	lbz r0, 0x33(r1)
/* 802FA570  98 1B 01 3F */	stb r0, 0x13f(r27)
/* 802FA574  3B DE FF FF */	addi r30, r30, -1
lbl_802FA578:
/* 802FA578  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 802FA57C  41 82 00 3C */	beq lbl_802FA5B8
/* 802FA580  7F 83 E3 78 */	mr r3, r28
/* 802FA584  38 81 00 14 */	addi r4, r1, 0x14
/* 802FA588  38 A0 00 04 */	li r5, 4
/* 802FA58C  4B FE 1D 0D */	bl read__14JSUInputStreamFPvl
/* 802FA590  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802FA594  90 01 00 2C */	stw r0, 0x2c(r1)
/* 802FA598  88 01 00 2C */	lbz r0, 0x2c(r1)
/* 802FA59C  98 1B 01 38 */	stb r0, 0x138(r27)
/* 802FA5A0  88 01 00 2D */	lbz r0, 0x2d(r1)
/* 802FA5A4  98 1B 01 39 */	stb r0, 0x139(r27)
/* 802FA5A8  88 01 00 2E */	lbz r0, 0x2e(r1)
/* 802FA5AC  98 1B 01 3A */	stb r0, 0x13a(r27)
/* 802FA5B0  88 01 00 2F */	lbz r0, 0x2f(r1)
/* 802FA5B4  98 1B 01 3B */	stb r0, 0x13b(r27)
lbl_802FA5B8:
/* 802FA5B8  7F 83 E3 78 */	mr r3, r28
/* 802FA5BC  80 01 00 40 */	lwz r0, 0x40(r1)
/* 802FA5C0  7C 9F 02 14 */	add r4, r31, r0
/* 802FA5C4  38 A0 00 00 */	li r5, 0
/* 802FA5C8  4B FE 1F 15 */	bl seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
/* 802FA5CC  7F 63 DB 78 */	mr r3, r27
/* 802FA5D0  48 00 00 35 */	bl initinfo2__9J2DWindowFv
/* 802FA5D4  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 802FA5D8  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 802FA5DC  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 802FA5E0  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 802FA5E4  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 802FA5E8  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 802FA5EC  39 61 00 90 */	addi r11, r1, 0x90
/* 802FA5F0  48 06 7C 29 */	bl _restgpr_25
/* 802FA5F4  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 802FA5F8  7C 08 03 A6 */	mtlr r0
/* 802FA5FC  38 21 00 C0 */	addi r1, r1, 0xc0
/* 802FA600  4E 80 00 20 */	blr 
