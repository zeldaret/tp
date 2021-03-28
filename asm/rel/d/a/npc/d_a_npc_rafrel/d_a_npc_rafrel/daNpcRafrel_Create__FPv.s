lbl_80ABDDE4:
/* 80ABDDE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80ABDDE8  7C 08 02 A6 */	mflr r0
/* 80ABDDEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80ABDDF0  4B FF BC 51 */	bl Create__13daNpcRafrel_cFv
/* 80ABDDF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80ABDDF8  7C 08 03 A6 */	mtlr r0
/* 80ABDDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 80ABDE00  4E 80 00 20 */	blr 
