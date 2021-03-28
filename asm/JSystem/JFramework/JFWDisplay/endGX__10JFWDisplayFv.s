lbl_8027268C:
/* 8027268C  94 21 FF 00 */	stwu r1, -0x100(r1)
/* 80272690  7C 08 02 A6 */	mflr r0
/* 80272694  90 01 01 04 */	stw r0, 0x104(r1)
/* 80272698  93 E1 00 FC */	stw r31, 0xfc(r1)
/* 8027269C  7C 7F 1B 78 */	mr r31, r3
/* 802726A0  80 6D 8F B8 */	lwz r3, sManager__8JUTVideo(r13)
/* 802726A4  80 63 00 04 */	lwz r3, 4(r3)
/* 802726A8  A0 03 00 04 */	lhz r0, 4(r3)
/* 802726AC  A0 83 00 06 */	lhz r4, 6(r3)
/* 802726B0  38 61 00 08 */	addi r3, r1, 8
/* 802726B4  C0 22 B8 50 */	lfs f1, lit_2198(r2)
/* 802726B8  FC 40 08 90 */	fmr f2, f1
/* 802726BC  C8 82 B8 60 */	lfd f4, lit_2500(r2)
/* 802726C0  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802726C4  3C 00 43 30 */	lis r0, 0x4330
/* 802726C8  90 01 00 E0 */	stw r0, 0xe0(r1)
/* 802726CC  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 802726D0  EC 60 20 28 */	fsubs f3, f0, f4
/* 802726D4  90 81 00 EC */	stw r4, 0xec(r1)
/* 802726D8  90 01 00 E8 */	stw r0, 0xe8(r1)
/* 802726DC  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802726E0  EC 80 20 28 */	fsubs f4, f0, f4
/* 802726E4  C0 A2 B8 54 */	lfs f5, lit_2497(r2)
/* 802726E8  C0 C2 B8 58 */	lfs f6, lit_2498(r2)
/* 802726EC  48 07 6F E5 */	bl __ct__13J2DOrthoGraphFffffff
/* 802726F0  80 1F 00 04 */	lwz r0, 4(r31)
/* 802726F4  28 00 00 00 */	cmplwi r0, 0
/* 802726F8  41 82 00 14 */	beq lbl_8027270C
/* 802726FC  38 61 00 08 */	addi r3, r1, 8
/* 80272700  48 07 70 B5 */	bl setPort__13J2DOrthoGraphFv
/* 80272704  80 7F 00 04 */	lwz r3, 4(r31)
/* 80272708  48 07 2E D5 */	bl control__8JUTFaderFv
lbl_8027270C:
/* 8027270C  38 61 00 08 */	addi r3, r1, 8
/* 80272710  48 07 70 A5 */	bl setPort__13J2DOrthoGraphFv
/* 80272714  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 80272718  48 06 DB 8D */	bl flush__10JUTDbPrintFv
/* 8027271C  80 0D 8F F0 */	lwz r0, sManager__17JUTConsoleManager(r13)
/* 80272720  28 00 00 00 */	cmplwi r0, 0
/* 80272724  41 82 00 14 */	beq lbl_80272738
/* 80272728  38 61 00 08 */	addi r3, r1, 8
/* 8027272C  48 07 70 89 */	bl setPort__13J2DOrthoGraphFv
/* 80272730  80 6D 8F F0 */	lwz r3, sManager__17JUTConsoleManager(r13)
/* 80272734  48 07 5C 51 */	bl draw__17JUTConsoleManagerCFv
lbl_80272738:
/* 80272738  38 61 00 08 */	addi r3, r1, 8
/* 8027273C  48 07 70 79 */	bl setPort__13J2DOrthoGraphFv
/* 80272740  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 80272744  48 07 36 C5 */	bl draw__10JUTProcBarFv
/* 80272748  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 8027274C  2C 00 00 00 */	cmpwi r0, 0
/* 80272750  40 82 00 14 */	bne lbl_80272764
/* 80272754  80 6D 8F D0 */	lwz r3, sManager__6JUTXfb(r13)
/* 80272758  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8027275C  2C 00 00 01 */	cmpwi r0, 1
/* 80272760  40 82 00 08 */	bne lbl_80272768
lbl_80272764:
/* 80272764  48 07 22 F1 */	bl flushMessage_dbPrint__12JUTAssertionFv
lbl_80272768:
/* 80272768  48 0E 97 65 */	bl GXFlush
/* 8027276C  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 80272770  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 80272774  90 01 00 08 */	stw r0, 8(r1)
/* 80272778  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 8027277C  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 80272780  90 01 00 08 */	stw r0, 8(r1)
/* 80272784  83 E1 00 FC */	lwz r31, 0xfc(r1)
/* 80272788  80 01 01 04 */	lwz r0, 0x104(r1)
/* 8027278C  7C 08 03 A6 */	mtlr r0
/* 80272790  38 21 01 00 */	addi r1, r1, 0x100
/* 80272794  4E 80 00 20 */	blr 
