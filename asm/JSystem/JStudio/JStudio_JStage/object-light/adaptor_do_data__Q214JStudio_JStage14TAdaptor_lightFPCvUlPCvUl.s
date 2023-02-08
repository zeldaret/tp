lbl_8028D18C:
/* 8028D18C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028D190  7C 08 02 A6 */	mflr r0
/* 8028D194  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028D198  38 63 01 14 */	addi r3, r3, 0x114
/* 8028D19C  4B FF D2 D5 */	bl adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl
/* 8028D1A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028D1A4  7C 08 03 A6 */	mtlr r0
/* 8028D1A8  38 21 00 10 */	addi r1, r1, 0x10
/* 8028D1AC  4E 80 00 20 */	blr 
