lbl_8015337C:
/* 8015337C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80153380  7C 08 02 A6 */	mflr r0
/* 80153384  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80153388  39 61 00 C0 */	addi r11, r1, 0xc0
/* 8015338C  48 20 EE 51 */	bl _savegpr_29
/* 80153390  7C 7D 1B 78 */	mr r29, r3
/* 80153394  7C 9E 23 78 */	mr r30, r4
/* 80153398  7C BF 2B 78 */	mr r31, r5
/* 8015339C  80 05 00 00 */	lwz r0, 0(r5)
/* 801533A0  7C 00 F0 00 */	cmpw r0, r30
/* 801533A4  41 82 00 1C */	beq lbl_801533C0
/* 801533A8  80 1F 00 04 */	lwz r0, 4(r31)
/* 801533AC  7C 00 F0 00 */	cmpw r0, r30
/* 801533B0  41 82 00 10 */	beq lbl_801533C0
/* 801533B4  80 1F 00 08 */	lwz r0, 8(r31)
/* 801533B8  7C 00 F0 00 */	cmpw r0, r30
/* 801533BC  40 82 01 A4 */	bne lbl_80153560
lbl_801533C0:
/* 801533C0  A8 1D 09 26 */	lha r0, 0x926(r29)
/* 801533C4  C8 42 99 E0 */	lfd f2, lit_4142(r2)
/* 801533C8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801533CC  90 01 00 7C */	stw r0, 0x7c(r1)
/* 801533D0  3C 60 43 30 */	lis r3, 0x4330
/* 801533D4  90 61 00 78 */	stw r3, 0x78(r1)
/* 801533D8  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 801533DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 801533E0  EC 00 00 72 */	fmuls f0, f0, f1
/* 801533E4  FC 00 00 1E */	fctiwz f0, f0
/* 801533E8  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 801533EC  80 01 00 84 */	lwz r0, 0x84(r1)
/* 801533F0  B0 1D 09 20 */	sth r0, 0x920(r29)
/* 801533F4  A8 1D 09 28 */	lha r0, 0x928(r29)
/* 801533F8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 801533FC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80153400  90 61 00 88 */	stw r3, 0x88(r1)
/* 80153404  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80153408  EC 00 10 28 */	fsubs f0, f0, f2
/* 8015340C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80153410  FC 00 00 1E */	fctiwz f0, f0
/* 80153414  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80153418  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8015341C  B0 1D 09 22 */	sth r0, 0x922(r29)
/* 80153420  A8 1D 09 2A */	lha r0, 0x92a(r29)
/* 80153424  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80153428  90 01 00 9C */	stw r0, 0x9c(r1)
/* 8015342C  90 61 00 98 */	stw r3, 0x98(r1)
/* 80153430  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80153434  EC 00 10 28 */	fsubs f0, f0, f2
/* 80153438  EC 00 00 72 */	fmuls f0, f0, f1
/* 8015343C  FC 00 00 1E */	fctiwz f0, f0
/* 80153440  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80153444  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80153448  B0 1D 09 24 */	sth r0, 0x924(r29)
/* 8015344C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80153450  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80153454  38 81 00 44 */	addi r4, r1, 0x44
/* 80153458  48 1F 30 59 */	bl PSMTXCopy
/* 8015345C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80153460  D0 01 00 08 */	stfs f0, 8(r1)
/* 80153464  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80153468  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8015346C  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80153470  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80153474  C0 02 99 D8 */	lfs f0, lit_4116(r2)
/* 80153478  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8015347C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80153480  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80153484  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 80153488  4B EB 9A 85 */	bl ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 8015348C  80 1F 00 00 */	lwz r0, 0(r31)
/* 80153490  7C 00 F0 00 */	cmpw r0, r30
/* 80153494  41 82 00 30 */	beq lbl_801534C4
/* 80153498  80 1F 00 04 */	lwz r0, 4(r31)
/* 8015349C  7C 00 F0 00 */	cmpw r0, r30
/* 801534A0  40 82 00 10 */	bne lbl_801534B0
/* 801534A4  38 7D 09 1A */	addi r3, r29, 0x91a
/* 801534A8  4B EB 9A 9D */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 801534AC  48 00 00 18 */	b lbl_801534C4
lbl_801534B0:
/* 801534B0  80 1F 00 08 */	lwz r0, 8(r31)
/* 801534B4  7C 00 F0 00 */	cmpw r0, r30
/* 801534B8  40 82 00 0C */	bne lbl_801534C4
/* 801534BC  38 7D 09 20 */	addi r3, r29, 0x920
/* 801534C0  4B EB 9A 85 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_801534C4:
/* 801534C4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801534C8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801534CC  7C 64 1B 78 */	mr r4, r3
/* 801534D0  48 1F 30 E1 */	bl PSMTXInverse
/* 801534D4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 801534D8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 801534DC  38 81 00 14 */	addi r4, r1, 0x14
/* 801534E0  48 1F 2F D1 */	bl PSMTXCopy
/* 801534E4  38 61 00 08 */	addi r3, r1, 8
/* 801534E8  4B EB 98 7D */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 801534EC  38 7D 08 F0 */	addi r3, r29, 0x8f0
/* 801534F0  4B EB 99 E5 */	bl XYZrotM__14mDoMtx_stack_cFRC5csXyz
/* 801534F4  80 1F 00 00 */	lwz r0, 0(r31)
/* 801534F8  7C 00 F0 00 */	cmpw r0, r30
/* 801534FC  40 82 00 10 */	bne lbl_8015350C
/* 80153500  38 7D 09 1A */	addi r3, r29, 0x91a
/* 80153504  4B EB 9A 41 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80153508  48 00 00 30 */	b lbl_80153538
lbl_8015350C:
/* 8015350C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80153510  7C 00 F0 00 */	cmpw r0, r30
/* 80153514  40 82 00 10 */	bne lbl_80153524
/* 80153518  38 7D 09 20 */	addi r3, r29, 0x920
/* 8015351C  4B EB 9A 29 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80153520  48 00 00 18 */	b lbl_80153538
lbl_80153524:
/* 80153524  80 1F 00 08 */	lwz r0, 8(r31)
/* 80153528  7C 00 F0 00 */	cmpw r0, r30
/* 8015352C  40 82 00 0C */	bne lbl_80153538
/* 80153530  38 7D 09 26 */	addi r3, r29, 0x926
/* 80153534  4B EB 9A 11 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80153538:
/* 80153538  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015353C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80153540  38 81 00 14 */	addi r4, r1, 0x14
/* 80153544  7C 65 1B 78 */	mr r5, r3
/* 80153548  48 1F 2F 9D */	bl PSMTXConcat
/* 8015354C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80153550  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80153554  38 81 00 44 */	addi r4, r1, 0x44
/* 80153558  7C 65 1B 78 */	mr r5, r3
/* 8015355C  48 1F 2F 89 */	bl PSMTXConcat
lbl_80153560:
/* 80153560  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80153564  48 20 EC C5 */	bl _restgpr_29
/* 80153568  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 8015356C  7C 08 03 A6 */	mtlr r0
/* 80153570  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80153574  4E 80 00 20 */	blr 
