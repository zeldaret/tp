lbl_80349AF0:
/* 80349AF0  7C 08 02 A6 */	mflr r0
/* 80349AF4  3C 60 80 45 */	lis r3, BB2@ha /* 0x8044C900@ha */
/* 80349AF8  90 01 00 04 */	stw r0, 4(r1)
/* 80349AFC  3C 80 80 35 */	lis r4, cbForStateCheckID2@ha /* 0x80349C24@ha */
/* 80349B00  38 C4 9C 24 */	addi r6, r4, cbForStateCheckID2@l /* 0x80349C24@l */
/* 80349B04  94 21 FF F8 */	stwu r1, -8(r1)
/* 80349B08  38 63 C9 00 */	addi r3, r3, BB2@l /* 0x8044C900@l */
/* 80349B0C  38 80 00 20 */	li r4, 0x20
/* 80349B10  38 A0 04 20 */	li r5, 0x420
/* 80349B14  4B FF E1 05 */	bl DVDLowRead
/* 80349B18  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80349B1C  38 21 00 08 */	addi r1, r1, 8
/* 80349B20  7C 08 03 A6 */	mtlr r0
/* 80349B24  4E 80 00 20 */	blr 
