lbl_805D60BC:
/* 805D60BC  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 805D60C0  7C 08 02 A6 */	mflr r0
/* 805D60C4  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 805D60C8  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D60CC  4B D8 C1 0D */	bl _savegpr_28
/* 805D60D0  7C 7E 1B 78 */	mr r30, r3
/* 805D60D4  3C 60 80 5E */	lis r3, lit_3932@ha /* 0x805DCA54@ha */
/* 805D60D8  3B E3 CA 54 */	addi r31, r3, lit_3932@l /* 0x805DCA54@l */
/* 805D60DC  80 7E 08 18 */	lwz r3, 0x818(r30)
/* 805D60E0  38 03 00 01 */	addi r0, r3, 1
/* 805D60E4  90 1E 08 18 */	stw r0, 0x818(r30)
/* 805D60E8  38 61 00 50 */	addi r3, r1, 0x50
/* 805D60EC  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D60F0  38 BE 07 90 */	addi r5, r30, 0x790
/* 805D60F4  4B C9 09 F1 */	bl __pl__4cXyzCFRC3Vec
/* 805D60F8  38 61 00 44 */	addi r3, r1, 0x44
/* 805D60FC  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805D6100  38 A1 00 50 */	addi r5, r1, 0x50
/* 805D6104  4B C9 0A 31 */	bl __mi__4cXyzCFRC3Vec
/* 805D6108  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 805D610C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D6110  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 805D6114  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D6118  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 805D611C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D6120  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D6124  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D6128  80 1E 08 18 */	lwz r0, 0x818(r30)
/* 805D612C  2C 00 00 50 */	cmpwi r0, 0x50
/* 805D6130  40 80 01 D4 */	bge lbl_805D6304
/* 805D6134  88 1E 08 4C */	lbz r0, 0x84c(r30)
/* 805D6138  28 00 00 00 */	cmplwi r0, 0
/* 805D613C  41 82 00 14 */	beq lbl_805D6150
/* 805D6140  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 805D6144  38 03 FF 80 */	addi r0, r3, -128
/* 805D6148  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805D614C  48 00 00 10 */	b lbl_805D615C
lbl_805D6150:
/* 805D6150  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 805D6154  38 03 00 80 */	addi r0, r3, 0x80
/* 805D6158  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
lbl_805D615C:
/* 805D615C  80 7E 08 3C */	lwz r3, 0x83c(r30)
/* 805D6160  38 03 00 01 */	addi r0, r3, 1
/* 805D6164  90 1E 08 3C */	stw r0, 0x83c(r30)
/* 805D6168  C0 5F 03 F4 */	lfs f2, 0x3f4(r31)
/* 805D616C  80 1E 08 3C */	lwz r0, 0x83c(r30)
/* 805D6170  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D6174  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D6178  90 01 00 7C */	stw r0, 0x7c(r1)
/* 805D617C  3C 00 43 30 */	lis r0, 0x4330
/* 805D6180  90 01 00 78 */	stw r0, 0x78(r1)
/* 805D6184  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 805D6188  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D618C  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D6190  FC 00 00 1E */	fctiwz f0, f0
/* 805D6194  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 805D6198  80 01 00 84 */	lwz r0, 0x84(r1)
/* 805D619C  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805D61A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805D61A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805D61A8  7C 23 04 2E */	lfsx f1, r3, r0
/* 805D61AC  38 7E 07 90 */	addi r3, r30, 0x790
/* 805D61B0  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 805D61B4  EC 20 00 72 */	fmuls f1, f0, f1
/* 805D61B8  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D61BC  C0 7F 02 F0 */	lfs f3, 0x2f0(r31)
/* 805D61C0  4B C9 98 7D */	bl cLib_addCalc2__FPffff
/* 805D61C4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 805D61C8  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 805D61CC  C0 5F 02 CC */	lfs f2, 0x2cc(r31)
/* 805D61D0  80 1E 08 3C */	lwz r0, 0x83c(r30)
/* 805D61D4  C8 3F 00 98 */	lfd f1, 0x98(r31)
/* 805D61D8  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 805D61DC  90 01 00 8C */	stw r0, 0x8c(r1)
/* 805D61E0  3C 00 43 30 */	lis r0, 0x4330
/* 805D61E4  90 01 00 88 */	stw r0, 0x88(r1)
/* 805D61E8  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 805D61EC  EC 00 08 28 */	fsubs f0, f0, f1
/* 805D61F0  EC 02 00 32 */	fmuls f0, f2, f0
/* 805D61F4  FC 00 00 1E */	fctiwz f0, f0
/* 805D61F8  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 805D61FC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 805D6200  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 805D6204  7C 63 02 14 */	add r3, r3, r0
/* 805D6208  C0 23 00 04 */	lfs f1, 4(r3)
/* 805D620C  38 7E 07 98 */	addi r3, r30, 0x798
/* 805D6210  C0 1F 04 E4 */	lfs f0, 0x4e4(r31)
/* 805D6214  EC 20 00 72 */	fmuls f1, f0, f1
/* 805D6218  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D621C  C0 7F 02 F0 */	lfs f3, 0x2f0(r31)
/* 805D6220  4B C9 98 1D */	bl cLib_addCalc2__FPffff
/* 805D6224  38 61 00 38 */	addi r3, r1, 0x38
/* 805D6228  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D622C  38 BE 07 90 */	addi r5, r30, 0x790
/* 805D6230  4B C9 08 B5 */	bl __pl__4cXyzCFRC3Vec
/* 805D6234  38 61 00 2C */	addi r3, r1, 0x2c
/* 805D6238  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805D623C  38 A1 00 38 */	addi r5, r1, 0x38
/* 805D6240  4B C9 08 F5 */	bl __mi__4cXyzCFRC3Vec
/* 805D6244  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 805D6248  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D624C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 805D6250  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D6254  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 805D6258  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D625C  C0 3F 04 E8 */	lfs f1, 0x4e8(r31)
/* 805D6260  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805D6264  EC 21 00 2A */	fadds f1, f1, f0
/* 805D6268  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D626C  EC 01 00 28 */	fsubs f0, f1, f0
/* 805D6270  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D6274  80 1E 08 18 */	lwz r0, 0x818(r30)
/* 805D6278  2C 00 00 01 */	cmpwi r0, 1
/* 805D627C  40 82 00 18 */	bne lbl_805D6294
/* 805D6280  38 61 00 5C */	addi r3, r1, 0x5c
/* 805D6284  4B C9 0E A5 */	bl atan2sX_Z__4cXyzCFv
/* 805D6288  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 805D628C  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 805D6290  D0 1E 05 2C */	stfs f0, 0x52c(r30)
lbl_805D6294:
/* 805D6294  38 61 00 5C */	addi r3, r1, 0x5c
/* 805D6298  4B C9 0E B9 */	bl atan2sY_XZ__4cXyzCFv
/* 805D629C  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 805D62A0  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D62A4  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D62A8  80 63 00 00 */	lwz r3, 0(r3)
/* 805D62AC  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805D62B0  4B A3 61 2D */	bl mDoMtx_YrotS__FPA4_fs
/* 805D62B4  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D62B8  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D62BC  80 63 00 00 */	lwz r3, 0(r3)
/* 805D62C0  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805D62C4  4B A3 60 D9 */	bl mDoMtx_XrotM__FPA4_fs
/* 805D62C8  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D62CC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805D62D0  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805D62D4  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 805D62D8  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D62DC  38 61 00 68 */	addi r3, r1, 0x68
/* 805D62E0  38 81 00 5C */	addi r4, r1, 0x5c
/* 805D62E4  4B C9 AC 09 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805D62E8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805D62EC  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805D62F0  38 00 00 00 */	li r0, 0
/* 805D62F4  98 1E 08 61 */	stb r0, 0x861(r30)
/* 805D62F8  38 00 00 1E */	li r0, 0x1e
/* 805D62FC  90 1E 08 1C */	stw r0, 0x81c(r30)
/* 805D6300  48 00 01 64 */	b lbl_805D6464
lbl_805D6304:
/* 805D6304  80 1E 06 8C */	lwz r0, 0x68c(r30)
/* 805D6308  2C 00 00 23 */	cmpwi r0, 0x23
/* 805D630C  41 82 00 1C */	beq lbl_805D6328
/* 805D6310  7F C3 F3 78 */	mr r3, r30
/* 805D6314  38 80 00 23 */	li r4, 0x23
/* 805D6318  38 A0 00 00 */	li r5, 0
/* 805D631C  C0 3F 03 B8 */	lfs f1, 0x3b8(r31)
/* 805D6320  C0 5F 00 08 */	lfs f2, 8(r31)
/* 805D6324  4B FF 57 A5 */	bl setBck__8daB_DS_cFiUcff
lbl_805D6328:
/* 805D6328  38 7E 08 1C */	addi r3, r30, 0x81c
/* 805D632C  48 00 65 B9 */	bl func_805DC8E4
/* 805D6330  2C 03 00 00 */	cmpwi r3, 0
/* 805D6334  40 82 01 08 */	bne lbl_805D643C
/* 805D6338  38 00 00 01 */	li r0, 1
/* 805D633C  98 1E 08 61 */	stb r0, 0x861(r30)
/* 805D6340  88 1E 08 4C */	lbz r0, 0x84c(r30)
/* 805D6344  28 00 00 00 */	cmplwi r0, 0
/* 805D6348  41 82 00 28 */	beq lbl_805D6370
/* 805D634C  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 805D6350  38 03 FF 80 */	addi r0, r3, -128
/* 805D6354  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805D6358  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805D635C  C0 3F 02 B4 */	lfs f1, 0x2b4(r31)
/* 805D6360  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D6364  C0 7F 03 B8 */	lfs f3, 0x3b8(r31)
/* 805D6368  4B C9 96 D5 */	bl cLib_addCalc2__FPffff
/* 805D636C  48 00 00 24 */	b lbl_805D6390
lbl_805D6370:
/* 805D6370  A8 7E 04 E8 */	lha r3, 0x4e8(r30)
/* 805D6374  38 03 00 80 */	addi r0, r3, 0x80
/* 805D6378  B0 1E 04 E8 */	sth r0, 0x4e8(r30)
/* 805D637C  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805D6380  C0 3F 04 F0 */	lfs f1, 0x4f0(r31)
/* 805D6384  C0 5F 00 84 */	lfs f2, 0x84(r31)
/* 805D6388  C0 7F 03 B8 */	lfs f3, 0x3b8(r31)
/* 805D638C  4B C9 96 B1 */	bl cLib_addCalc2__FPffff
lbl_805D6390:
/* 805D6390  38 61 00 20 */	addi r3, r1, 0x20
/* 805D6394  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D6398  38 BE 07 90 */	addi r5, r30, 0x790
/* 805D639C  4B C9 07 49 */	bl __pl__4cXyzCFRC3Vec
/* 805D63A0  38 61 00 14 */	addi r3, r1, 0x14
/* 805D63A4  38 9E 07 18 */	addi r4, r30, 0x718
/* 805D63A8  38 A1 00 20 */	addi r5, r1, 0x20
/* 805D63AC  4B C9 07 89 */	bl __mi__4cXyzCFRC3Vec
/* 805D63B0  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805D63B4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D63B8  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805D63BC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D63C0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805D63C4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D63C8  38 00 00 00 */	li r0, 0
/* 805D63CC  B0 1E 07 BE */	sth r0, 0x7be(r30)
/* 805D63D0  38 61 00 5C */	addi r3, r1, 0x5c
/* 805D63D4  4B C9 0D 7D */	bl atan2sY_XZ__4cXyzCFv
/* 805D63D8  B0 7E 04 DC */	sth r3, 0x4dc(r30)
/* 805D63DC  38 61 00 5C */	addi r3, r1, 0x5c
/* 805D63E0  4B C9 0D 49 */	bl atan2sX_Z__4cXyzCFv
/* 805D63E4  B0 7E 04 DE */	sth r3, 0x4de(r30)
/* 805D63E8  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D63EC  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D63F0  80 63 00 00 */	lwz r3, 0(r3)
/* 805D63F4  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805D63F8  4B A3 5F E5 */	bl mDoMtx_YrotS__FPA4_fs
/* 805D63FC  3C 60 80 45 */	lis r3, calc_mtx@ha /* 0x80450768@ha */
/* 805D6400  38 63 07 68 */	addi r3, r3, calc_mtx@l /* 0x80450768@l */
/* 805D6404  80 63 00 00 */	lwz r3, 0(r3)
/* 805D6408  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805D640C  4B A3 5F 91 */	bl mDoMtx_XrotM__FPA4_fs
/* 805D6410  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D6414  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 805D6418  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 805D641C  C0 1F 02 28 */	lfs f0, 0x228(r31)
/* 805D6420  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 805D6424  38 61 00 68 */	addi r3, r1, 0x68
/* 805D6428  38 81 00 5C */	addi r4, r1, 0x5c
/* 805D642C  4B C9 AA C1 */	bl MtxPosition__FP4cXyzP4cXyz
/* 805D6430  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 805D6434  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805D6438  48 00 00 1C */	b lbl_805D6454
lbl_805D643C:
/* 805D643C  C0 1F 00 04 */	lfs f0, 4(r31)
/* 805D6440  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 805D6444  38 7E 05 2C */	addi r3, r30, 0x52c
/* 805D6448  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 805D644C  C0 5F 00 78 */	lfs f2, 0x78(r31)
/* 805D6450  4B C9 96 31 */	bl cLib_addCalc0__FPfff
lbl_805D6454:
/* 805D6454  38 7E 07 E8 */	addi r3, r30, 0x7e8
/* 805D6458  C0 3F 00 7C */	lfs f1, 0x7c(r31)
/* 805D645C  C0 5F 03 B8 */	lfs f2, 0x3b8(r31)
/* 805D6460  4B C9 96 21 */	bl cLib_addCalc0__FPfff
lbl_805D6464:
/* 805D6464  88 1E 08 61 */	lbz r0, 0x861(r30)
/* 805D6468  28 00 00 00 */	cmplwi r0, 0
/* 805D646C  40 82 00 10 */	bne lbl_805D647C
/* 805D6470  3B A0 00 08 */	li r29, 8
/* 805D6474  3B 80 02 00 */	li r28, 0x200
/* 805D6478  48 00 00 0C */	b lbl_805D6484
lbl_805D647C:
/* 805D647C  3B A0 00 28 */	li r29, 0x28
/* 805D6480  3B 80 01 00 */	li r28, 0x100
lbl_805D6484:
/* 805D6484  38 7E 04 E4 */	addi r3, r30, 0x4e4
/* 805D6488  A8 9E 04 DC */	lha r4, 0x4dc(r30)
/* 805D648C  7F A5 EB 78 */	mr r5, r29
/* 805D6490  7F 86 E3 78 */	mr r6, r28
/* 805D6494  4B C9 A1 75 */	bl cLib_addCalcAngleS2__FPssss
/* 805D6498  38 7E 04 E6 */	addi r3, r30, 0x4e6
/* 805D649C  A8 9E 04 DE */	lha r4, 0x4de(r30)
/* 805D64A0  7F A5 EB 78 */	mr r5, r29
/* 805D64A4  7F 86 E3 78 */	mr r6, r28
/* 805D64A8  4B C9 A1 61 */	bl cLib_addCalcAngleS2__FPssss
/* 805D64AC  38 61 00 08 */	addi r3, r1, 8
/* 805D64B0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805D64B4  38 BE 07 90 */	addi r5, r30, 0x790
/* 805D64B8  4B C9 06 2D */	bl __pl__4cXyzCFRC3Vec
/* 805D64BC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805D64C0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 805D64C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805D64C8  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 805D64CC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805D64D0  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 805D64D4  38 7E 2D 20 */	addi r3, r30, 0x2d20
/* 805D64D8  38 81 00 5C */	addi r4, r1, 0x5c
/* 805D64DC  C0 3F 00 08 */	lfs f1, 8(r31)
/* 805D64E0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805D64E4  C0 7F 02 B4 */	lfs f3, 0x2b4(r31)
/* 805D64E8  4B C9 95 D1 */	bl cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 805D64EC  80 1E 08 18 */	lwz r0, 0x818(r30)
/* 805D64F0  2C 00 00 50 */	cmpwi r0, 0x50
/* 805D64F4  41 80 00 1C */	blt lbl_805D6510
/* 805D64F8  C0 3F 00 3C */	lfs f1, 0x3c(r31)
/* 805D64FC  C0 1E 04 AC */	lfs f0, 0x4ac(r30)
/* 805D6500  EC 21 00 2A */	fadds f1, f1, f0
/* 805D6504  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805D6508  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805D650C  40 80 00 0C */	bge lbl_805D6518
lbl_805D6510:
/* 805D6510  38 60 00 00 */	li r3, 0
/* 805D6514  48 00 00 08 */	b lbl_805D651C
lbl_805D6518:
/* 805D6518  38 60 00 01 */	li r3, 1
lbl_805D651C:
/* 805D651C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 805D6520  4B D8 BD 05 */	bl _restgpr_28
/* 805D6524  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 805D6528  7C 08 03 A6 */	mtlr r0
/* 805D652C  38 21 00 B0 */	addi r1, r1, 0xb0
/* 805D6530  4E 80 00 20 */	blr 
