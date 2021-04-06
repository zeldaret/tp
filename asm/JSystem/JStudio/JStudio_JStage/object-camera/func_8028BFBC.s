lbl_8028BFBC:
/* 8028BFBC  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028BFC0  7C 08 02 A6 */	mflr r0
/* 8028BFC4  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028BFC8  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028BFCC  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8028BFD0  7C 7E 1B 78 */	mr r30, r3
/* 8028BFD4  7C 9F 23 78 */	mr r31, r4
/* 8028BFD8  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BFDC  3C A0 80 3A */	lis r5, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio15TAdaptor_camera@ha /* 0x8039AAB4@ha */
/* 8028BFE0  38 A5 AA B4 */	addi r5, r5, sauVariableValue_3_TARGET_POSITION_XYZ__Q27JStudio15TAdaptor_camera@l /* 0x8039AAB4@l */
/* 8028BFE4  4B FF A2 91 */	bl adaptor_getVariableValue_Vec__Q27JStudio8TAdaptorCFP3VecPCUl
/* 8028BFE8  88 1E 01 20 */	lbz r0, 0x120(r30)
/* 8028BFEC  28 00 00 00 */	cmplwi r0, 0
/* 8028BFF0  40 82 00 34 */	bne lbl_8028C024
/* 8028BFF4  88 1F 00 88 */	lbz r0, 0x88(r31)
/* 8028BFF8  28 00 00 00 */	cmplwi r0, 0
/* 8028BFFC  40 82 00 0C */	bne lbl_8028C008
/* 8028C000  38 01 00 14 */	addi r0, r1, 0x14
/* 8028C004  48 00 00 18 */	b lbl_8028C01C
lbl_8028C008:
/* 8028C008  38 7F 00 AC */	addi r3, r31, 0xac
/* 8028C00C  38 81 00 14 */	addi r4, r1, 0x14
/* 8028C010  38 A1 00 08 */	addi r5, r1, 8
/* 8028C014  48 0B AD 59 */	bl PSMTXMultVec
/* 8028C018  38 01 00 08 */	addi r0, r1, 8
lbl_8028C01C:
/* 8028C01C  7C 04 03 78 */	mr r4, r0
/* 8028C020  48 00 00 50 */	b lbl_8028C070
lbl_8028C024:
/* 8028C024  38 61 00 20 */	addi r3, r1, 0x20
/* 8028C028  38 81 00 14 */	addi r4, r1, 0x14
/* 8028C02C  80 BE 01 18 */	lwz r5, 0x118(r30)
/* 8028C030  80 DE 01 1C */	lwz r6, 0x11c(r30)
/* 8028C034  4B FF E2 5D */	bl transform_toGlobalFromLocal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 8028C038  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028C03C  40 82 00 0C */	bne lbl_8028C048
/* 8028C040  38 00 00 00 */	li r0, 0
/* 8028C044  48 00 00 20 */	b lbl_8028C064
lbl_8028C048:
/* 8028C048  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8028C04C  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028C050  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8028C054  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028C058  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8028C05C  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028C060  38 00 00 01 */	li r0, 1
lbl_8028C064:
/* 8028C064  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028C068  41 82 00 1C */	beq lbl_8028C084
/* 8028C06C  38 81 00 08 */	addi r4, r1, 8
lbl_8028C070:
/* 8028C070  80 7E 01 04 */	lwz r3, 0x104(r30)
/* 8028C074  81 83 00 00 */	lwz r12, 0(r3)
/* 8028C078  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 8028C07C  7D 89 03 A6 */	mtctr r12
/* 8028C080  4E 80 04 21 */	bctrl 
lbl_8028C084:
/* 8028C084  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028C088  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8028C08C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028C090  7C 08 03 A6 */	mtlr r0
/* 8028C094  38 21 00 60 */	addi r1, r1, 0x60
/* 8028C098  4E 80 00 20 */	blr 
