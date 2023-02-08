lbl_8028AAC8:
/* 8028AAC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AACC  7C 08 02 A6 */	mflr r0
/* 8028AAD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AAD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028AAD8  7C 7F 1B 78 */	mr r31, r3
/* 8028AADC  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028AAE0  41 82 00 08 */	beq lbl_8028AAE8
/* 8028AAE4  48 00 00 14 */	b lbl_8028AAF8
lbl_8028AAE8:
/* 8028AAE8  38 7F 01 28 */	addi r3, r31, 0x128
/* 8028AAEC  7C A4 2B 78 */	mr r4, r5
/* 8028AAF0  4B FF F9 CD */	bl adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc
/* 8028AAF4  90 7F 01 3C */	stw r3, 0x13c(r31)
lbl_8028AAF8:
/* 8028AAF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028AAFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028AB00  7C 08 03 A6 */	mtlr r0
/* 8028AB04  38 21 00 10 */	addi r1, r1, 0x10
/* 8028AB08  4E 80 00 20 */	blr 
