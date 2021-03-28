lbl_8028BD44:
/* 8028BD44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028BD48  7C 08 02 A6 */	mflr r0
/* 8028BD4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028BD50  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028BD54  7C 7F 1B 78 */	mr r31, r3
/* 8028BD58  2C 04 00 19 */	cmpwi r4, 0x19
/* 8028BD5C  41 82 00 28 */	beq lbl_8028BD84
/* 8028BD60  40 80 00 2C */	bge lbl_8028BD8C
/* 8028BD64  2C 04 00 18 */	cmpwi r4, 0x18
/* 8028BD68  40 80 00 08 */	bge lbl_8028BD70
/* 8028BD6C  48 00 00 20 */	b lbl_8028BD8C
lbl_8028BD70:
/* 8028BD70  38 7F 01 00 */	addi r3, r31, 0x100
/* 8028BD74  80 9F 01 18 */	lwz r4, 0x118(r31)
/* 8028BD78  4B FF E7 95 */	bl adaptor_object_findJSGObjectNode___Q214JStudio_JStage16TAdaptor_object_FPCQ26JStage7TObjectPCc
/* 8028BD7C  90 7F 01 1C */	stw r3, 0x11c(r31)
/* 8028BD80  48 00 00 0C */	b lbl_8028BD8C
lbl_8028BD84:
/* 8028BD84  80 05 00 00 */	lwz r0, 0(r5)
/* 8028BD88  90 1F 01 1C */	stw r0, 0x11c(r31)
lbl_8028BD8C:
/* 8028BD8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028BD90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028BD94  7C 08 03 A6 */	mtlr r0
/* 8028BD98  38 21 00 10 */	addi r1, r1, 0x10
/* 8028BD9C  4E 80 00 20 */	blr 
