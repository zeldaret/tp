lbl_80D4C9FC:
/* 80D4C9FC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D4CA00  7C 08 02 A6 */	mflr r0
/* 80D4CA04  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D4CA08  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D4CA0C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80D4CA10  7C 7E 1B 79 */	or. r30, r3, r3
/* 80D4CA14  41 82 00 08 */	beq lbl_80D4CA1C
/* 80D4CA18  38 63 05 68 */	addi r3, r3, 0x568
lbl_80D4CA1C:
/* 80D4CA1C  3C 80 80 D5 */	lis r4, l_arcName@ha
/* 80D4CA20  38 84 D2 D0 */	addi r4, r4, l_arcName@l
/* 80D4CA24  80 84 00 00 */	lwz r4, 0(r4)
/* 80D4CA28  4B 2E 04 94 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80D4CA2C  7C 7F 1B 78 */	mr r31, r3
/* 80D4CA30  2C 1F 00 04 */	cmpwi r31, 4
/* 80D4CA34  40 82 00 D4 */	bne lbl_80D4CB08
/* 80D4CA38  7F C3 F3 78 */	mr r3, r30
/* 80D4CA3C  3C 80 80 D5 */	lis r4, daPPolamp_c_createHeap__FP10fopAc_ac_c@ha
/* 80D4CA40  38 84 C9 38 */	addi r4, r4, daPPolamp_c_createHeap__FP10fopAc_ac_c@l
/* 80D4CA44  38 A0 10 10 */	li r5, 0x1010
/* 80D4CA48  4B 2C DA 68 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80D4CA4C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80D4CA50  40 82 00 0C */	bne lbl_80D4CA5C
/* 80D4CA54  38 60 00 05 */	li r3, 5
/* 80D4CA58  48 00 00 B4 */	b lbl_80D4CB0C
lbl_80D4CA5C:
/* 80D4CA5C  7F C3 F3 78 */	mr r3, r30
/* 80D4CA60  48 00 06 AD */	bl initParam__11daPPolamp_cFv
/* 80D4CA64  7F C3 F3 78 */	mr r3, r30
/* 80D4CA68  48 00 02 BD */	bl setModelMtx__11daPPolamp_cFv
/* 80D4CA6C  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D4CA70  38 03 00 24 */	addi r0, r3, 0x24
/* 80D4CA74  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80D4CA78  3C 60 80 D5 */	lis r3, lit_3757@ha
/* 80D4CA7C  38 83 D2 7C */	addi r4, r3, lit_3757@l
/* 80D4CA80  80 64 00 00 */	lwz r3, 0(r4)
/* 80D4CA84  80 04 00 04 */	lwz r0, 4(r4)
/* 80D4CA88  90 61 00 08 */	stw r3, 8(r1)
/* 80D4CA8C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D4CA90  80 04 00 08 */	lwz r0, 8(r4)
/* 80D4CA94  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D4CA98  80 7E 05 74 */	lwz r3, 0x574(r30)
/* 80D4CA9C  38 63 00 24 */	addi r3, r3, 0x24
/* 80D4CAA0  38 81 00 08 */	addi r4, r1, 8
/* 80D4CAA4  38 A1 00 14 */	addi r5, r1, 0x14
/* 80D4CAA8  4B 5F A2 C4 */	b PSMTXMultVec
/* 80D4CAAC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CAB0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CAB4  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D4CAB8  C0 41 00 18 */	lfs f2, 0x18(r1)
/* 80D4CABC  C0 61 00 1C */	lfs f3, 0x1c(r1)
/* 80D4CAC0  4B 5F 9E 28 */	b PSMTXTrans
/* 80D4CAC4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CAC8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CACC  A8 9E 04 E6 */	lha r4, 0x4e6(r30)
/* 80D4CAD0  4B 2B F9 64 */	b mDoMtx_YrotM__FPA4_fs
/* 80D4CAD4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CAD8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CADC  A8 9E 04 E4 */	lha r4, 0x4e4(r30)
/* 80D4CAE0  4B 2B F8 BC */	b mDoMtx_XrotM__FPA4_fs
/* 80D4CAE4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CAE8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CAEC  A8 9E 04 E8 */	lha r4, 0x4e8(r30)
/* 80D4CAF0  4B 2B F9 DC */	b mDoMtx_ZrotM__FPA4_fs
/* 80D4CAF4  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D4CAF8  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D4CAFC  80 9E 05 78 */	lwz r4, 0x578(r30)
/* 80D4CB00  38 84 00 24 */	addi r4, r4, 0x24
/* 80D4CB04  4B 5F 99 AC */	b PSMTXCopy
lbl_80D4CB08:
/* 80D4CB08  7F E3 FB 78 */	mr r3, r31
lbl_80D4CB0C:
/* 80D4CB0C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D4CB10  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80D4CB14  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D4CB18  7C 08 03 A6 */	mtlr r0
/* 80D4CB1C  38 21 00 30 */	addi r1, r1, 0x30
/* 80D4CB20  4E 80 00 20 */	blr 
