lbl_80A3989C:
/* 80A3989C  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80A398A0  7C 08 02 A6 */	mflr r0
/* 80A398A4  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80A398A8  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A398AC  4B 92 89 28 */	b _savegpr_27
/* 80A398B0  7C 7C 1B 78 */	mr r28, r3
/* 80A398B4  7C BD 2B 78 */	mr r29, r5
/* 80A398B8  A0 84 00 14 */	lhz r4, 0x14(r4)
/* 80A398BC  7C 9E 23 78 */	mr r30, r4
/* 80A398C0  80 65 00 84 */	lwz r3, 0x84(r5)
/* 80A398C4  80 03 00 0C */	lwz r0, 0xc(r3)
/* 80A398C8  1F E4 00 30 */	mulli r31, r4, 0x30
/* 80A398CC  7C 60 FA 14 */	add r3, r0, r31
/* 80A398D0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80A398D4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80A398D8  4B 90 CB D8 */	b PSMTXCopy
/* 80A398DC  2C 1E 00 01 */	cmpwi r30, 1
/* 80A398E0  41 82 00 14 */	beq lbl_80A398F4
/* 80A398E4  2C 1E 00 03 */	cmpwi r30, 3
/* 80A398E8  41 82 00 0C */	beq lbl_80A398F4
/* 80A398EC  2C 1E 00 04 */	cmpwi r30, 4
/* 80A398F0  40 82 02 34 */	bne lbl_80A39B24
lbl_80A398F4:
/* 80A398F4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A398F8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A398FC  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A39900  4B 90 CB B0 */	b PSMTXCopy
/* 80A39904  C0 01 00 58 */	lfs f0, 0x58(r1)
/* 80A39908  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80A3990C  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80A39910  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80A39914  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 80A39918  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80A3991C  3C 60 80 A4 */	lis r3, lit_4204@ha
/* 80A39920  C0 03 09 00 */	lfs f0, lit_4204@l(r3)
/* 80A39924  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 80A39928  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80A3992C  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80A39930  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A39934  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A39938  A8 9C 0D AC */	lha r4, 0xdac(r28)
/* 80A3993C  A8 BC 0D AE */	lha r5, 0xdae(r28)
/* 80A39940  A8 1C 0D C0 */	lha r0, 0xdc0(r28)
/* 80A39944  7C 05 02 14 */	add r0, r5, r0
/* 80A39948  7C 05 07 34 */	extsh r5, r0
/* 80A3994C  A8 DC 0D B0 */	lha r6, 0xdb0(r28)
/* 80A39950  4B 5D 28 B8 */	b mDoMtx_ZXYrotS__FPA4_fsss
/* 80A39954  2C 1E 00 03 */	cmpwi r30, 3
/* 80A39958  40 82 00 30 */	bne lbl_80A39988
/* 80A3995C  C0 3C 0C DC */	lfs f1, 0xcdc(r28)
/* 80A39960  4B 82 DC 84 */	b cM_rad2s__Ff
/* 80A39964  7C 7B 1B 78 */	mr r27, r3
/* 80A39968  C0 3C 0C D8 */	lfs f1, 0xcd8(r28)
/* 80A3996C  4B 82 DC 78 */	b cM_rad2s__Ff
/* 80A39970  B0 61 00 08 */	sth r3, 8(r1)
/* 80A39974  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80A39978  38 00 00 00 */	li r0, 0
/* 80A3997C  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A39980  38 61 00 08 */	addi r3, r1, 8
/* 80A39984  4B 5D 35 C0 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80A39988:
/* 80A39988  2C 1E 00 04 */	cmpwi r30, 4
/* 80A3998C  40 82 00 30 */	bne lbl_80A399BC
/* 80A39990  C0 3C 0C DC */	lfs f1, 0xcdc(r28)
/* 80A39994  4B 82 DC 50 */	b cM_rad2s__Ff
/* 80A39998  7C 7B 1B 78 */	mr r27, r3
/* 80A3999C  C0 3C 0C D8 */	lfs f1, 0xcd8(r28)
/* 80A399A0  4B 82 DC 44 */	b cM_rad2s__Ff
/* 80A399A4  B0 61 00 08 */	sth r3, 8(r1)
/* 80A399A8  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80A399AC  38 00 00 00 */	li r0, 0
/* 80A399B0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A399B4  38 61 00 08 */	addi r3, r1, 8
/* 80A399B8  4B 5D 35 8C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80A399BC:
/* 80A399BC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A399C0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A399C4  7C 64 1B 78 */	mr r4, r3
/* 80A399C8  4B 90 CB E8 */	b PSMTXInverse
/* 80A399CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A399D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A399D4  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A399D8  4B 90 CA D8 */	b PSMTXCopy
/* 80A399DC  38 61 00 10 */	addi r3, r1, 0x10
/* 80A399E0  4B 5D 33 84 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80A399E4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A399E8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A399EC  A8 9C 0D AC */	lha r4, 0xdac(r28)
/* 80A399F0  A8 BC 0D AE */	lha r5, 0xdae(r28)
/* 80A399F4  A8 1C 0D C0 */	lha r0, 0xdc0(r28)
/* 80A399F8  7C 05 02 14 */	add r0, r5, r0
/* 80A399FC  7C 05 07 34 */	extsh r5, r0
/* 80A39A00  A8 DC 0D B0 */	lha r6, 0xdb0(r28)
/* 80A39A04  4B 5D 28 9C */	b mDoMtx_ZXYrotM__FPA4_fsss
/* 80A39A08  2C 1E 00 01 */	cmpwi r30, 1
/* 80A39A0C  40 82 00 30 */	bne lbl_80A39A3C
/* 80A39A10  C0 3C 0C DC */	lfs f1, 0xcdc(r28)
/* 80A39A14  4B 82 DB D0 */	b cM_rad2s__Ff
/* 80A39A18  7C 7B 1B 78 */	mr r27, r3
/* 80A39A1C  C0 3C 0C D8 */	lfs f1, 0xcd8(r28)
/* 80A39A20  4B 82 DB C4 */	b cM_rad2s__Ff
/* 80A39A24  B0 61 00 08 */	sth r3, 8(r1)
/* 80A39A28  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80A39A2C  38 00 00 00 */	li r0, 0
/* 80A39A30  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A39A34  38 61 00 08 */	addi r3, r1, 8
/* 80A39A38  4B 5D 35 0C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80A39A3C:
/* 80A39A3C  2C 1E 00 03 */	cmpwi r30, 3
/* 80A39A40  40 82 00 50 */	bne lbl_80A39A90
/* 80A39A44  C0 3C 0C DC */	lfs f1, 0xcdc(r28)
/* 80A39A48  C0 5C 0C C4 */	lfs f2, 0xcc4(r28)
/* 80A39A4C  C0 1C 0D 24 */	lfs f0, 0xd24(r28)
/* 80A39A50  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A39A54  EC 21 00 2A */	fadds f1, f1, f0
/* 80A39A58  4B 82 DB 8C */	b cM_rad2s__Ff
/* 80A39A5C  7C 7B 1B 78 */	mr r27, r3
/* 80A39A60  C0 3C 0C D8 */	lfs f1, 0xcd8(r28)
/* 80A39A64  C0 5C 0C C0 */	lfs f2, 0xcc0(r28)
/* 80A39A68  C0 1C 0D 24 */	lfs f0, 0xd24(r28)
/* 80A39A6C  EC 02 00 32 */	fmuls f0, f2, f0
/* 80A39A70  EC 21 00 2A */	fadds f1, f1, f0
/* 80A39A74  4B 82 DB 70 */	b cM_rad2s__Ff
/* 80A39A78  B0 61 00 08 */	sth r3, 8(r1)
/* 80A39A7C  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80A39A80  38 00 00 00 */	li r0, 0
/* 80A39A84  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A39A88  38 61 00 08 */	addi r3, r1, 8
/* 80A39A8C  4B 5D 34 B8 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80A39A90:
/* 80A39A90  2C 1E 00 04 */	cmpwi r30, 4
/* 80A39A94  40 82 00 68 */	bne lbl_80A39AFC
/* 80A39A98  C0 3C 0C DC */	lfs f1, 0xcdc(r28)
/* 80A39A9C  C0 7C 0C C4 */	lfs f3, 0xcc4(r28)
/* 80A39AA0  3C 60 80 A4 */	lis r3, lit_4327@ha
/* 80A39AA4  C0 43 09 0C */	lfs f2, lit_4327@l(r3)
/* 80A39AA8  C0 1C 0D 24 */	lfs f0, 0xd24(r28)
/* 80A39AAC  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A39AB0  EC 03 00 32 */	fmuls f0, f3, f0
/* 80A39AB4  EC 21 00 2A */	fadds f1, f1, f0
/* 80A39AB8  4B 82 DB 2C */	b cM_rad2s__Ff
/* 80A39ABC  7C 7B 1B 78 */	mr r27, r3
/* 80A39AC0  C0 3C 0C D8 */	lfs f1, 0xcd8(r28)
/* 80A39AC4  C0 7C 0C C0 */	lfs f3, 0xcc0(r28)
/* 80A39AC8  3C 60 80 A4 */	lis r3, lit_4327@ha
/* 80A39ACC  C0 43 09 0C */	lfs f2, lit_4327@l(r3)
/* 80A39AD0  C0 1C 0D 24 */	lfs f0, 0xd24(r28)
/* 80A39AD4  EC 02 00 28 */	fsubs f0, f2, f0
/* 80A39AD8  EC 03 00 32 */	fmuls f0, f3, f0
/* 80A39ADC  EC 21 00 2A */	fadds f1, f1, f0
/* 80A39AE0  4B 82 DB 04 */	b cM_rad2s__Ff
/* 80A39AE4  B0 61 00 08 */	sth r3, 8(r1)
/* 80A39AE8  B3 61 00 0A */	sth r27, 0xa(r1)
/* 80A39AEC  38 00 00 00 */	li r0, 0
/* 80A39AF0  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80A39AF4  38 61 00 08 */	addi r3, r1, 8
/* 80A39AF8  4B 5D 34 4C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80A39AFC:
/* 80A39AFC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A39B00  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A39B04  38 81 00 1C */	addi r4, r1, 0x1c
/* 80A39B08  7C 65 1B 78 */	mr r5, r3
/* 80A39B0C  4B 90 C9 D8 */	b PSMTXConcat
/* 80A39B10  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A39B14  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A39B18  38 81 00 4C */	addi r4, r1, 0x4c
/* 80A39B1C  7C 65 1B 78 */	mr r5, r3
/* 80A39B20  4B 90 C9 C4 */	b PSMTXConcat
lbl_80A39B24:
/* 80A39B24  7F 83 E3 78 */	mr r3, r28
/* 80A39B28  7F C4 F3 78 */	mr r4, r30
/* 80A39B2C  81 9C 0E 40 */	lwz r12, 0xe40(r28)
/* 80A39B30  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80A39B34  7D 89 03 A6 */	mtctr r12
/* 80A39B38  4E 80 04 21 */	bctrl 
/* 80A39B3C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A39B40  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A39B44  80 9D 00 84 */	lwz r4, 0x84(r29)
/* 80A39B48  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80A39B4C  7C 80 FA 14 */	add r4, r0, r31
/* 80A39B50  4B 90 C9 60 */	b PSMTXCopy
/* 80A39B54  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80A39B58  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80A39B5C  3C 80 80 43 */	lis r4, mCurrentMtx__6J3DSys@ha
/* 80A39B60  38 84 4B E4 */	addi r4, r4, mCurrentMtx__6J3DSys@l
/* 80A39B64  4B 90 C9 4C */	b PSMTXCopy
/* 80A39B68  80 1C 0D CC */	lwz r0, 0xdcc(r28)
/* 80A39B6C  54 00 05 6B */	rlwinm. r0, r0, 0, 0x15, 0x15
/* 80A39B70  41 82 00 30 */	beq lbl_80A39BA0
/* 80A39B74  2C 1E 00 04 */	cmpwi r30, 4
/* 80A39B78  41 82 00 0C */	beq lbl_80A39B84
/* 80A39B7C  2C 1E 00 05 */	cmpwi r30, 5
/* 80A39B80  40 82 00 20 */	bne lbl_80A39BA0
lbl_80A39B84:
/* 80A39B84  83 7C 06 68 */	lwz r27, 0x668(r28)
/* 80A39B88  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A39B8C  80 83 00 08 */	lwz r4, 8(r3)
/* 80A39B90  38 7C 06 54 */	addi r3, r28, 0x654
/* 80A39B94  4B 5D 3D FC */	b changeBckOnly__13mDoExt_bckAnmFP15J3DAnmTransform
/* 80A39B98  80 7C 05 BC */	lwz r3, 0x5bc(r28)
/* 80A39B9C  93 63 00 08 */	stw r27, 8(r3)
lbl_80A39BA0:
/* 80A39BA0  38 60 00 01 */	li r3, 1
/* 80A39BA4  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80A39BA8  4B 92 86 78 */	b _restgpr_27
/* 80A39BAC  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 80A39BB0  7C 08 03 A6 */	mtlr r0
/* 80A39BB4  38 21 00 A0 */	addi r1, r1, 0xa0
/* 80A39BB8  4E 80 00 20 */	blr 
