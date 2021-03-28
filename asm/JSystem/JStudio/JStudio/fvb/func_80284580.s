lbl_80284580:
/* 80284580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80284584  7C 08 02 A6 */	mflr r0
/* 80284588  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028458C  80 A4 00 08 */	lwz r5, 8(r4)
/* 80284590  38 85 00 04 */	addi r4, r5, 4
/* 80284594  80 A5 00 00 */	lwz r5, 0(r5)
/* 80284598  38 63 00 18 */	addi r3, r3, 0x18
/* 8028459C  4B FF E8 3D */	bl data_set__Q27JStudio29TFunctionValue_list_parameterFPCfUl
/* 802845A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802845A4  7C 08 03 A6 */	mtlr r0
/* 802845A8  38 21 00 10 */	addi r1, r1, 0x10
/* 802845AC  4E 80 00 20 */	blr 
