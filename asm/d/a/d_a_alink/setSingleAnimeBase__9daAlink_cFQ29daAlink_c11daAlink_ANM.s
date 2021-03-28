lbl_800ACF80:
/* 800ACF80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ACF84  7C 08 02 A6 */	mflr r0
/* 800ACF88  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ACF8C  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACF90  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800ACF94  38 A0 FF FF */	li r5, -1
/* 800ACF98  C0 62 92 C4 */	lfs f3, lit_6109(r2)
/* 800ACF9C  48 00 00 71 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800ACFA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ACFA4  7C 08 03 A6 */	mtlr r0
/* 800ACFA8  38 21 00 10 */	addi r1, r1, 0x10
/* 800ACFAC  4E 80 00 20 */	blr 
