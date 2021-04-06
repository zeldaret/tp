lbl_805B9FFC:
/* 805B9FFC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BA000  7C 08 02 A6 */	mflr r0
/* 805BA004  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BA008  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BA00C  7C 7F 1B 79 */	or. r31, r3, r3
/* 805BA010  41 82 00 1C */	beq lbl_805BA02C
/* 805BA014  3C A0 80 5C */	lis r5, __vt__12daB_BQ_HIO_c@ha /* 0x805BAD38@ha */
/* 805BA018  38 05 AD 38 */	addi r0, r5, __vt__12daB_BQ_HIO_c@l /* 0x805BAD38@l */
/* 805BA01C  90 1F 00 00 */	stw r0, 0(r31)
/* 805BA020  7C 80 07 35 */	extsh. r0, r4
/* 805BA024  40 81 00 08 */	ble lbl_805BA02C
/* 805BA028  4B D1 4D 15 */	bl __dl__FPv
lbl_805BA02C:
/* 805BA02C  7F E3 FB 78 */	mr r3, r31
/* 805BA030  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BA034  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BA038  7C 08 03 A6 */	mtlr r0
/* 805BA03C  38 21 00 10 */	addi r1, r1, 0x10
/* 805BA040  4E 80 00 20 */	blr 
