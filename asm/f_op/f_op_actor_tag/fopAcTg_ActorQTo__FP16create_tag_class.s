lbl_80019860:
/* 80019860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80019864  7C 08 02 A6 */	mflr r0
/* 80019868  90 01 00 14 */	stw r0, 0x14(r1)
/* 8001986C  48 24 D0 21 */	bl cTg_SingleCutFromTree__FP16create_tag_class
/* 80019870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80019874  7C 08 03 A6 */	mtlr r0
/* 80019878  38 21 00 10 */	addi r1, r1, 0x10
/* 8001987C  4E 80 00 20 */	blr 
