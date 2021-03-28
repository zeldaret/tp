lbl_800237B8:
/* 800237B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800237BC  7C 08 02 A6 */	mflr r0
/* 800237C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800237C4  48 24 32 21 */	bl cTg_Addition__FP15node_list_classP16create_tag_class
/* 800237C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800237CC  7C 08 03 A6 */	mtlr r0
/* 800237D0  38 21 00 10 */	addi r1, r1, 0x10
/* 800237D4  4E 80 00 20 */	blr 
