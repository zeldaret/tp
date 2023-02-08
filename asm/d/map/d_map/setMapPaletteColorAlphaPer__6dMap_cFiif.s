lbl_800297A8:
/* 800297A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800297AC  7C 08 02 A6 */	mflr r0
/* 800297B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 800297B4  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 800297B8  39 61 00 18 */	addi r11, r1, 0x18
/* 800297BC  48 33 8A 1D */	bl _savegpr_28
/* 800297C0  7C 7C 1B 78 */	mr r28, r3
/* 800297C4  FF E0 08 90 */	fmr f31, f1
/* 800297C8  7C 64 28 50 */	subf r3, r4, r5
/* 800297CC  3B E3 00 01 */	addi r31, r3, 1
/* 800297D0  7C 9E 23 78 */	mr r30, r4
/* 800297D4  3B A0 00 00 */	li r29, 0
/* 800297D8  48 00 00 1C */	b lbl_800297F4
lbl_800297DC:
/* 800297DC  7F 83 E3 78 */	mr r3, r28
/* 800297E0  7F C4 F3 78 */	mr r4, r30
/* 800297E4  FC 20 F8 90 */	fmr f1, f31
/* 800297E8  48 00 07 9D */	bl setMapPaletteColorAlphaPer__6dMap_cFif
/* 800297EC  3B DE 00 01 */	addi r30, r30, 1
/* 800297F0  3B BD 00 01 */	addi r29, r29, 1
lbl_800297F4:
/* 800297F4  7C 1D F8 00 */	cmpw r29, r31
/* 800297F8  41 80 FF E4 */	blt lbl_800297DC
/* 800297FC  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 80029800  39 61 00 18 */	addi r11, r1, 0x18
/* 80029804  48 33 8A 21 */	bl _restgpr_28
/* 80029808  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8002980C  7C 08 03 A6 */	mtlr r0
/* 80029810  38 21 00 20 */	addi r1, r1, 0x20
/* 80029814  4E 80 00 20 */	blr 
