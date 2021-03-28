lbl_80945F40:
/* 80945F40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945F44  7C 08 02 A6 */	mflr r0
/* 80945F48  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945F4C  2C 04 00 00 */	cmpwi r4, 0
/* 80945F50  41 82 00 20 */	beq lbl_80945F70
/* 80945F54  38 00 00 03 */	li r0, 3
/* 80945F58  B0 03 09 16 */	sth r0, 0x916(r3)
/* 80945F5C  38 80 00 09 */	li r4, 9
/* 80945F60  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80945F64  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80945F68  48 00 40 ED */	bl setAnimeType__8daMyna_cFUcf
/* 80945F6C  48 00 00 20 */	b lbl_80945F8C
lbl_80945F70:
/* 80945F70  A0 03 09 1E */	lhz r0, 0x91e(r3)
/* 80945F74  28 00 00 00 */	cmplwi r0, 0
/* 80945F78  41 82 00 14 */	beq lbl_80945F8C
/* 80945F7C  38 80 00 0B */	li r4, 0xb
/* 80945F80  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80945F84  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80945F88  48 00 40 CD */	bl setAnimeType__8daMyna_cFUcf
lbl_80945F8C:
/* 80945F8C  38 60 00 01 */	li r3, 1
/* 80945F90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945F94  7C 08 03 A6 */	mtlr r0
/* 80945F98  38 21 00 10 */	addi r1, r1, 0x10
/* 80945F9C  4E 80 00 20 */	blr 
