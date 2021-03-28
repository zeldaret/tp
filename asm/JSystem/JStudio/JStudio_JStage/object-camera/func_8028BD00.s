lbl_8028BD00:
/* 8028BD00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BD04  7C 08 02 A6 */	mflr r0
/* 8028BD08  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BD0C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028BD10  7C 7F 1B 78 */	mr r31, r3
/* 8028BD14  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028BD18  41 82 00 08 */	beq lbl_8028BD20
/* 8028BD1C  48 00 00 14 */	b lbl_8028BD30
lbl_8028BD20:
/* 8028BD20  38 7F 01 00 */	addi r3, r31, 0x100
/* 8028BD24  7C A4 2B 78 */	mr r4, r5
/* 8028BD28  4B FF E7 95 */	bl adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc
/* 8028BD2C  90 7F 01 18 */	stw r3, 0x118(r31)
lbl_8028BD30:
/* 8028BD30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028BD34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BD38  7C 08 03 A6 */	mtlr r0
/* 8028BD3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BD40  4E 80 00 20 */	blr 
