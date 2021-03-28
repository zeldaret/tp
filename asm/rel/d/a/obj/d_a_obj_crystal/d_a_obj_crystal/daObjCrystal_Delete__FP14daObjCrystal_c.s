lbl_80BD6874:
/* 80BD6874  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6878  7C 08 02 A6 */	mflr r0
/* 80BD687C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6880  4B FF FF 49 */	bl _delete__14daObjCrystal_cFv
/* 80BD6884  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD6888  7C 08 03 A6 */	mtlr r0
/* 80BD688C  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6890  4E 80 00 20 */	blr 
