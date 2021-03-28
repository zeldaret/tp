lbl_8028BBD0:
/* 8028BBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BBD4  7C 08 02 A6 */	mflr r0
/* 8028BBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BBDC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028BBE0  7C 7F 1B 78 */	mr r31, r3
/* 8028BBE4  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028BBE8  41 82 00 08 */	beq lbl_8028BBF0
/* 8028BBEC  48 00 00 14 */	b lbl_8028BC00
lbl_8028BBF0:
/* 8028BBF0  38 7F 01 00 */	addi r3, r31, 0x100
/* 8028BBF4  7C A4 2B 78 */	mr r4, r5
/* 8028BBF8  4B FF E8 C5 */	bl adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc
/* 8028BBFC  90 7F 01 0C */	stw r3, 0x10c(r31)
lbl_8028BC00:
/* 8028BC00  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028BC04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BC08  7C 08 03 A6 */	mtlr r0
/* 8028BC0C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BC10  4E 80 00 20 */	blr 
