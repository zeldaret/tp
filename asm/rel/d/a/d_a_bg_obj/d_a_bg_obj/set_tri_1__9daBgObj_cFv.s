lbl_8045ACC0:
/* 8045ACC0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8045ACC4  7C 08 02 A6 */	mflr r0
/* 8045ACC8  90 01 00 64 */	stw r0, 0x64(r1)
/* 8045ACCC  39 61 00 60 */	addi r11, r1, 0x60
/* 8045ACD0  4B F0 74 FD */	bl _savegpr_25
/* 8045ACD4  7C 7F 1B 78 */	mr r31, r3
/* 8045ACD8  38 00 00 02 */	li r0, 2
/* 8045ACDC  98 03 0C C4 */	stb r0, 0xcc4(r3)
/* 8045ACE0  3B 40 00 00 */	li r26, 0
/* 8045ACE4  3B C0 00 00 */	li r30, 0
/* 8045ACE8  3C 60 80 46 */	lis r3, l_tri_src@ha /* 0x8045CAE4@ha */
/* 8045ACEC  3B 83 CA E4 */	addi r28, r3, l_tri_src@l /* 0x8045CAE4@l */
/* 8045ACF0  3B BF 05 DC */	addi r29, r31, 0x5dc
/* 8045ACF4  48 00 00 20 */	b lbl_8045AD14
lbl_8045ACF8:
/* 8045ACF8  7F 7F F2 14 */	add r27, r31, r30
/* 8045ACFC  38 7B 06 18 */	addi r3, r27, 0x618
/* 8045AD00  7F 84 E3 78 */	mr r4, r28
/* 8045AD04  4B C2 9B 81 */	bl Set__8dCcD_TriFRC11dCcD_SrcTri
/* 8045AD08  93 BB 06 5C */	stw r29, 0x65c(r27)
/* 8045AD0C  3B 5A 00 01 */	addi r26, r26, 1
/* 8045AD10  3B DE 01 5C */	addi r30, r30, 0x15c
lbl_8045AD14:
/* 8045AD14  88 1F 0C C4 */	lbz r0, 0xcc4(r31)
/* 8045AD18  7C 1A 00 00 */	cmpw r26, r0
/* 8045AD1C  41 80 FF DC */	blt lbl_8045ACF8
/* 8045AD20  C0 7F 05 10 */	lfs f3, 0x510(r31)
/* 8045AD24  C0 5F 05 14 */	lfs f2, 0x514(r31)
/* 8045AD28  D0 41 00 08 */	stfs f2, 8(r1)
/* 8045AD2C  3C 60 80 46 */	lis r3, lit_3873@ha /* 0x8045CA00@ha */
/* 8045AD30  C0 23 CA 00 */	lfs f1, lit_3873@l(r3)  /* 0x8045CA00@l */
/* 8045AD34  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8045AD38  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8045AD3C  C0 1F 05 08 */	lfs f0, 0x508(r31)
/* 8045AD40  3B 81 00 14 */	addi r28, r1, 0x14
/* 8045AD44  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8045AD48  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8045AD4C  D0 61 00 1C */	stfs f3, 0x1c(r1)
/* 8045AD50  C0 7F 05 1C */	lfs f3, 0x51c(r31)
/* 8045AD54  3B 61 00 20 */	addi r27, r1, 0x20
/* 8045AD58  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8045AD5C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8045AD60  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8045AD64  3B 41 00 2C */	addi r26, r1, 0x2c
/* 8045AD68  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8045AD6C  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8045AD70  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8045AD74  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 8045AD78  4B BB 1F ED */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 8045AD7C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AD80  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8045AD84  A8 9F 04 DE */	lha r4, 0x4de(r31)
/* 8045AD88  4B BB 16 AD */	bl mDoMtx_YrotM__FPA4_fs
/* 8045AD8C  3B 20 00 00 */	li r25, 0
/* 8045AD90  3B C0 00 00 */	li r30, 0
/* 8045AD94  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8045AD98  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
lbl_8045AD9C:
/* 8045AD9C  38 81 00 08 */	addi r4, r1, 8
/* 8045ADA0  7C 84 F2 14 */	add r4, r4, r30
/* 8045ADA4  7F A3 EB 78 */	mr r3, r29
/* 8045ADA8  7C 85 23 78 */	mr r5, r4
/* 8045ADAC  4B EE BF C1 */	bl PSMTXMultVec
/* 8045ADB0  3B 39 00 01 */	addi r25, r25, 1
/* 8045ADB4  2C 19 00 04 */	cmpwi r25, 4
/* 8045ADB8  3B DE 00 0C */	addi r30, r30, 0xc
/* 8045ADBC  41 80 FF E0 */	blt lbl_8045AD9C
/* 8045ADC0  38 7F 07 3C */	addi r3, r31, 0x73c
/* 8045ADC4  38 81 00 08 */	addi r4, r1, 8
/* 8045ADC8  7F 85 E3 78 */	mr r5, r28
/* 8045ADCC  7F 66 DB 78 */	mr r6, r27
/* 8045ADD0  4B E1 4A 0D */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045ADD4  38 7F 08 98 */	addi r3, r31, 0x898
/* 8045ADD8  38 81 00 08 */	addi r4, r1, 8
/* 8045ADDC  7F 65 DB 78 */	mr r5, r27
/* 8045ADE0  7F 46 D3 78 */	mr r6, r26
/* 8045ADE4  4B E1 49 F9 */	bl setPos__8cM3dGTriFPC3VecPC3VecPC3Vec
/* 8045ADE8  39 61 00 60 */	addi r11, r1, 0x60
/* 8045ADEC  4B F0 74 2D */	bl _restgpr_25
/* 8045ADF0  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8045ADF4  7C 08 03 A6 */	mtlr r0
/* 8045ADF8  38 21 00 60 */	addi r1, r1, 0x60
/* 8045ADFC  4E 80 00 20 */	blr 
