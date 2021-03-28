lbl_8028C808:
/* 8028C808  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028C80C  7C 08 02 A6 */	mflr r0
/* 8028C810  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028C814  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028C818  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028C81C  7C 7E 1B 78 */	mr r30, r3
/* 8028C820  83 E3 00 8C */	lwz r31, 0x8c(r3)
/* 8028C824  38 81 00 0C */	addi r4, r1, 0xc
/* 8028C828  3C A0 80 3A */	lis r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@ha
/* 8028C82C  38 A5 AA CC */	addi r5, r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio12TAdaptor_fog@l
/* 8028C830  4B FF 9B 5D */	bl adaptor_getVariableValue_GXColor__Q27JStudio8TAdaptorCFP8_GXColorPCUl
/* 8028C834  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8028C838  90 01 00 08 */	stw r0, 8(r1)
/* 8028C83C  7F E3 FB 78 */	mr r3, r31
/* 8028C840  38 81 00 08 */	addi r4, r1, 8
/* 8028C844  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028C848  81 8C 00 58 */	lwz r12, 0x58(r12)
/* 8028C84C  7D 89 03 A6 */	mtctr r12
/* 8028C850  4E 80 04 21 */	bctrl 
/* 8028C854  80 7E 00 8C */	lwz r3, 0x8c(r30)
/* 8028C858  81 83 00 00 */	lwz r12, 0(r3)
/* 8028C85C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028C860  7D 89 03 A6 */	mtctr r12
/* 8028C864  4E 80 04 21 */	bctrl 
/* 8028C868  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028C86C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028C870  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028C874  7C 08 03 A6 */	mtlr r0
/* 8028C878  38 21 00 20 */	addi r1, r1, 0x20
/* 8028C87C  4E 80 00 20 */	blr 
