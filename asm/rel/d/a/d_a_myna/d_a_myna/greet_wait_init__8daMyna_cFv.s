lbl_80946E84:
/* 80946E84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946E88  7C 08 02 A6 */	mflr r0
/* 80946E8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946E90  38 80 00 01 */	li r4, 1
/* 80946E94  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80946E98  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80946E9C  48 00 31 B9 */	bl setAnimeType__8daMyna_cFUcf
/* 80946EA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946EA4  7C 08 03 A6 */	mtlr r0
/* 80946EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80946EAC  4E 80 00 20 */	blr 
