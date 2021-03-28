lbl_80AEDED0:
/* 80AEDED0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AEDED4  7C 08 02 A6 */	mflr r0
/* 80AEDED8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AEDEDC  4B FF ED F5 */	bl create__12daNpc_solA_cFv
/* 80AEDEE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AEDEE4  7C 08 03 A6 */	mtlr r0
/* 80AEDEE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80AEDEEC  4E 80 00 20 */	blr 
