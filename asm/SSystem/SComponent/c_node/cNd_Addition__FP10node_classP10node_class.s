lbl_80266210:
/* 80266210  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80266214  7C 08 02 A6 */	mflr r0
/* 80266218  90 01 00 14 */	stw r0, 0x14(r1)
/* 8026621C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80266220  7C 9F 23 78 */	mr r31, r4
/* 80266224  4B FF FF 19 */	bl cNd_Last__FP10node_class
/* 80266228  7F E4 FB 78 */	mr r4, r31
/* 8026622C  4B FF FE A5 */	bl cNd_Join__FP10node_classP10node_class
/* 80266230  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80266234  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80266238  7C 08 03 A6 */	mtlr r0
/* 8026623C  38 21 00 10 */	addi r1, r1, 0x10
/* 80266240  4E 80 00 20 */	blr 
