lbl_801BF18C:
/* 801BF18C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 801BF190  7C 08 02 A6 */	mflr r0
/* 801BF194  90 01 00 24 */	stw r0, 0x24(r1)
/* 801BF198  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 801BF19C  7C 7F 1B 78 */	mr r31, r3
/* 801BF1A0  80 63 00 08 */	lwz r3, 8(r3)
/* 801BF1A4  80 63 0D 18 */	lwz r3, 0xd18(r3)
/* 801BF1A8  48 01 C2 C9 */	bl move__19dMenu_ItemExplain_cFv
/* 801BF1AC  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF1B0  80 83 0D 18 */	lwz r4, 0xd18(r3)
/* 801BF1B4  88 04 00 E0 */	lbz r0, 0xe0(r4)
/* 801BF1B8  28 00 00 02 */	cmplwi r0, 2
/* 801BF1BC  40 82 00 1C */	bne lbl_801BF1D8
/* 801BF1C0  38 80 00 00 */	li r4, 0
/* 801BF1C4  4B FF 9C 21 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BF1C8  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF1CC  38 80 03 F9 */	li r4, 0x3f9
/* 801BF1D0  4B FF 9C ED */	bl setBButtonString__14dMenu_DmapBg_cFUl
/* 801BF1D4  48 00 00 90 */	b lbl_801BF264
lbl_801BF1D8:
/* 801BF1D8  28 00 00 03 */	cmplwi r0, 3
/* 801BF1DC  40 82 00 30 */	bne lbl_801BF20C
/* 801BF1E0  88 1F 01 77 */	lbz r0, 0x177(r31)
/* 801BF1E4  7C 9F 02 14 */	add r4, r31, r0
/* 801BF1E8  88 04 01 74 */	lbz r0, 0x174(r4)
/* 801BF1EC  28 00 00 00 */	cmplwi r0, 0
/* 801BF1F0  41 82 00 10 */	beq lbl_801BF200
/* 801BF1F4  38 80 00 5D */	li r4, 0x5d
/* 801BF1F8  4B FF 9B ED */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BF1FC  48 00 00 68 */	b lbl_801BF264
lbl_801BF200:
/* 801BF200  38 80 00 00 */	li r4, 0
/* 801BF204  4B FF 9B E1 */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BF208  48 00 00 5C */	b lbl_801BF264
lbl_801BF20C:
/* 801BF20C  28 00 00 05 */	cmplwi r0, 5
/* 801BF210  40 82 00 54 */	bne lbl_801BF264
/* 801BF214  38 80 00 00 */	li r4, 0
/* 801BF218  4B FF 9B CD */	bl setAButtonString__14dMenu_DmapBg_cFUl
/* 801BF21C  38 00 00 52 */	li r0, 0x52
/* 801BF220  90 01 00 08 */	stw r0, 8(r1)
/* 801BF224  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801BF228  38 81 00 08 */	addi r4, r1, 8
/* 801BF22C  38 A0 00 00 */	li r5, 0
/* 801BF230  38 C0 00 00 */	li r6, 0
/* 801BF234  38 E0 00 00 */	li r7, 0
/* 801BF238  C0 22 A5 EC */	lfs f1, lit_3963(r2)
/* 801BF23C  FC 40 08 90 */	fmr f2, f1
/* 801BF240  C0 62 A6 5C */	lfs f3, lit_6181(r2)
/* 801BF244  FC 80 18 90 */	fmr f4, f3
/* 801BF248  39 00 00 00 */	li r8, 0
/* 801BF24C  48 0E C7 39 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801BF250  38 00 00 01 */	li r0, 1
/* 801BF254  80 7F 00 08 */	lwz r3, 8(r31)
/* 801BF258  98 03 0D D0 */	stb r0, 0xdd0(r3)
/* 801BF25C  38 00 00 04 */	li r0, 4
/* 801BF260  98 1F 01 7C */	stb r0, 0x17c(r31)
lbl_801BF264:
/* 801BF264  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 801BF268  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801BF26C  7C 08 03 A6 */	mtlr r0
/* 801BF270  38 21 00 20 */	addi r1, r1, 0x20
/* 801BF274  4E 80 00 20 */	blr 
