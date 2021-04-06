lbl_80945E80:
/* 80945E80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945E84  7C 08 02 A6 */	mflr r0
/* 80945E88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945E8C  2C 04 00 00 */	cmpwi r4, 0
/* 80945E90  41 82 00 1C */	beq lbl_80945EAC
/* 80945E94  38 00 00 00 */	li r0, 0
/* 80945E98  B0 03 09 16 */	sth r0, 0x916(r3)
/* 80945E9C  38 80 00 01 */	li r4, 1
/* 80945EA0  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 80945EA4  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 80945EA8  48 00 41 AD */	bl setAnimeType__8daMyna_cFUcf
lbl_80945EAC:
/* 80945EAC  38 60 00 01 */	li r3, 1
/* 80945EB0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945EB4  7C 08 03 A6 */	mtlr r0
/* 80945EB8  38 21 00 10 */	addi r1, r1, 0x10
/* 80945EBC  4E 80 00 20 */	blr 
