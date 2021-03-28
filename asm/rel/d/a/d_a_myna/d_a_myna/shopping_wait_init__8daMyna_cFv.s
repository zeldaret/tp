lbl_809471BC:
/* 809471BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809471C0  7C 08 02 A6 */	mflr r0
/* 809471C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 809471C8  38 80 00 01 */	li r4, 1
/* 809471CC  3C A0 80 95 */	lis r5, lit_3926@ha
/* 809471D0  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 809471D4  48 00 2E 81 */	bl setAnimeType__8daMyna_cFUcf
/* 809471D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809471DC  7C 08 03 A6 */	mtlr r0
/* 809471E0  38 21 00 10 */	addi r1, r1, 0x10
/* 809471E4  4E 80 00 20 */	blr 
