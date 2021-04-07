lbl_80637990:
/* 80637990  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80637994  7C 08 02 A6 */	mflr r0
/* 80637998  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063799C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806379A0  93 C1 00 08 */	stw r30, 8(r1)
/* 806379A4  7C 7F 1B 78 */	mr r31, r3
/* 806379A8  3C 60 80 64 */	lis r3, lit_3788@ha /* 0x806397F4@ha */
/* 806379AC  3B C3 97 F4 */	addi r30, r3, lit_3788@l /* 0x806397F4@l */
/* 806379B0  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 806379B4  80 9F 05 FC */	lwz r4, 0x5fc(r31)
/* 806379B8  38 84 00 24 */	addi r4, r4, 0x24
/* 806379BC  4B D0 EA F5 */	bl PSMTXCopy
/* 806379C0  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 806379C4  80 9F 06 00 */	lwz r4, 0x600(r31)
/* 806379C8  38 84 00 24 */	addi r4, r4, 0x24
/* 806379CC  4B D0 EA E5 */	bl PSMTXCopy
/* 806379D0  80 9F 06 04 */	lwz r4, 0x604(r31)
/* 806379D4  28 04 00 00 */	cmplwi r4, 0
/* 806379D8  41 82 00 10 */	beq lbl_806379E8
/* 806379DC  38 7F 0F E4 */	addi r3, r31, 0xfe4
/* 806379E0  38 84 00 24 */	addi r4, r4, 0x24
/* 806379E4  4B D0 EA CD */	bl PSMTXCopy
lbl_806379E8:
/* 806379E8  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 806379EC  4B 9D 53 79 */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 806379F0  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 806379F4  4B 9D 55 51 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 806379F8  88 1F 0F B5 */	lbz r0, 0xfb5(r31)
/* 806379FC  28 00 00 03 */	cmplwi r0, 3
/* 80637A00  40 82 00 54 */	bne lbl_80637A54
/* 80637A04  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80637A08  80 83 00 04 */	lwz r4, 4(r3)
/* 80637A0C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637A10  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637A14  38 84 00 24 */	addi r4, r4, 0x24
/* 80637A18  4B D0 EA 99 */	bl PSMTXCopy
/* 80637A1C  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80637A20  4B 9D 97 CD */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80637A24  88 1F 0F D0 */	lbz r0, 0xfd0(r31)
/* 80637A28  28 00 00 00 */	cmplwi r0, 0
/* 80637A2C  41 82 00 EC */	beq lbl_80637B18
/* 80637A30  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 80637A34  80 83 00 04 */	lwz r4, 4(r3)
/* 80637A38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637A3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637A40  38 84 00 24 */	addi r4, r4, 0x24
/* 80637A44  4B D0 EA 6D */	bl PSMTXCopy
/* 80637A48  80 7F 05 F8 */	lwz r3, 0x5f8(r31)
/* 80637A4C  4B 9D 97 A1 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80637A50  48 00 00 C8 */	b lbl_80637B18
lbl_80637A54:
/* 80637A54  3C 60 80 64 */	lis r3, l_HIO@ha /* 0x80639F84@ha */
/* 80637A58  38 63 9F 84 */	addi r3, r3, l_HIO@l /* 0x80639F84@l */
/* 80637A5C  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 80637A60  54 00 10 3A */	slwi r0, r0, 2
/* 80637A64  7C 63 02 14 */	add r3, r3, r0
/* 80637A68  C0 23 00 08 */	lfs f1, 8(r3)
/* 80637A6C  C0 1F 07 44 */	lfs f0, 0x744(r31)
/* 80637A70  EC 21 00 32 */	fmuls f1, f1, f0
/* 80637A74  FC 40 08 90 */	fmr f2, f1
/* 80637A78  FC 60 08 90 */	fmr f3, f1
/* 80637A7C  4B 9D 53 BD */	bl scaleM__14mDoMtx_stack_cFfff
/* 80637A80  88 1F 0F A8 */	lbz r0, 0xfa8(r31)
/* 80637A84  28 00 00 07 */	cmplwi r0, 7
/* 80637A88  40 82 00 5C */	bne lbl_80637AE4
/* 80637A8C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80637A90  C0 5E 02 38 */	lfs f2, 0x238(r30)
/* 80637A94  FC 60 08 90 */	fmr f3, f1
/* 80637A98  4B 9D 53 05 */	bl transM__14mDoMtx_stack_cFfff
/* 80637A9C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637AA0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637AA4  80 9F 05 F0 */	lwz r4, 0x5f0(r31)
/* 80637AA8  38 84 00 24 */	addi r4, r4, 0x24
/* 80637AAC  4B D0 EA 05 */	bl PSMTXCopy
/* 80637AB0  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 80637AB4  C0 5E 01 24 */	lfs f2, 0x124(r30)
/* 80637AB8  FC 60 08 90 */	fmr f3, f1
/* 80637ABC  4B 9D 52 E1 */	bl transM__14mDoMtx_stack_cFfff
/* 80637AC0  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80637AC4  80 83 00 04 */	lwz r4, 4(r3)
/* 80637AC8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637ACC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637AD0  38 84 00 24 */	addi r4, r4, 0x24
/* 80637AD4  4B D0 E9 DD */	bl PSMTXCopy
/* 80637AD8  80 7F 05 F4 */	lwz r3, 0x5f4(r31)
/* 80637ADC  4B 9D 97 11 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80637AE0  48 00 00 38 */	b lbl_80637B18
lbl_80637AE4:
/* 80637AE4  28 00 00 04 */	cmplwi r0, 4
/* 80637AE8  40 80 00 1C */	bge lbl_80637B04
/* 80637AEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637AF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637AF4  80 9F 05 E8 */	lwz r4, 0x5e8(r31)
/* 80637AF8  38 84 00 24 */	addi r4, r4, 0x24
/* 80637AFC  4B D0 E9 B5 */	bl PSMTXCopy
/* 80637B00  48 00 00 18 */	b lbl_80637B18
lbl_80637B04:
/* 80637B04  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80637B08  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80637B0C  80 9F 05 EC */	lwz r4, 0x5ec(r31)
/* 80637B10  38 84 00 24 */	addi r4, r4, 0x24
/* 80637B14  4B D0 E9 9D */	bl PSMTXCopy
lbl_80637B18:
/* 80637B18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80637B1C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80637B20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80637B24  7C 08 03 A6 */	mtlr r0
/* 80637B28  38 21 00 10 */	addi r1, r1, 0x10
/* 80637B2C  4E 80 00 20 */	blr 
