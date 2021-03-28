lbl_8028AC48:
/* 8028AC48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028AC4C  7C 08 02 A6 */	mflr r0
/* 8028AC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028AC54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028AC58  7C 7F 1B 78 */	mr r31, r3
/* 8028AC5C  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028AC60  41 82 00 28 */	beq lbl_8028AC88
/* 8028AC64  40 80 00 2C */	bge lbl_8028AC90
/* 8028AC68  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028AC6C  40 80 00 08 */	bge lbl_8028AC74
/* 8028AC70  48 00 00 20 */	b lbl_8028AC90
lbl_8028AC74:
/* 8028AC74  38 7F 01 28 */	addi r3, r31, 0x128
/* 8028AC78  80 9F 01 3C */	lwz r4, 0x13c(r31)
/* 8028AC7C  4B FF F8 91 */	bl adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc
/* 8028AC80  90 7F 01 4C */	stw r3, 0x14c(r31)
/* 8028AC84  48 00 00 0C */	b lbl_8028AC90
lbl_8028AC88:
/* 8028AC88  80 05 00 00 */	lwz r0, 0(r5)
/* 8028AC8C  90 1F 01 4C */	stw r0, 0x14c(r31)
lbl_8028AC90:
/* 8028AC90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028AC94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028AC98  7C 08 03 A6 */	mtlr r0
/* 8028AC9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8028ACA0  4E 80 00 20 */	blr 
