lbl_800ACFB0:
/* 800ACFB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800ACFB4  7C 08 02 A6 */	mflr r0
/* 800ACFB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800ACFBC  FC 60 08 90 */	fmr f3, f1
/* 800ACFC0  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 800ACFC4  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 800ACFC8  38 A0 FF FF */	li r5, -1
/* 800ACFCC  48 00 00 41 */	bl setSingleAnime__9daAlink_cFQ29daAlink_c11daAlink_ANMffsf
/* 800ACFD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800ACFD4  7C 08 03 A6 */	mtlr r0
/* 800ACFD8  38 21 00 10 */	addi r1, r1, 0x10
/* 800ACFDC  4E 80 00 20 */	blr 
