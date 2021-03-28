lbl_800AFBD0:
/* 800AFBD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AFBD4  7C 08 02 A6 */	mflr r0
/* 800AFBD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFBDC  A0 03 21 1A */	lhz r0, 0x211a(r3)
/* 800AFBE0  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFBE4  41 82 00 38 */	beq lbl_800AFC1C
/* 800AFBE8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 800AFBEC  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 800AFBF0  B0 03 21 1A */	sth r0, 0x211a(r3)
/* 800AFBF4  A0 03 21 18 */	lhz r0, 0x2118(r3)
/* 800AFBF8  7C 04 03 78 */	mr r4, r0
/* 800AFBFC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFC00  40 82 00 08 */	bne lbl_800AFC08
/* 800AFC04  38 80 03 DF */	li r4, 0x3df
lbl_800AFC08:
/* 800AFC08  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 800AFC0C  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x0000FFFF@l */
/* 800AFC10  B0 C3 21 18 */	sth r6, 0x2118(r3)
/* 800AFC14  38 A0 00 00 */	li r5, 0
/* 800AFC18  4B FF FA 05 */	bl setFaceBtp__9daAlink_cFUsiUs
lbl_800AFC1C:
/* 800AFC1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFC20  7C 08 03 A6 */	mtlr r0
/* 800AFC24  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFC28  4E 80 00 20 */	blr 
