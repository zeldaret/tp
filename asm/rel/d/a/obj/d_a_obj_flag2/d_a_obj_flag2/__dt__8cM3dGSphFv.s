lbl_80BEDB74:
/* 80BEDB74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BEDB78  7C 08 02 A6 */	mflr r0
/* 80BEDB7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BEDB80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80BEDB84  7C 7F 1B 79 */	or. r31, r3, r3
/* 80BEDB88  41 82 00 1C */	beq lbl_80BEDBA4
/* 80BEDB8C  3C A0 80 BF */	lis r5, __vt__8cM3dGSph@ha /* 0x80BEE9C4@ha */
/* 80BEDB90  38 05 E9 C4 */	addi r0, r5, __vt__8cM3dGSph@l /* 0x80BEE9C4@l */
/* 80BEDB94  90 1F 00 10 */	stw r0, 0x10(r31)
/* 80BEDB98  7C 80 07 35 */	extsh. r0, r4
/* 80BEDB9C  40 81 00 08 */	ble lbl_80BEDBA4
/* 80BEDBA0  4B 6E 11 9D */	bl __dl__FPv
lbl_80BEDBA4:
/* 80BEDBA4  7F E3 FB 78 */	mr r3, r31
/* 80BEDBA8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80BEDBAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BEDBB0  7C 08 03 A6 */	mtlr r0
/* 80BEDBB4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BEDBB8  4E 80 00 20 */	blr 
