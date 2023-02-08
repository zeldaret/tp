lbl_80D3BEE8:
/* 80D3BEE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3BEEC  7C 08 02 A6 */	mflr r0
/* 80D3BEF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3BEF4  4B FF FC 35 */	bl create__13daObjWSword_cFv
/* 80D3BEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3BEFC  7C 08 03 A6 */	mtlr r0
/* 80D3BF00  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3BF04  4E 80 00 20 */	blr 
