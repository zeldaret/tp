lbl_802E02DC:
/* 802E02DC  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 802E02E0  7C 08 02 A6 */	mflr r0
/* 802E02E4  90 01 01 14 */	stw r0, 0x114(r1)
/* 802E02E8  39 61 01 10 */	addi r11, r1, 0x110
/* 802E02EC  48 08 1E ED */	bl _savegpr_28
/* 802E02F0  7C 7C 1B 78 */	mr r28, r3
/* 802E02F4  7F 9F E3 78 */	mr r31, r28
/* 802E02F8  83 C3 00 00 */	lwz r30, 0(r3)
/* 802E02FC  80 03 00 04 */	lwz r0, 4(r3)
/* 802E0300  28 00 00 00 */	cmplwi r0, 0
/* 802E0304  41 82 01 24 */	beq lbl_802E0428
/* 802E0308  28 1E 00 00 */	cmplwi r30, 0
/* 802E030C  41 82 01 1C */	beq lbl_802E0428
/* 802E0310  38 61 00 0C */	addi r3, r1, 0xc
/* 802E0314  C8 82 C6 10 */	lfd f4, lit_838(r2)
/* 802E0318  6C 80 80 00 */	xoris r0, r4, 0x8000
/* 802E031C  90 01 00 E4 */	stw r0, 0xe4(r1)
/* 802E0320  3C 80 43 30 */	lis r4, 0x4330
/* 802E0324  90 81 00 E0 */	stw r4, 0xe0(r1)
/* 802E0328  C8 01 00 E0 */	lfd f0, 0xe0(r1)
/* 802E032C  EC 20 20 28 */	fsubs f1, f0, f4
/* 802E0330  6C A0 80 00 */	xoris r0, r5, 0x8000
/* 802E0334  90 01 00 EC */	stw r0, 0xec(r1)
/* 802E0338  90 81 00 E8 */	stw r4, 0xe8(r1)
/* 802E033C  C8 01 00 E8 */	lfd f0, 0xe8(r1)
/* 802E0340  EC 40 20 28 */	fsubs f2, f0, f4
/* 802E0344  6C C0 80 00 */	xoris r0, r6, 0x8000
/* 802E0348  90 01 00 F4 */	stw r0, 0xf4(r1)
/* 802E034C  90 81 00 F0 */	stw r4, 0xf0(r1)
/* 802E0350  C8 01 00 F0 */	lfd f0, 0xf0(r1)
/* 802E0354  EC 60 20 28 */	fsubs f3, f0, f4
/* 802E0358  6C E0 80 00 */	xoris r0, r7, 0x8000
/* 802E035C  90 01 00 FC */	stw r0, 0xfc(r1)
/* 802E0360  90 81 00 F8 */	stw r4, 0xf8(r1)
/* 802E0364  C8 01 00 F8 */	lfd f0, 0xf8(r1)
/* 802E0368  EC 80 20 28 */	fsubs f4, f0, f4
/* 802E036C  C0 A2 C6 08 */	lfs f5, lit_835(r2)
/* 802E0370  C0 C2 C6 0C */	lfs f6, lit_836(r2)
/* 802E0374  48 00 93 5D */	bl __ct__13J2DOrthoGraphFffffff
/* 802E0378  38 61 00 0C */	addi r3, r1, 0xc
/* 802E037C  48 00 94 39 */	bl setPort__13J2DOrthoGraphFv
/* 802E0380  80 7C 00 04 */	lwz r3, 4(r28)
/* 802E0384  81 83 00 00 */	lwz r12, 0(r3)
/* 802E0388  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 802E038C  7D 89 03 A6 */	mtctr r12
/* 802E0390  4E 80 04 21 */	bctrl 
/* 802E0394  80 1C 00 08 */	lwz r0, 8(r28)
/* 802E0398  90 01 00 08 */	stw r0, 8(r1)
/* 802E039C  80 7C 00 04 */	lwz r3, 4(r28)
/* 802E03A0  38 81 00 08 */	addi r4, r1, 8
/* 802E03A4  4B FF E9 CD */	bl setCharColor__7JUTFontFQ28JUtility6TColor
/* 802E03A8  48 00 00 60 */	b lbl_802E0408
lbl_802E03AC:
/* 802E03AC  88 1C 00 0C */	lbz r0, 0xc(r28)
/* 802E03B0  28 00 00 00 */	cmplwi r0, 0
/* 802E03B4  41 82 00 1C */	beq lbl_802E03D0
/* 802E03B8  7F 83 E3 78 */	mr r3, r28
/* 802E03BC  A8 9E 00 04 */	lha r4, 4(r30)
/* 802E03C0  A8 BE 00 06 */	lha r5, 6(r30)
/* 802E03C4  A8 DE 00 0A */	lha r6, 0xa(r30)
/* 802E03C8  38 FE 00 0C */	addi r7, r30, 0xc
/* 802E03CC  48 00 00 75 */	bl drawString__10JUTDbPrintFiiiPCUc
lbl_802E03D0:
/* 802E03D0  A8 7E 00 08 */	lha r3, 8(r30)
/* 802E03D4  38 03 FF FF */	addi r0, r3, -1
/* 802E03D8  B0 1E 00 08 */	sth r0, 8(r30)
/* 802E03DC  7C 00 07 35 */	extsh. r0, r0
/* 802E03E0  41 81 00 20 */	bgt lbl_802E0400
/* 802E03E4  83 BE 00 00 */	lwz r29, 0(r30)
/* 802E03E8  7F C3 F3 78 */	mr r3, r30
/* 802E03EC  80 9C 00 10 */	lwz r4, 0x10(r28)
/* 802E03F0  4B FE E1 11 */	bl free__7JKRHeapFPvP7JKRHeap
/* 802E03F4  7F BE EB 78 */	mr r30, r29
/* 802E03F8  93 BF 00 00 */	stw r29, 0(r31)
/* 802E03FC  48 00 00 0C */	b lbl_802E0408
lbl_802E0400:
/* 802E0400  7F DF F3 78 */	mr r31, r30
/* 802E0404  83 DE 00 00 */	lwz r30, 0(r30)
lbl_802E0408:
/* 802E0408  28 1E 00 00 */	cmplwi r30, 0
/* 802E040C  40 82 FF A0 */	bne lbl_802E03AC
/* 802E0410  3C 60 80 3D */	lis r3, __vt__13J2DOrthoGraph@ha
/* 802E0414  38 03 C9 E0 */	addi r0, r3, __vt__13J2DOrthoGraph@l
/* 802E0418  90 01 00 0C */	stw r0, 0xc(r1)
/* 802E041C  3C 60 80 3D */	lis r3, __vt__14J2DGrafContext@ha
/* 802E0420  38 03 C9 B8 */	addi r0, r3, __vt__14J2DGrafContext@l
/* 802E0424  90 01 00 0C */	stw r0, 0xc(r1)
lbl_802E0428:
/* 802E0428  39 61 01 10 */	addi r11, r1, 0x110
/* 802E042C  48 08 1D F9 */	bl _restgpr_28
/* 802E0430  80 01 01 14 */	lwz r0, 0x114(r1)
/* 802E0434  7C 08 03 A6 */	mtlr r0
/* 802E0438  38 21 01 10 */	addi r1, r1, 0x110
/* 802E043C  4E 80 00 20 */	blr 
