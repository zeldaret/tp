lbl_801296A8:
/* 801296A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801296AC  7C 08 02 A6 */	mflr r0
/* 801296B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801296B4  FC 60 08 90 */	fmr f3, f1
/* 801296B8  C0 22 92 B8 */	lfs f1, lit_6040(r2)
/* 801296BC  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 801296C0  38 A0 FF FF */	li r5, -1
/* 801296C4  48 00 00 41 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 801296C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801296CC  7C 08 03 A6 */	mtlr r0
/* 801296D0  38 21 00 10 */	addi r1, r1, 0x10
/* 801296D4  4E 80 00 20 */	blr 
