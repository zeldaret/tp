lbl_80C00ACC:
/* 80C00ACC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80C00AD0  7C 08 02 A6 */	mflr r0
/* 80C00AD4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80C00AD8  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C00ADC  4B 76 16 FC */	b _savegpr_28
/* 80C00AE0  7C 7C 1B 78 */	mr r28, r3
/* 80C00AE4  7C BD 2B 78 */	mr r29, r5
/* 80C00AE8  A3 E4 00 14 */	lhz r31, 0x14(r4)
/* 80C00AEC  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80C00AF0  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80C00AF4  1F DF 00 30 */	mulli r30, r31, 0x30
/* 80C00AF8  7C 60 F2 14 */	add r3, r0, r30
/* 80C00AFC  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80C00B00  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80C00B04  4B 74 59 AC */	b PSMTXCopy
/* 80C00B08  2C 1F 00 02 */	cmpwi r31, 2
/* 80C00B0C  41 82 01 D0 */	beq lbl_80C00CDC
/* 80C00B10  40 80 00 10 */	bge lbl_80C00B20
/* 80C00B14  2C 1F 00 01 */	cmpwi r31, 1
/* 80C00B18  40 80 00 10 */	bge lbl_80C00B28
/* 80C00B1C  48 00 01 C0 */	b lbl_80C00CDC
lbl_80C00B20:
/* 80C00B20  2C 1F 00 05 */	cmpwi r31, 5
/* 80C00B24  40 80 01 B8 */	bge lbl_80C00CDC
lbl_80C00B28:
/* 80C00B28  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00B2C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00B30  38 81 00 44 */	addi r4, r1, 0x44
/* 80C00B34  4B 74 59 7C */	b PSMTXCopy
/* 80C00B38  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80C00B3C  D0 01 00 08 */	stfs f0, 8(r1)
/* 80C00B40  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C00B44  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80C00B48  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 80C00B4C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80C00B50  3C 60 80 C1 */	lis r3, lit_4333@ha
/* 80C00B54  C0 03 FB 98 */	lfs f0, lit_4333@l(r3)
/* 80C00B58  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80C00B5C  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80C00B60  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C00B64  38 7C 04 E4 */	addi r3, r28, 0x4e4
/* 80C00B68  4B 40 C3 A4 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80C00B6C  A8 1C 09 C8 */	lha r0, 0x9c8(r28)
/* 80C00B70  3C 60 80 C1 */	lis r3, lit_4501@ha
/* 80C00B74  C8 43 FB AC */	lfd f2, lit_4501@l(r3)
/* 80C00B78  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C00B7C  90 01 00 7C */	stw r0, 0x7c(r1)
/* 80C00B80  3C 80 43 30 */	lis r4, 0x4330
/* 80C00B84  90 81 00 78 */	stw r4, 0x78(r1)
/* 80C00B88  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80C00B8C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C00B90  3C 60 80 C1 */	lis r3, m__17daObj_GrA_Param_c@ha
/* 80C00B94  38 63 FA 7C */	addi r3, r3, m__17daObj_GrA_Param_c@l
/* 80C00B98  C0 23 00 44 */	lfs f1, 0x44(r3)
/* 80C00B9C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C00BA0  FC 00 00 1E */	fctiwz f0, f0
/* 80C00BA4  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 80C00BA8  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C00BAC  B0 1C 09 C2 */	sth r0, 0x9c2(r28)
/* 80C00BB0  A8 1C 09 CA */	lha r0, 0x9ca(r28)
/* 80C00BB4  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C00BB8  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80C00BBC  90 81 00 88 */	stw r4, 0x88(r1)
/* 80C00BC0  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80C00BC4  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C00BC8  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C00BCC  FC 00 00 1E */	fctiwz f0, f0
/* 80C00BD0  D8 01 00 90 */	stfd f0, 0x90(r1)
/* 80C00BD4  80 01 00 94 */	lwz r0, 0x94(r1)
/* 80C00BD8  B0 1C 09 C4 */	sth r0, 0x9c4(r28)
/* 80C00BDC  A8 1C 09 CC */	lha r0, 0x9cc(r28)
/* 80C00BE0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C00BE4  90 01 00 9C */	stw r0, 0x9c(r1)
/* 80C00BE8  90 81 00 98 */	stw r4, 0x98(r1)
/* 80C00BEC  C8 01 00 98 */	lfd f0, 0x98(r1)
/* 80C00BF0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80C00BF4  EC 00 00 72 */	fmuls f0, f0, f1
/* 80C00BF8  FC 00 00 1E */	fctiwz f0, f0
/* 80C00BFC  D8 01 00 A0 */	stfd f0, 0xa0(r1)
/* 80C00C00  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80C00C04  B0 1C 09 C6 */	sth r0, 0x9c6(r28)
/* 80C00C08  2C 1F 00 03 */	cmpwi r31, 3
/* 80C00C0C  41 82 00 20 */	beq lbl_80C00C2C
/* 80C00C10  40 80 00 10 */	bge lbl_80C00C20
/* 80C00C14  2C 1F 00 01 */	cmpwi r31, 1
/* 80C00C18  41 82 00 28 */	beq lbl_80C00C40
/* 80C00C1C  48 00 00 24 */	b lbl_80C00C40
lbl_80C00C20:
/* 80C00C20  2C 1F 00 05 */	cmpwi r31, 5
/* 80C00C24  40 80 00 1C */	bge lbl_80C00C40
/* 80C00C28  48 00 00 10 */	b lbl_80C00C38
lbl_80C00C2C:
/* 80C00C2C  38 7C 09 BC */	addi r3, r28, 0x9bc
/* 80C00C30  4B 40 C3 14 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C00C34  48 00 00 0C */	b lbl_80C00C40
lbl_80C00C38:
/* 80C00C38  38 7C 09 C2 */	addi r3, r28, 0x9c2
/* 80C00C3C  4B 40 C3 08 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80C00C40:
/* 80C00C40  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00C44  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00C48  7C 64 1B 78 */	mr r4, r3
/* 80C00C4C  4B 74 59 64 */	b PSMTXInverse
/* 80C00C50  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00C54  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00C58  38 81 00 14 */	addi r4, r1, 0x14
/* 80C00C5C  4B 74 58 54 */	b PSMTXCopy
/* 80C00C60  38 61 00 08 */	addi r3, r1, 8
/* 80C00C64  4B 40 C1 00 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80C00C68  38 7C 09 1A */	addi r3, r28, 0x91a
/* 80C00C6C  4B 40 C2 D8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C00C70  2C 1F 00 03 */	cmpwi r31, 3
/* 80C00C74  41 82 00 2C */	beq lbl_80C00CA0
/* 80C00C78  40 80 00 10 */	bge lbl_80C00C88
/* 80C00C7C  2C 1F 00 01 */	cmpwi r31, 1
/* 80C00C80  41 82 00 14 */	beq lbl_80C00C94
/* 80C00C84  48 00 00 30 */	b lbl_80C00CB4
lbl_80C00C88:
/* 80C00C88  2C 1F 00 05 */	cmpwi r31, 5
/* 80C00C8C  40 80 00 28 */	bge lbl_80C00CB4
/* 80C00C90  48 00 00 1C */	b lbl_80C00CAC
lbl_80C00C94:
/* 80C00C94  38 7C 09 BC */	addi r3, r28, 0x9bc
/* 80C00C98  4B 40 C2 AC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C00C9C  48 00 00 18 */	b lbl_80C00CB4
lbl_80C00CA0:
/* 80C00CA0  38 7C 09 C2 */	addi r3, r28, 0x9c2
/* 80C00CA4  4B 40 C2 A0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C00CA8  48 00 00 0C */	b lbl_80C00CB4
lbl_80C00CAC:
/* 80C00CAC  38 7C 09 C8 */	addi r3, r28, 0x9c8
/* 80C00CB0  4B 40 C2 94 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80C00CB4:
/* 80C00CB4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00CB8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00CBC  38 81 00 14 */	addi r4, r1, 0x14
/* 80C00CC0  7C 65 1B 78 */	mr r5, r3
/* 80C00CC4  4B 74 58 20 */	b PSMTXConcat
/* 80C00CC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00CCC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00CD0  38 81 00 44 */	addi r4, r1, 0x44
/* 80C00CD4  7C 65 1B 78 */	mr r5, r3
/* 80C00CD8  4B 74 58 0C */	b PSMTXConcat
lbl_80C00CDC:
/* 80C00CDC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00CE0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00CE4  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80C00CE8  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80C00CEC  7C 80 F2 14 */	add r4, r0, r30
/* 80C00CF0  4B 74 57 C0 */	b PSMTXCopy
/* 80C00CF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80C00CF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80C00CFC  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80C00D00  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80C00D04  4B 74 57 AC */	b PSMTXCopy
/* 80C00D08  2C 1F 00 04 */	cmpwi r31, 4
/* 80C00D0C  41 82 00 0C */	beq lbl_80C00D18
/* 80C00D10  2C 1F 00 07 */	cmpwi r31, 7
/* 80C00D14  40 82 00 2C */	bne lbl_80C00D40
lbl_80C00D18:
/* 80C00D18  A0 1C 08 40 */	lhz r0, 0x840(r28)
/* 80C00D1C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80C00D20  41 82 00 20 */	beq lbl_80C00D40
/* 80C00D24  83 BC 08 00 */	lwz r29, 0x800(r28)
/* 80C00D28  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C00D2C  80 83 00 08 */	lwz r4, 8(r3)
/* 80C00D30  38 7C 07 EC */	addi r3, r28, 0x7ec
/* 80C00D34  4B 40 CC 5C */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80C00D38  80 7C 07 54 */	lwz r3, 0x754(r28)
/* 80C00D3C  93 A3 00 08 */	stw r29, 8(r3)
lbl_80C00D40:
/* 80C00D40  38 60 00 01 */	li r3, 1
/* 80C00D44  39 61 00 C0 */	addi r11, r1, 0xc0
/* 80C00D48  4B 76 14 DC */	b _restgpr_28
/* 80C00D4C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80C00D50  7C 08 03 A6 */	mtlr r0
/* 80C00D54  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80C00D58  4E 80 00 20 */	blr 
