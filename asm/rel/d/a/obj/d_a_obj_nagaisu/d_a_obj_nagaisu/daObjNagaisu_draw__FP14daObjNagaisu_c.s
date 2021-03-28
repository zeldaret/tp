lbl_80CA02EC:
/* 80CA02EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CA02F0  7C 08 02 A6 */	mflr r0
/* 80CA02F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CA02F8  4B FF F5 25 */	bl draw__14daObjNagaisu_cFv
/* 80CA02FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CA0300  7C 08 03 A6 */	mtlr r0
/* 80CA0304  38 21 00 10 */	addi r1, r1, 0x10
/* 80CA0308  4E 80 00 20 */	blr 
