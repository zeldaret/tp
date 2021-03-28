lbl_8028A974:
/* 8028A974  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028A978  7C 08 02 A6 */	mflr r0
/* 8028A97C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028A980  38 63 01 28 */	addi r3, r3, 0x128
/* 8028A984  4B FF FA ED */	bl adaptor_object_data___Q214JStudio_JStage16TAdaptor_object_FPCvUlPCvUl
/* 8028A988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028A98C  7C 08 03 A6 */	mtlr r0
/* 8028A990  38 21 00 10 */	addi r1, r1, 0x10
/* 8028A994  4E 80 00 20 */	blr 
