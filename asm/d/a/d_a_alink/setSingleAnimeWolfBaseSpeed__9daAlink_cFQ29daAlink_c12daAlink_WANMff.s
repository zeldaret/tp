lbl_801296D8:
/* 801296D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 801296DC  7C 08 02 A6 */	mflr r0
/* 801296E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 801296E4  FC 60 10 90 */	fmr f3, f2
/* 801296E8  C0 42 92 C0 */	lfs f2, lit_6108(r2)
/* 801296EC  38 A0 FF FF */	li r5, -1
/* 801296F0  48 00 00 15 */	bl setSingleAnimeWolf__9daAlink_cFQ29daAlink_c12daAlink_WANMffsf
/* 801296F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801296F8  7C 08 03 A6 */	mtlr r0
/* 801296FC  38 21 00 10 */	addi r1, r1, 0x10
/* 80129700  4E 80 00 20 */	blr 
