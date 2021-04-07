lbl_8028AD38:
/* 8028AD38  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 8028AD3C  7C 08 02 A6 */	mflr r0
/* 8028AD40  90 01 00 94 */	stw r0, 0x94(r1)
/* 8028AD44  93 E1 00 8C */	stw r31, 0x8c(r1)
/* 8028AD48  93 C1 00 88 */	stw r30, 0x88(r1)
/* 8028AD4C  7C 7F 1B 78 */	mr r31, r3
/* 8028AD50  7C 9E 23 78 */	mr r30, r4
/* 8028AD54  38 81 00 5C */	addi r4, r1, 0x5c
/* 8028AD58  3C A0 80 3A */	lis r5, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA68@ha */
/* 8028AD5C  38 A5 AA 68 */	addi r5, r5, sauVariableValue_3_TRANSLATION_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA68@l */
/* 8028AD60  4B FF B5 15 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028AD64  7F E3 FB 78 */	mr r3, r31
/* 8028AD68  38 81 00 68 */	addi r4, r1, 0x68
/* 8028AD6C  3C A0 80 3A */	lis r5, sauVariableValue_3_ROTATION_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA74@ha */
/* 8028AD70  38 A5 AA 74 */	addi r5, r5, sauVariableValue_3_ROTATION_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA74@l */
/* 8028AD74  4B FF B5 01 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028AD78  7F E3 FB 78 */	mr r3, r31
/* 8028AD7C  38 81 00 74 */	addi r4, r1, 0x74
/* 8028AD80  3C A0 80 3A */	lis r5, sauVariableValue_3_SCALING_XYZ__Q27JStudio14TAdaptor_actor@ha /* 0x8039AA80@ha */
/* 8028AD84  38 A5 AA 80 */	addi r5, r5, sauVariableValue_3_SCALING_XYZ__Q27JStudio14TAdaptor_actor@l /* 0x8039AA80@l */
/* 8028AD88  4B FF B4 ED */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028AD8C  88 1F 01 44 */	lbz r0, 0x144(r31)
/* 8028AD90  28 00 00 00 */	cmplwi r0, 0
/* 8028AD94  40 82 00 6C */	bne lbl_8028AE00
/* 8028AD98  88 1E 00 88 */	lbz r0, 0x88(r30)
/* 8028AD9C  28 00 00 00 */	cmplwi r0, 0
/* 8028ADA0  40 82 00 0C */	bne lbl_8028ADAC
/* 8028ADA4  38 01 00 5C */	addi r0, r1, 0x5c
/* 8028ADA8  48 00 00 50 */	b lbl_8028ADF8
lbl_8028ADAC:
/* 8028ADAC  38 7E 00 AC */	addi r3, r30, 0xac
/* 8028ADB0  38 81 00 5C */	addi r4, r1, 0x5c
/* 8028ADB4  38 A1 00 38 */	addi r5, r1, 0x38
/* 8028ADB8  48 0B BF B5 */	bl PSMTXMultVec
/* 8028ADBC  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 8028ADC0  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 8028ADC4  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 8028ADC8  C0 1E 00 A4 */	lfs f0, 0xa4(r30)
/* 8028ADCC  EC 01 00 2A */	fadds f0, f1, f0
/* 8028ADD0  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8028ADD4  C0 01 00 70 */	lfs f0, 0x70(r1)
/* 8028ADD8  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8028ADDC  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 8028ADE0  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 8028ADE4  C0 01 00 78 */	lfs f0, 0x78(r1)
/* 8028ADE8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8028ADEC  C0 01 00 7C */	lfs f0, 0x7c(r1)
/* 8028ADF0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8028ADF4  38 01 00 38 */	addi r0, r1, 0x38
lbl_8028ADF8:
/* 8028ADF8  7C 1E 03 78 */	mr r30, r0
/* 8028ADFC  48 00 00 6C */	b lbl_8028AE68
lbl_8028AE00:
/* 8028AE00  3B C1 00 5C */	addi r30, r1, 0x5c
/* 8028AE04  80 1F 01 38 */	lwz r0, 0x138(r31)
/* 8028AE08  2C 00 00 01 */	cmpwi r0, 1
/* 8028AE0C  41 82 00 5C */	beq lbl_8028AE68
/* 8028AE10  40 80 00 58 */	bge lbl_8028AE68
/* 8028AE14  2C 00 00 00 */	cmpwi r0, 0
/* 8028AE18  40 80 00 08 */	bge lbl_8028AE20
/* 8028AE1C  48 00 00 4C */	b lbl_8028AE68
lbl_8028AE20:
/* 8028AE20  38 61 00 08 */	addi r3, r1, 8
/* 8028AE24  7F C4 F3 78 */	mr r4, r30
/* 8028AE28  80 BF 01 3C */	lwz r5, 0x13c(r31)
/* 8028AE2C  80 DF 01 40 */	lwz r6, 0x140(r31)
/* 8028AE30  4B FF F3 C9 */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl39TTransform_translation_rotation_scalingPCQ26JStage7TObjectUl
/* 8028AE34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028AE38  40 82 00 0C */	bne lbl_8028AE44
/* 8028AE3C  38 00 00 00 */	li r0, 0
/* 8028AE40  48 00 00 1C */	b lbl_8028AE5C
lbl_8028AE44:
/* 8028AE44  38 61 00 50 */	addi r3, r1, 0x50
/* 8028AE48  38 81 00 44 */	addi r4, r1, 0x44
/* 8028AE4C  38 A1 00 38 */	addi r5, r1, 0x38
/* 8028AE50  38 C1 00 08 */	addi r6, r1, 8
/* 8028AE54  4B FF AD 79 */	bl getFromTransformation_SRxyzT__Q27JStudio4mathFP3VecP3VecP3VecPA4_Cf
/* 8028AE58  38 00 00 01 */	li r0, 1
lbl_8028AE5C:
/* 8028AE5C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028AE60  41 82 00 54 */	beq lbl_8028AEB4
/* 8028AE64  3B C1 00 38 */	addi r30, r1, 0x38
lbl_8028AE68:
/* 8028AE68  83 FF 01 2C */	lwz r31, 0x12c(r31)
/* 8028AE6C  7F E3 FB 78 */	mr r3, r31
/* 8028AE70  7F C4 F3 78 */	mr r4, r30
/* 8028AE74  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AE78  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8028AE7C  7D 89 03 A6 */	mtctr r12
/* 8028AE80  4E 80 04 21 */	bctrl 
/* 8028AE84  7F E3 FB 78 */	mr r3, r31
/* 8028AE88  38 9E 00 0C */	addi r4, r30, 0xc
/* 8028AE8C  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AE90  81 8C 00 50 */	lwz r12, 0x50(r12)
/* 8028AE94  7D 89 03 A6 */	mtctr r12
/* 8028AE98  4E 80 04 21 */	bctrl 
/* 8028AE9C  7F E3 FB 78 */	mr r3, r31
/* 8028AEA0  38 9E 00 18 */	addi r4, r30, 0x18
/* 8028AEA4  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028AEA8  81 8C 00 48 */	lwz r12, 0x48(r12)
/* 8028AEAC  7D 89 03 A6 */	mtctr r12
/* 8028AEB0  4E 80 04 21 */	bctrl 
lbl_8028AEB4:
/* 8028AEB4  83 E1 00 8C */	lwz r31, 0x8c(r1)
/* 8028AEB8  83 C1 00 88 */	lwz r30, 0x88(r1)
/* 8028AEBC  80 01 00 94 */	lwz r0, 0x94(r1)
/* 8028AEC0  7C 08 03 A6 */	mtlr r0
/* 8028AEC4  38 21 00 90 */	addi r1, r1, 0x90
/* 8028AEC8  4E 80 00 20 */	blr 
