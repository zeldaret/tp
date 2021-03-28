lbl_804D8A34:
/* 804D8A34  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804D8A38  7C 08 02 A6 */	mflr r0
/* 804D8A3C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804D8A40  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804D8A44  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804D8A48  7C 7F 1B 78 */	mr r31, r3
/* 804D8A4C  3C 60 80 4E */	lis r3, lit_3942@ha
/* 804D8A50  3B C3 9E 64 */	addi r30, r3, lit_3942@l
/* 804D8A54  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804D8A58  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804D8A5C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 804D8A60  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804D8A64  A8 1F 06 4E */	lha r0, 0x64e(r31)
/* 804D8A68  2C 00 00 00 */	cmpwi r0, 0
/* 804D8A6C  40 82 00 94 */	bne lbl_804D8B00
/* 804D8A70  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804D8A74  4B D8 EE E0 */	b cM_rndF__Ff
/* 804D8A78  C0 1E 00 84 */	lfs f0, 0x84(r30)
/* 804D8A7C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804D8A80  40 80 00 28 */	bge lbl_804D8AA8
/* 804D8A84  C0 3E 00 38 */	lfs f1, 0x38(r30)
/* 804D8A88  4B D8 EE CC */	b cM_rndF__Ff
/* 804D8A8C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804D8A90  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8A94  FC 00 00 1E */	fctiwz f0, f0
/* 804D8A98  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8A9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8AA0  B0 1F 06 4E */	sth r0, 0x64e(r31)
/* 804D8AA4  48 00 00 24 */	b lbl_804D8AC8
lbl_804D8AA8:
/* 804D8AA8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804D8AAC  4B D8 EE A8 */	b cM_rndF__Ff
/* 804D8AB0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804D8AB4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8AB8  FC 00 00 1E */	fctiwz f0, f0
/* 804D8ABC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8AC0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8AC4  B0 1F 06 4E */	sth r0, 0x64e(r31)
lbl_804D8AC8:
/* 804D8AC8  C0 3E 00 B8 */	lfs f1, 0xb8(r30)
/* 804D8ACC  4B D8 EE 88 */	b cM_rndF__Ff
/* 804D8AD0  FC 00 08 1E */	fctiwz f0, f1
/* 804D8AD4  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8AD8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8ADC  54 00 10 3A */	slwi r0, r0, 2
/* 804D8AE0  3C 60 80 4E */	lis r3, wait_bck@ha
/* 804D8AE4  38 83 A2 08 */	addi r4, r3, wait_bck@l
/* 804D8AE8  7F E3 FB 78 */	mr r3, r31
/* 804D8AEC  7C 84 00 2E */	lwzx r4, r4, r0
/* 804D8AF0  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804D8AF4  38 A0 00 00 */	li r5, 0
/* 804D8AF8  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 804D8AFC  4B FF E1 A9 */	bl anm_init__FP8bd_classifUcf
lbl_804D8B00:
/* 804D8B00  80 7F 06 2C */	lwz r3, 0x62c(r31)
/* 804D8B04  28 03 00 00 */	cmplwi r3, 0
/* 804D8B08  41 82 00 20 */	beq lbl_804D8B28
/* 804D8B0C  C0 03 00 00 */	lfs f0, 0(r3)
/* 804D8B10  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 804D8B14  C0 03 00 04 */	lfs f0, 4(r3)
/* 804D8B18  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 804D8B1C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804D8B20  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
/* 804D8B24  48 00 00 1C */	b lbl_804D8B40
lbl_804D8B28:
/* 804D8B28  C0 1F 04 A8 */	lfs f0, 0x4a8(r31)
/* 804D8B2C  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 804D8B30  C0 1F 04 AC */	lfs f0, 0x4ac(r31)
/* 804D8B34  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 804D8B38  C0 1F 04 B0 */	lfs f0, 0x4b0(r31)
/* 804D8B3C  D0 1F 05 CC */	stfs f0, 0x5cc(r31)
lbl_804D8B40:
/* 804D8B40  C0 1F 04 F8 */	lfs f0, 0x4f8(r31)
/* 804D8B44  FC 00 02 10 */	fabs f0, f0
/* 804D8B48  FC 60 00 18 */	frsp f3, f0
/* 804D8B4C  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804D8B50  C0 3F 05 C4 */	lfs f1, 0x5c4(r31)
/* 804D8B54  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 804D8B58  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804D8B5C  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8B60  4B D9 6E DC */	b cLib_addCalc2__FPffff
/* 804D8B64  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804D8B68  FC 00 02 10 */	fabs f0, f0
/* 804D8B6C  FC 60 00 18 */	frsp f3, f0
/* 804D8B70  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 804D8B74  C0 3F 05 C8 */	lfs f1, 0x5c8(r31)
/* 804D8B78  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 804D8B7C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804D8B80  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8B84  4B D9 6E B8 */	b cLib_addCalc2__FPffff
/* 804D8B88  C0 1F 05 00 */	lfs f0, 0x500(r31)
/* 804D8B8C  FC 00 02 10 */	fabs f0, f0
/* 804D8B90  FC 60 00 18 */	frsp f3, f0
/* 804D8B94  38 7F 04 D8 */	addi r3, r31, 0x4d8
/* 804D8B98  C0 3F 05 CC */	lfs f1, 0x5cc(r31)
/* 804D8B9C  C0 5E 00 44 */	lfs f2, 0x44(r30)
/* 804D8BA0  C0 1E 00 08 */	lfs f0, 8(r30)
/* 804D8BA4  EC 60 18 2A */	fadds f3, f0, f3
/* 804D8BA8  4B D9 6E 94 */	b cLib_addCalc2__FPffff
/* 804D8BAC  38 7F 04 DE */	addi r3, r31, 0x4de
/* 804D8BB0  A8 9F 06 40 */	lha r4, 0x640(r31)
/* 804D8BB4  38 A0 00 01 */	li r5, 1
/* 804D8BB8  38 C0 08 00 */	li r6, 0x800
/* 804D8BBC  4B D9 7A 4C */	b cLib_addCalcAngleS2__FPssss
/* 804D8BC0  A8 1F 06 52 */	lha r0, 0x652(r31)
/* 804D8BC4  2C 00 00 00 */	cmpwi r0, 0
/* 804D8BC8  40 82 00 68 */	bne lbl_804D8C30
/* 804D8BCC  38 60 00 01 */	li r3, 1
/* 804D8BD0  B0 7F 06 1A */	sth r3, 0x61a(r31)
/* 804D8BD4  38 00 00 00 */	li r0, 0
/* 804D8BD8  B0 1F 06 1C */	sth r0, 0x61c(r31)
/* 804D8BDC  B0 7F 06 1E */	sth r3, 0x61e(r31)
/* 804D8BE0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 804D8BE4  D0 1F 06 24 */	stfs f0, 0x624(r31)
/* 804D8BE8  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804D8BEC  4B D8 ED 68 */	b cM_rndF__Ff
/* 804D8BF0  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804D8BF4  EC 00 08 2A */	fadds f0, f0, f1
/* 804D8BF8  FC 00 00 1E */	fctiwz f0, f0
/* 804D8BFC  D8 01 00 08 */	stfd f0, 8(r1)
/* 804D8C00  80 01 00 0C */	lwz r0, 0xc(r1)
/* 804D8C04  B0 1F 06 28 */	sth r0, 0x628(r31)
/* 804D8C08  7F E3 FB 78 */	mr r3, r31
/* 804D8C0C  38 80 00 05 */	li r4, 5
/* 804D8C10  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 804D8C14  38 A0 00 02 */	li r5, 2
/* 804D8C18  FC 40 08 90 */	fmr f2, f1
/* 804D8C1C  4B FF E0 89 */	bl anm_init__FP8bd_classifUcf
/* 804D8C20  3C 60 80 4E */	lis r3, l_HIO@ha
/* 804D8C24  38 63 A3 6C */	addi r3, r3, l_HIO@l
/* 804D8C28  A8 03 00 1C */	lha r0, 0x1c(r3)
/* 804D8C2C  B0 1F 05 F4 */	sth r0, 0x5f4(r31)
lbl_804D8C30:
/* 804D8C30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804D8C34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804D8C38  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804D8C3C  7C 08 03 A6 */	mtlr r0
/* 804D8C40  38 21 00 20 */	addi r1, r1, 0x20
/* 804D8C44  4E 80 00 20 */	blr 
