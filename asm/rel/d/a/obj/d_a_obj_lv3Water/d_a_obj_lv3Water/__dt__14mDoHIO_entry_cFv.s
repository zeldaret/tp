lbl_80C587F0:
/* 80C587F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C587F4  7C 08 02 A6 */	mflr r0
/* 80C587F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C587FC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C58800  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C58804  41 82 00 1C */	beq lbl_80C58820
/* 80C58808  3C A0 80 C6 */	lis r5, __vt__14mDoHIO_entry_c@ha /* 0x80C5A2F0@ha */
/* 80C5880C  38 05 A2 F0 */	addi r0, r5, __vt__14mDoHIO_entry_c@l /* 0x80C5A2F0@l */
/* 80C58810  90 1F 00 00 */	stw r0, 0(r31)
/* 80C58814  7C 80 07 35 */	extsh. r0, r4
/* 80C58818  40 81 00 08 */	ble lbl_80C58820
/* 80C5881C  4B 67 65 21 */	bl __dl__FPv
lbl_80C58820:
/* 80C58820  7F E3 FB 78 */	mr r3, r31
/* 80C58824  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C58828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5882C  7C 08 03 A6 */	mtlr r0
/* 80C58830  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58834  4E 80 00 20 */	blr 
