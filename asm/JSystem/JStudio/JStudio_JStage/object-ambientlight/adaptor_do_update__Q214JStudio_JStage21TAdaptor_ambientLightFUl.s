lbl_8028B804:
/* 8028B804  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028B808  7C 08 02 A6 */	mflr r0
/* 8028B80C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028B810  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028B814  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028B818  7C 7E 1B 78 */	mr r30, r3
/* 8028B81C  83 E3 00 64 */	lwz r31, 0x64(r3)
/* 8028B820  38 81 00 0C */	addi r4, r1, 0xc
/* 8028B824  3C A0 80 3A */	lis r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@ha
/* 8028B828  38 A5 AA 98 */	addi r5, r5, sauVariableValue_4_COLOR_RGBA__Q27JStudio21TAdaptor_ambientLight@l
/* 8028B82C  4B FF AB 61 */	bl adaptor_getVariableValue_GXColor__Q27JStudio8TAdaptorCFP8_GXColorPCUl
/* 8028B830  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8028B834  90 01 00 08 */	stw r0, 8(r1)
/* 8028B838  7F E3 FB 78 */	mr r3, r31
/* 8028B83C  38 81 00 08 */	addi r4, r1, 8
/* 8028B840  81 9F 00 00 */	lwz r12, 0(r31)
/* 8028B844  81 8C 00 40 */	lwz r12, 0x40(r12)
/* 8028B848  7D 89 03 A6 */	mtctr r12
/* 8028B84C  4E 80 04 21 */	bctrl 
/* 8028B850  80 7E 00 64 */	lwz r3, 0x64(r30)
/* 8028B854  81 83 00 00 */	lwz r12, 0(r3)
/* 8028B858  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8028B85C  7D 89 03 A6 */	mtctr r12
/* 8028B860  4E 80 04 21 */	bctrl 
/* 8028B864  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028B868  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028B86C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028B870  7C 08 03 A6 */	mtlr r0
/* 8028B874  38 21 00 20 */	addi r1, r1, 0x20
/* 8028B878  4E 80 00 20 */	blr 
