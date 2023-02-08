lbl_8028C880:
/* 8028C880  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028C884  7C 08 02 A6 */	mflr r0
/* 8028C888  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028C88C  38 63 00 88 */	addi r3, r3, 0x88
/* 8028C890  4B FF DB E1 */	bl adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl
/* 8028C894  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028C898  7C 08 03 A6 */	mtlr r0
/* 8028C89C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028C8A0  4E 80 00 20 */	blr 
