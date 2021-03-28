lbl_8028BEB8:
/* 8028BEB8  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 8028BEBC  7C 08 02 A6 */	mflr r0
/* 8028BEC0  90 01 00 64 */	stw r0, 0x64(r1)
/* 8028BEC4  93 E1 00 5C */	stw r31, 0x5c(r1)
/* 8028BEC8  93 C1 00 58 */	stw r30, 0x58(r1)
/* 8028BECC  7C 7E 1B 78 */	mr r30, r3
/* 8028BED0  7C 9F 23 78 */	mr r31, r4
/* 8028BED4  80 63 01 04 */	lwz r3, 0x104(r3)
/* 8028BED8  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BEDC  81 83 00 00 */	lwz r12, 0(r3)
/* 8028BEE0  81 8C 00 74 */	lwz r12, 0x74(r12)
/* 8028BEE4  7D 89 03 A6 */	mtctr r12
/* 8028BEE8  4E 80 04 21 */	bctrl 
/* 8028BEEC  88 1E 01 14 */	lbz r0, 0x114(r30)
/* 8028BEF0  28 00 00 00 */	cmplwi r0, 0
/* 8028BEF4  40 82 00 34 */	bne lbl_8028BF28
/* 8028BEF8  88 1F 00 89 */	lbz r0, 0x89(r31)
/* 8028BEFC  28 00 00 00 */	cmplwi r0, 0
/* 8028BF00  40 82 00 0C */	bne lbl_8028BF0C
/* 8028BF04  38 01 00 14 */	addi r0, r1, 0x14
/* 8028BF08  48 00 00 18 */	b lbl_8028BF20
lbl_8028BF0C:
/* 8028BF0C  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8028BF10  38 81 00 14 */	addi r4, r1, 0x14
/* 8028BF14  38 A1 00 08 */	addi r5, r1, 8
/* 8028BF18  48 0B AE 55 */	bl PSMTXMultVec
/* 8028BF1C  38 01 00 08 */	addi r0, r1, 8
lbl_8028BF20:
/* 8028BF20  7C 05 03 78 */	mr r5, r0
/* 8028BF24  48 00 00 70 */	b lbl_8028BF94
lbl_8028BF28:
/* 8028BF28  38 A1 00 14 */	addi r5, r1, 0x14
/* 8028BF2C  80 1E 01 08 */	lwz r0, 0x108(r30)
/* 8028BF30  2C 00 00 01 */	cmpwi r0, 1
/* 8028BF34  41 82 00 60 */	beq lbl_8028BF94
/* 8028BF38  40 80 00 5C */	bge lbl_8028BF94
/* 8028BF3C  2C 00 00 00 */	cmpwi r0, 0
/* 8028BF40  40 80 00 08 */	bge lbl_8028BF48
/* 8028BF44  48 00 00 50 */	b lbl_8028BF94
lbl_8028BF48:
/* 8028BF48  38 61 00 20 */	addi r3, r1, 0x20
/* 8028BF4C  7C A4 2B 78 */	mr r4, r5
/* 8028BF50  80 BE 01 0C */	lwz r5, 0x10c(r30)
/* 8028BF54  80 DE 01 10 */	lwz r6, 0x110(r30)
/* 8028BF58  4B FF E4 75 */	bl transform_toLocalFromGlobal__14JStudio_JStageFPA4_fRCQ37JStudio8TControl19TTransform_positionPCQ26JStage7TObjectUl
/* 8028BF5C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8028BF60  40 82 00 0C */	bne lbl_8028BF6C
/* 8028BF64  38 00 00 00 */	li r0, 0
/* 8028BF68  48 00 00 20 */	b lbl_8028BF88
lbl_8028BF6C:
/* 8028BF6C  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8028BF70  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028BF74  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 8028BF78  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028BF7C  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 8028BF80  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028BF84  38 00 00 01 */	li r0, 1
lbl_8028BF88:
/* 8028BF88  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 8028BF8C  41 82 00 18 */	beq lbl_8028BFA4
/* 8028BF90  38 A1 00 08 */	addi r5, r1, 8
lbl_8028BF94:
/* 8028BF94  7F C3 F3 78 */	mr r3, r30
/* 8028BF98  3C 80 80 3A */	lis r4, sauVariableValue_3_POSITION_XYZ__Q27JStudio15TAdaptor_camera@ha
/* 8028BF9C  38 84 AA A8 */	addi r4, r4, sauVariableValue_3_POSITION_XYZ__Q27JStudio15TAdaptor_camera@l
/* 8028BFA0  4B FF A2 65 */	bl adaptor_setVariableValue_Vec__Q27JStudio8TAdaptorFPCUlRC3Vec
lbl_8028BFA4:
/* 8028BFA4  83 E1 00 5C */	lwz r31, 0x5c(r1)
/* 8028BFA8  83 C1 00 58 */	lwz r30, 0x58(r1)
/* 8028BFAC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 8028BFB0  7C 08 03 A6 */	mtlr r0
/* 8028BFB4  38 21 00 60 */	addi r1, r1, 0x60
/* 8028BFB8  4E 80 00 20 */	blr 
