lbl_8028BC14:
/* 8028BC14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BC18  7C 08 02 A6 */	mflr r0
/* 8028BC1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BC20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028BC24  7C 7F 1B 78 */	mr r31, r3
/* 8028BC28  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028BC2C  41 82 00 28 */	beq lbl_8028BC54
/* 8028BC30  40 80 00 2C */	bge lbl_8028BC5C
/* 8028BC34  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028BC38  40 80 00 08 */	bge lbl_8028BC40
/* 8028BC3C  48 00 00 20 */	b lbl_8028BC5C
lbl_8028BC40:
/* 8028BC40  38 7F 01 00 */	addi r3, r31, 0x100
/* 8028BC44  80 9F 01 0C */	lwz r4, 0x10c(r31)
/* 8028BC48  4B FF E8 C5 */	bl adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc
/* 8028BC4C  90 7F 01 10 */	stw r3, 0x110(r31)
/* 8028BC50  48 00 00 0C */	b lbl_8028BC5C
lbl_8028BC54:
/* 8028BC54  80 05 00 00 */	lwz r0, 0(r5)
/* 8028BC58  90 1F 01 10 */	stw r0, 0x110(r31)
lbl_8028BC5C:
/* 8028BC5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028BC60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BC64  7C 08 03 A6 */	mtlr r0
/* 8028BC68  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BC6C  4E 80 00 20 */	blr 
