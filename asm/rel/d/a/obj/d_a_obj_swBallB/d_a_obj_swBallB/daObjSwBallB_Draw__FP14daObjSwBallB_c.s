lbl_80CF5860:
/* 80CF5860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5864  7C 08 02 A6 */	mflr r0
/* 80CF5868  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF586C  4B FF FE 39 */	bl draw__14daObjSwBallB_cFv
/* 80CF5870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5874  7C 08 03 A6 */	mtlr r0
/* 80CF5878  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF587C  4E 80 00 20 */	blr 
