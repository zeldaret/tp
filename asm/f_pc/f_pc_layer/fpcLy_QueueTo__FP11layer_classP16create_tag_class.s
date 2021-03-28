lbl_80021640:
/* 80021640  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80021644  7C 08 02 A6 */	mflr r0
/* 80021648  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002164C  7C 83 23 78 */	mr r3, r4
/* 80021650  48 24 52 3D */	bl cTg_SingleCutFromTree__FP16create_tag_class
/* 80021654  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80021658  7C 08 03 A6 */	mtlr r0
/* 8002165C  38 21 00 10 */	addi r1, r1, 0x10
/* 80021660  4E 80 00 20 */	blr 
