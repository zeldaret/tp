lbl_8010B35C:
/* 8010B35C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8010B360  7C 08 02 A6 */	mflr r0
/* 8010B364  90 01 00 14 */	stw r0, 0x14(r1)
/* 8010B368  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8010B36C  7C 7F 1B 78 */	mr r31, r3
/* 8010B370  A8 03 30 20 */	lha r0, 0x3020(r3)
/* 8010B374  2C 00 00 00 */	cmpwi r0, 0
/* 8010B378  38 80 01 38 */	li r4, 0x138
/* 8010B37C  40 82 00 08 */	bne lbl_8010B384
/* 8010B380  38 80 01 39 */	li r4, 0x139
lbl_8010B384:
/* 8010B384  C0 22 93 14 */	lfs f1, lit_7307(r2)
/* 8010B388  4B FA 1C 29 */	bl setSingleAnimeBaseMorf__9daAlink_cFQ29daAlink_c11daAlink_ANMf
/* 8010B38C  80 1F 31 A0 */	lwz r0, 0x31a0(r31)
/* 8010B390  60 00 01 00 */	ori r0, r0, 0x100
/* 8010B394  90 1F 31 A0 */	stw r0, 0x31a0(r31)
/* 8010B398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8010B39C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8010B3A0  7C 08 03 A6 */	mtlr r0
/* 8010B3A4  38 21 00 10 */	addi r1, r1, 0x10
/* 8010B3A8  4E 80 00 20 */	blr 
