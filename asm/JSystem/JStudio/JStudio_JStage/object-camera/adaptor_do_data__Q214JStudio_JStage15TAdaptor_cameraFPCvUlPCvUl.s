lbl_8028BBAC:
/* 8028BBAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BBB0  7C 08 02 A6 */	mflr r0
/* 8028BBB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BBB8  38 63 01 00 */	addi r3, r3, 0x100
/* 8028BBBC  4B FF E8 B5 */	bl adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl
/* 8028BBC0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BBC4  7C 08 03 A6 */	mtlr r0
/* 8028BBC8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BBCC  4E 80 00 20 */	blr 
