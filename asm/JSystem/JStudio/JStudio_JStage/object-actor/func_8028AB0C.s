lbl_8028AB0C:
/* 8028AB0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AB10  7C 08 02 A6 */	mflr r0
/* 8028AB14  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AB18  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028AB1C  7C 7F 1B 78 */	mr r31, r3
/* 8028AB20  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028AB24  41 82 00 28 */	beq lbl_8028AB4C
/* 8028AB28  40 80 00 2C */	bge lbl_8028AB54
/* 8028AB2C  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028AB30  40 80 00 08 */	bge lbl_8028AB38
/* 8028AB34  48 00 00 20 */	b lbl_8028AB54
lbl_8028AB38:
/* 8028AB38  38 7F 01 28 */	addi r3, r31, 0x128
/* 8028AB3C  80 9F 01 3C */	lwz r4, 0x13c(r31)
/* 8028AB40  4B FF F9 CD */	bl adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc
/* 8028AB44  90 7F 01 40 */	stw r3, 0x140(r31)
/* 8028AB48  48 00 00 0C */	b lbl_8028AB54
lbl_8028AB4C:
/* 8028AB4C  80 05 00 00 */	lwz r0, 0(r5)
/* 8028AB50  90 1F 01 40 */	stw r0, 0x140(r31)
lbl_8028AB54:
/* 8028AB54  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028AB58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028AB5C  7C 08 03 A6 */	mtlr r0
/* 8028AB60  38 21 00 10 */	addi r1, r1, 0x10
/* 8028AB64  4E 80 00 20 */	blr 
