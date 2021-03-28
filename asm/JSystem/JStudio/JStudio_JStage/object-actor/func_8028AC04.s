lbl_8028AC04:
/* 8028AC04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AC08  7C 08 02 A6 */	mflr r0
/* 8028AC0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AC10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028AC14  7C 7F 1B 78 */	mr r31, r3
/* 8028AC18  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028AC1C  41 82 00 08 */	beq lbl_8028AC24
/* 8028AC20  48 00 00 14 */	b lbl_8028AC34
lbl_8028AC24:
/* 8028AC24  38 7F 01 28 */	addi r3, r31, 0x128
/* 8028AC28  7C A4 2B 78 */	mr r4, r5
/* 8028AC2C  4B FF F8 91 */	bl adaptor_object_findJSGObject___Q214JStudio_JStage16TAdaptor_object_FPCc
/* 8028AC30  90 7F 01 48 */	stw r3, 0x148(r31)
lbl_8028AC34:
/* 8028AC34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028AC38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028AC3C  7C 08 03 A6 */	mtlr r0
/* 8028AC40  38 21 00 10 */	addi r1, r1, 0x10
/* 8028AC44  4E 80 00 20 */	blr 
