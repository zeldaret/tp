lbl_800DE9E8:
/* 800DE9E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800DE9EC  7C 08 02 A6 */	mflr r0
/* 800DE9F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 800DE9F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800DE9F8  93 C1 00 08 */	stw r30, 8(r1)
/* 800DE9FC  7C 7E 1B 78 */	mr r30, r3
/* 800DEA00  3B E0 00 00 */	li r31, 0
/* 800DEA04  4B FF FF B5 */	bl checkBowReadyAnime__9daAlink_cCFv
/* 800DEA08  2C 03 00 00 */	cmpwi r3, 0
/* 800DEA0C  40 82 00 10 */	bne lbl_800DEA1C
/* 800DEA10  A0 1E 1F BC */	lhz r0, 0x1fbc(r30)
/* 800DEA14  28 00 00 0C */	cmplwi r0, 0xc
/* 800DEA18  40 82 00 08 */	bne lbl_800DEA20
lbl_800DEA1C:
/* 800DEA1C  3B E0 00 01 */	li r31, 1
lbl_800DEA20:
/* 800DEA20  57 E3 06 3E */	clrlwi r3, r31, 0x18
/* 800DEA24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800DEA28  83 C1 00 08 */	lwz r30, 8(r1)
/* 800DEA2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800DEA30  7C 08 03 A6 */	mtlr r0
/* 800DEA34  38 21 00 10 */	addi r1, r1, 0x10
/* 800DEA38  4E 80 00 20 */	blr 
