lbl_80287640:
/* 80287640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80287644  7C 08 02 A6 */	mflr r0
/* 80287648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028764C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80287650  7C 7F 1B 78 */	mr r31, r3
/* 80287654  4B FF F2 11 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80287658  3C 60 80 3C */	lis r3, __vt__Q27JStudio15TObject_message@ha
/* 8028765C  38 03 54 18 */	addi r0, r3, __vt__Q27JStudio15TObject_message@l
/* 80287660  90 1F 00 08 */	stw r0, 8(r31)
/* 80287664  7F E3 FB 78 */	mr r3, r31
/* 80287668  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028766C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80287670  7C 08 03 A6 */	mtlr r0
/* 80287674  38 21 00 10 */	addi r1, r1, 0x10
/* 80287678  4E 80 00 20 */	blr 
