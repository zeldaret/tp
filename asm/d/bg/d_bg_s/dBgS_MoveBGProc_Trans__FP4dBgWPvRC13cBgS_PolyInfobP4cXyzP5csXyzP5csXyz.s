lbl_80075B44:
/* 80075B44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80075B48  7C 08 02 A6 */	mflr r0
/* 80075B4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80075B50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80075B54  7C FF 3B 78 */	mr r31, r7
/* 80075B58  38 81 00 08 */	addi r4, r1, 8
/* 80075B5C  48 00 56 21 */	bl GetTrans__4cBgWCFP4cXyz
/* 80075B60  7F E3 FB 78 */	mr r3, r31
/* 80075B64  38 81 00 08 */	addi r4, r1, 8
/* 80075B68  7F E5 FB 78 */	mr r5, r31
/* 80075B6C  48 2D 15 25 */	bl PSVECAdd
/* 80075B70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80075B74  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80075B78  7C 08 03 A6 */	mtlr r0
/* 80075B7C  38 21 00 20 */	addi r1, r1, 0x20
/* 80075B80  4E 80 00 20 */	blr 
