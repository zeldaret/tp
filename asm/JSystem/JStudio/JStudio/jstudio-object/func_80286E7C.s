lbl_80286E7C:
/* 80286E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80286E80  7C 08 02 A6 */	mflr r0
/* 80286E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80286E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80286E8C  7C 7F 1B 78 */	mr r31, r3
/* 80286E90  4B FF F9 D5 */	bl __ct__Q27JStudio7TObjectFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio8TAdaptor
/* 80286E94  3C 60 80 3C */	lis r3, __vt__Q27JStudio14TObject_camera@ha /* 0x803C54E4@ha */
/* 80286E98  38 03 54 E4 */	addi r0, r3, __vt__Q27JStudio14TObject_camera@l /* 0x803C54E4@l */
/* 80286E9C  90 1F 00 08 */	stw r0, 8(r31)
/* 80286EA0  7F E3 FB 78 */	mr r3, r31
/* 80286EA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80286EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80286EAC  7C 08 03 A6 */	mtlr r0
/* 80286EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80286EB4  4E 80 00 20 */	blr 
