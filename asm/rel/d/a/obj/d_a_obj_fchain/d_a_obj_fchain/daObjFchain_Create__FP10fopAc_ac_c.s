lbl_80BE63A8:
/* 80BE63A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE63AC  7C 08 02 A6 */	mflr r0
/* 80BE63B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE63B4  4B FF FC C1 */	bl create__13daObjFchain_cFv
/* 80BE63B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE63BC  7C 08 03 A6 */	mtlr r0
/* 80BE63C0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE63C4  4E 80 00 20 */	blr 
