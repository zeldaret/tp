lbl_80023150:
/* 80023150  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80023154  7C 08 02 A6 */	mflr r0
/* 80023158  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002315C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80023160  7C 7F 1B 78 */	mr r31, r3
/* 80023164  48 24 38 41 */	bl cTg_SingleCut__FP16create_tag_class
/* 80023168  38 7F 00 14 */	addi r3, r31, 0x14
/* 8002316C  4B FF E4 1D */	bl fpcLy_CancelQTo__FP24process_method_tag_class
/* 80023170  38 60 00 01 */	li r3, 1
/* 80023174  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80023178  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002317C  7C 08 03 A6 */	mtlr r0
/* 80023180  38 21 00 10 */	addi r1, r1, 0x10
/* 80023184  4E 80 00 20 */	blr 
