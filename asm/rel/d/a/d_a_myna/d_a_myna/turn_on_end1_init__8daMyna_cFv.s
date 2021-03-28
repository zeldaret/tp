lbl_80947D48:
/* 80947D48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80947D4C  7C 08 02 A6 */	mflr r0
/* 80947D50  90 01 00 14 */	stw r0, 0x14(r1)
/* 80947D54  38 80 00 04 */	li r4, 4
/* 80947D58  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80947D5C  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80947D60  48 00 22 F5 */	bl setAnimeType__8daMyna_cFUcf
/* 80947D64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80947D68  7C 08 03 A6 */	mtlr r0
/* 80947D6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80947D70  4E 80 00 20 */	blr 
