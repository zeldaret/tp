lbl_80584AD8:
/* 80584AD8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80584ADC  7C 08 02 A6 */	mflr r0
/* 80584AE0  90 01 00 44 */	stw r0, 0x44(r1)
/* 80584AE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80584AE8  4B DD D6 EC */	b _savegpr_27
/* 80584AEC  7C 7F 1B 78 */	mr r31, r3
/* 80584AF0  3C 60 80 58 */	lis r3, lit_3970@ha
/* 80584AF4  3B 83 56 20 */	addi r28, r3, lit_3970@l
/* 80584AF8  88 1F 06 2E */	lbz r0, 0x62e(r31)
/* 80584AFC  28 00 00 00 */	cmplwi r0, 0
/* 80584B00  41 82 01 34 */	beq lbl_80584C34
/* 80584B04  38 61 00 08 */	addi r3, r1, 8
/* 80584B08  38 80 00 00 */	li r4, 0
/* 80584B0C  38 A0 00 00 */	li r5, 0
/* 80584B10  38 C0 00 00 */	li r6, 0
/* 80584B14  4B CE 28 E0 */	b __ct__5csXyzFsss
/* 80584B18  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80584B1C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584B20  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584B24  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80584B28  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 80584B2C  28 00 00 01 */	cmplwi r0, 1
/* 80584B30  40 82 00 B0 */	bne lbl_80584BE0
/* 80584B34  38 A0 00 00 */	li r5, 0
/* 80584B38  38 60 00 01 */	li r3, 1
/* 80584B3C  38 00 00 12 */	li r0, 0x12
/* 80584B40  7C 09 03 A6 */	mtctr r0
lbl_80584B44:
/* 80584B44  80 9F 06 1C */	lwz r4, 0x61c(r31)
/* 80584B48  7C 60 28 30 */	slw r0, r3, r5
/* 80584B4C  7C 80 00 39 */	and. r0, r4, r0
/* 80584B50  41 82 00 5C */	beq lbl_80584BAC
/* 80584B54  2C 05 00 08 */	cmpwi r5, 8
/* 80584B58  40 80 00 34 */	bge lbl_80584B8C
/* 80584B5C  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80584B60  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584B64  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80584B68  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584B6C  C0 1C 00 C8 */	lfs f0, 0xc8(r28)
/* 80584B70  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80584B74  54 A0 08 3C */	slwi r0, r5, 1
/* 80584B78  3C 60 80 58 */	lis r3, data_805858B8@ha
/* 80584B7C  38 63 58 B8 */	addi r3, r3, data_805858B8@l
/* 80584B80  7C 03 02 AE */	lhax r0, r3, r0
/* 80584B84  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80584B88  48 00 00 2C */	b lbl_80584BB4
lbl_80584B8C:
/* 80584B8C  C0 1C 00 0C */	lfs f0, 0xc(r28)
/* 80584B90  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584B94  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584B98  C0 1C 00 C8 */	lfs f0, 0xc8(r28)
/* 80584B9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80584BA0  38 00 C5 68 */	li r0, -15000
/* 80584BA4  B0 01 00 0C */	sth r0, 0xc(r1)
/* 80584BA8  48 00 00 0C */	b lbl_80584BB4
lbl_80584BAC:
/* 80584BAC  38 A5 00 01 */	addi r5, r5, 1
/* 80584BB0  42 00 FF 94 */	bdnz lbl_80584B44
lbl_80584BB4:
/* 80584BB4  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80584BB8  4B A8 81 AC */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80584BBC  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80584BC0  4B A8 83 84 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80584BC4  38 61 00 08 */	addi r3, r1, 8
/* 80584BC8  4B A8 83 7C */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80584BCC  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80584BD0  4B A8 82 04 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80584BD4  38 61 00 10 */	addi r3, r1, 0x10
/* 80584BD8  4B A8 81 FC */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80584BDC  48 00 00 80 */	b lbl_80584C5C
lbl_80584BE0:
/* 80584BE0  A8 1F 04 E4 */	lha r0, 0x4e4(r31)
/* 80584BE4  2C 00 00 00 */	cmpwi r0, 0
/* 80584BE8  40 80 00 18 */	bge lbl_80584C00
/* 80584BEC  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584BF0  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584BF4  C0 1C 00 30 */	lfs f0, 0x30(r28)
/* 80584BF8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80584BFC  48 00 00 14 */	b lbl_80584C10
lbl_80584C00:
/* 80584C00  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80584C04  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80584C08  C0 1C 00 E8 */	lfs f0, 0xe8(r28)
/* 80584C0C  D0 01 00 18 */	stfs f0, 0x18(r1)
lbl_80584C10:
/* 80584C10  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80584C14  4B A8 81 50 */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80584C18  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80584C1C  4B A8 83 28 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80584C20  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80584C24  4B A8 81 B0 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80584C28  38 61 00 10 */	addi r3, r1, 0x10
/* 80584C2C  4B A8 81 A8 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80584C30  48 00 00 2C */	b lbl_80584C5C
lbl_80584C34:
/* 80584C34  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 80584C38  4B A8 81 2C */	b transS__14mDoMtx_stack_cFRC4cXyz
/* 80584C3C  38 7F 05 EE */	addi r3, r31, 0x5ee
/* 80584C40  4B A8 83 04 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80584C44  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80584C48  4B A8 82 FC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80584C4C  38 7F 05 DC */	addi r3, r31, 0x5dc
/* 80584C50  4B A8 81 84 */	b transM__14mDoMtx_stack_cFRC4cXyz
/* 80584C54  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 80584C58  4B A8 82 EC */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
lbl_80584C5C:
/* 80584C5C  3C 60 80 58 */	lis r3, l_HIO@ha
/* 80584C60  38 63 5C C4 */	addi r3, r3, l_HIO@l
/* 80584C64  C0 23 00 08 */	lfs f1, 8(r3)
/* 80584C68  FC 40 08 90 */	fmr f2, f1
/* 80584C6C  FC 60 08 90 */	fmr f3, f1
/* 80584C70  4B A8 81 C8 */	b scaleM__14mDoMtx_stack_cFfff
/* 80584C74  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80584C78  3C 03 FF FD */	addis r0, r3, 0xfffd
/* 80584C7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80584C80  40 82 00 1C */	bne lbl_80584C9C
/* 80584C84  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80584C88  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80584C8C  80 9F 05 70 */	lwz r4, 0x570(r31)
/* 80584C90  38 84 00 24 */	addi r4, r4, 0x24
/* 80584C94  4B DC 18 1C */	b PSMTXCopy
/* 80584C98  48 00 00 4C */	b lbl_80584CE4
lbl_80584C9C:
/* 80584C9C  3B 60 00 00 */	li r27, 0
/* 80584CA0  3B C0 00 00 */	li r30, 0
/* 80584CA4  3B 80 00 01 */	li r28, 1
/* 80584CA8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80584CAC  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l
lbl_80584CB0:
/* 80584CB0  80 7F 06 1C */	lwz r3, 0x61c(r31)
/* 80584CB4  7F 80 D8 30 */	slw r0, r28, r27
/* 80584CB8  7C 60 00 39 */	and. r0, r3, r0
/* 80584CBC  41 82 00 18 */	beq lbl_80584CD4
/* 80584CC0  7F A3 EB 78 */	mr r3, r29
/* 80584CC4  38 1E 05 74 */	addi r0, r30, 0x574
/* 80584CC8  7C 9F 00 2E */	lwzx r4, r31, r0
/* 80584CCC  38 84 00 24 */	addi r4, r4, 0x24
/* 80584CD0  4B DC 17 E0 */	b PSMTXCopy
lbl_80584CD4:
/* 80584CD4  3B 7B 00 01 */	addi r27, r27, 1
/* 80584CD8  2C 1B 00 12 */	cmpwi r27, 0x12
/* 80584CDC  3B DE 00 04 */	addi r30, r30, 4
/* 80584CE0  41 80 FF D0 */	blt lbl_80584CB0
lbl_80584CE4:
/* 80584CE4  39 61 00 40 */	addi r11, r1, 0x40
/* 80584CE8  4B DD D5 38 */	b _restgpr_27
/* 80584CEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80584CF0  7C 08 03 A6 */	mtlr r0
/* 80584CF4  38 21 00 40 */	addi r1, r1, 0x40
/* 80584CF8  4E 80 00 20 */	blr 
