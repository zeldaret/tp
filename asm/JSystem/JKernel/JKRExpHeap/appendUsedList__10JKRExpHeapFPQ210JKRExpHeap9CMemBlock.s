lbl_802CFDCC:
/* 802CFDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802CFDD0  7C 08 02 A6 */	mflr r0
/* 802CFDD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 802CFDD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802CFDDC  93 C1 00 08 */	stw r30, 8(r1)
/* 802CFDE0  7C 7E 1B 78 */	mr r30, r3
/* 802CFDE4  7C 9F 23 79 */	or. r31, r4, r4
/* 802CFDE8  40 82 00 24 */	bne lbl_802CFE0C
/* 802CFDEC  3C 60 80 3A */	lis r3, JKRExpHeap__stringBase0@ha /* 0x8039CAF0@ha */
/* 802CFDF0  38 C3 CA F0 */	addi r6, r3, JKRExpHeap__stringBase0@l /* 0x8039CAF0@l */
/* 802CFDF4  38 66 00 25 */	addi r3, r6, 0x25
/* 802CFDF8  38 80 06 20 */	li r4, 0x620
/* 802CFDFC  38 A6 00 34 */	addi r5, r6, 0x34
/* 802CFE00  38 C6 00 37 */	addi r6, r6, 0x37
/* 802CFE04  4C C6 31 82 */	crclr 6
/* 802CFE08  48 01 23 F5 */	bl panic_f__12JUTExceptionFPCciPCce
lbl_802CFE0C:
/* 802CFE0C  80 7E 00 84 */	lwz r3, 0x84(r30)
/* 802CFE10  38 00 48 4D */	li r0, 0x484d
/* 802CFE14  B0 1F 00 00 */	sth r0, 0(r31)
/* 802CFE18  28 03 00 00 */	cmplwi r3, 0
/* 802CFE1C  41 82 00 10 */	beq lbl_802CFE2C
/* 802CFE20  93 E3 00 0C */	stw r31, 0xc(r3)
/* 802CFE24  90 7F 00 08 */	stw r3, 8(r31)
/* 802CFE28  48 00 00 0C */	b lbl_802CFE34
lbl_802CFE2C:
/* 802CFE2C  38 00 00 00 */	li r0, 0
/* 802CFE30  90 1F 00 08 */	stw r0, 8(r31)
lbl_802CFE34:
/* 802CFE34  93 FE 00 84 */	stw r31, 0x84(r30)
/* 802CFE38  80 1E 00 80 */	lwz r0, 0x80(r30)
/* 802CFE3C  28 00 00 00 */	cmplwi r0, 0
/* 802CFE40  40 82 00 08 */	bne lbl_802CFE48
/* 802CFE44  93 FE 00 80 */	stw r31, 0x80(r30)
lbl_802CFE48:
/* 802CFE48  38 00 00 00 */	li r0, 0
/* 802CFE4C  90 1F 00 0C */	stw r0, 0xc(r31)
/* 802CFE50  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802CFE54  83 C1 00 08 */	lwz r30, 8(r1)
/* 802CFE58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802CFE5C  7C 08 03 A6 */	mtlr r0
/* 802CFE60  38 21 00 10 */	addi r1, r1, 0x10
/* 802CFE64  4E 80 00 20 */	blr 
