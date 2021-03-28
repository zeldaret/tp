lbl_800ACFE0:
/* 800ACFE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ACFE4  7C 08 02 A6 */	mflr r0
/* 800ACFE8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ACFEC  FC 60 10 90 */	fmr f3, f2
/* 800ACFF0  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800ACFF4  38 A0 FF FF */	li r5, -1
/* 800ACFF8  48 00 00 15 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800ACFFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AD000  7C 08 03 A6 */	mtlr r0
/* 800AD004  38 21 00 10 */	addi r1, r1, 0x10
/* 800AD008  4E 80 00 20 */	blr 
