lbl_80040838:
/* 80040838  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8004083C  7C 08 02 A6 */	mflr r0
/* 80040840  90 01 00 74 */	stw r0, 0x74(r1)
/* 80040844  39 61 00 70 */	addi r11, r1, 0x70
/* 80040848  48 32 19 95 */	bl _savegpr_29
/* 8004084C  7C 9D 23 78 */	mr r29, r4
/* 80040850  7C BE 2B 78 */	mr r30, r5
/* 80040854  7C FF 3B 78 */	mr r31, r7
/* 80040858  88 0D 87 E4 */	lbz r0, struct_80450D64+0x0(r13)
/* 8004085C  7C 00 07 74 */	extsb r0, r0
/* 80040860  7C 1E 00 00 */	cmpw r30, r0
/* 80040864  41 82 00 0C */	beq lbl_80040870
/* 80040868  7C 06 00 00 */	cmpw r6, r0
/* 8004086C  40 82 00 30 */	bne lbl_8004089C
lbl_80040870:
/* 80040870  80 02 84 58 */	lwz r0, l_doorWhite(r2)
/* 80040874  90 01 00 14 */	stw r0, 0x14(r1)
/* 80040878  38 60 00 02 */	li r3, 2
/* 8004087C  38 81 00 14 */	addi r4, r1, 0x14
/* 80040880  48 31 EA FD */	bl GXSetTevColor
/* 80040884  80 02 84 60 */	lwz r0, l_doorWhite2(r2)
/* 80040888  90 01 00 10 */	stw r0, 0x10(r1)
/* 8004088C  38 60 00 03 */	li r3, 3
/* 80040890  38 81 00 10 */	addi r4, r1, 0x10
/* 80040894  48 31 EA E9 */	bl GXSetTevColor
/* 80040898  48 00 00 2C */	b lbl_800408C4
lbl_8004089C:
/* 8004089C  80 02 84 5C */	lwz r0, l_doorWhiteNoStay(r2)
/* 800408A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 800408A4  38 60 00 02 */	li r3, 2
/* 800408A8  38 81 00 0C */	addi r4, r1, 0xc
/* 800408AC  48 31 EA D1 */	bl GXSetTevColor
/* 800408B0  80 02 84 64 */	lwz r0, l_doorWhiteNoStay2(r2)
/* 800408B4  90 01 00 08 */	stw r0, 8(r1)
/* 800408B8  38 60 00 03 */	li r3, 3
/* 800408BC  38 81 00 08 */	addi r4, r1, 8
/* 800408C0  48 31 EA BD */	bl GXSetTevColor
lbl_800408C4:
/* 800408C4  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 800408C8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 800408CC  C0 1D 00 10 */	lfs f0, 0x10(r29)
/* 800408D0  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 800408D4  C0 1D 00 14 */	lfs f0, 0x14(r29)
/* 800408D8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 800408DC  57 E0 06 3F */	clrlwi. r0, r31, 0x18
/* 800408E0  41 82 00 10 */	beq lbl_800408F0
/* 800408E4  7F C3 07 74 */	extsb r3, r30
/* 800408E8  38 81 00 18 */	addi r4, r1, 0x18
/* 800408EC  4B FF E4 75 */	bl correctionOriginPos__10dMapInfo_nFScP3Vec
lbl_800408F0:
/* 800408F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 800408F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 800408F8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 800408FC  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80040900  C0 62 84 28 */	lfs f3, lit_3796(r2)
/* 80040904  48 30 5F E5 */	bl PSMTXTrans
/* 80040908  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8004090C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80040910  A8 9D 00 1A */	lha r4, 0x1a(r29)
/* 80040914  4B FC BB B9 */	bl mDoMtx_ZrotM__FPA4_fs
/* 80040918  C0 22 84 70 */	lfs f1, lit_4484(r2)
/* 8004091C  FC 40 08 90 */	fmr f2, f1
/* 80040920  C0 62 84 38 */	lfs f3, lit_4202(r2)
/* 80040924  4B FC C5 15 */	bl scaleM__14mDoMtx_stack_cFfff
/* 80040928  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8004092C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80040930  3C 80 80 38 */	lis r4, l_100x100BoxVertexList@ha /* 0x80379C58@ha */
/* 80040934  38 84 9C 58 */	addi r4, r4, l_100x100BoxVertexList@l /* 0x80379C58@l */
/* 80040938  38 A1 00 24 */	addi r5, r1, 0x24
/* 8004093C  38 C0 00 04 */	li r6, 4
/* 80040940  48 30 64 81 */	bl PSMTXMultVecArray
/* 80040944  38 60 00 80 */	li r3, 0x80
/* 80040948  38 80 00 00 */	li r4, 0
/* 8004094C  38 A0 00 04 */	li r5, 4
/* 80040950  48 31 BE 15 */	bl GXBegin
/* 80040954  38 A0 00 00 */	li r5, 0
/* 80040958  3C 60 CC 01 */	lis r3, 0xcc01
/* 8004095C  48 00 00 34 */	b lbl_80040990
lbl_80040960:
/* 80040960  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80040964  1C 00 00 0C */	mulli r0, r0, 0xc
/* 80040968  38 81 00 24 */	addi r4, r1, 0x24
/* 8004096C  7C 84 02 14 */	add r4, r4, r0
/* 80040970  C0 04 00 00 */	lfs f0, 0(r4)
/* 80040974  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80040978  C0 04 00 04 */	lfs f0, 4(r4)
/* 8004097C  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80040980  C0 04 00 08 */	lfs f0, 8(r4)
/* 80040984  D0 03 80 00 */	stfs f0, -0x8000(r3)
/* 80040988  98 A3 80 00 */	stb r5, -0x8000(r3)
/* 8004098C  38 A5 00 01 */	addi r5, r5, 1
lbl_80040990:
/* 80040990  54 A0 06 3E */	clrlwi r0, r5, 0x18
/* 80040994  28 00 00 04 */	cmplwi r0, 4
/* 80040998  41 80 FF C8 */	blt lbl_80040960
/* 8004099C  39 61 00 70 */	addi r11, r1, 0x70
/* 800409A0  48 32 18 89 */	bl _restgpr_29
/* 800409A4  80 01 00 74 */	lwz r0, 0x74(r1)
/* 800409A8  7C 08 03 A6 */	mtlr r0
/* 800409AC  38 21 00 70 */	addi r1, r1, 0x70
/* 800409B0  4E 80 00 20 */	blr 
