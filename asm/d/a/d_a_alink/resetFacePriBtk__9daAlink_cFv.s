lbl_800AFC2C:
/* 800AFC2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800AFC30  7C 08 02 A6 */	mflr r0
/* 800AFC34  90 01 00 14 */	stw r0, 0x14(r1)
/* 800AFC38  A0 03 21 2E */	lhz r0, 0x212e(r3)
/* 800AFC3C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFC40  41 82 00 38 */	beq lbl_800AFC78
/* 800AFC44  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000FFFF@ha */
/* 800AFC48  38 04 FF FF */	addi r0, r4, 0xFFFF /* 0x0000FFFF@l */
/* 800AFC4C  B0 03 21 2E */	sth r0, 0x212e(r3)
/* 800AFC50  A0 03 21 2C */	lhz r0, 0x212c(r3)
/* 800AFC54  7C 04 03 78 */	mr r4, r0
/* 800AFC58  28 00 FF FF */	cmplwi r0, 0xffff
/* 800AFC5C  40 82 00 08 */	bne lbl_800AFC64
/* 800AFC60  38 80 03 79 */	li r4, 0x379
lbl_800AFC64:
/* 800AFC64  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 800AFC68  38 C5 FF FF */	addi r6, r5, 0xFFFF /* 0x0000FFFF@l */
/* 800AFC6C  B0 C3 21 2C */	sth r6, 0x212c(r3)
/* 800AFC70  38 A0 00 00 */	li r5, 0
/* 800AFC74  4B FF FB 5D */	bl setFaceBtk__9daAlink_cFUsiUs
lbl_800AFC78:
/* 800AFC78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800AFC7C  7C 08 03 A6 */	mtlr r0
/* 800AFC80  38 21 00 10 */	addi r1, r1, 0x10
/* 800AFC84  4E 80 00 20 */	blr 
