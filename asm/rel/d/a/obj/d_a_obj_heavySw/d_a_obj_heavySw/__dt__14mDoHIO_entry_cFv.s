lbl_80C1CB80:
/* 80C1CB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1CB84  7C 08 02 A6 */	mflr r0
/* 80C1CB88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C1CB8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C1CB90  7C 7F 1B 79 */	or. r31, r3, r3
/* 80C1CB94  41 82 00 1C */	beq lbl_80C1CBB0
/* 80C1CB98  3C A0 80 C2 */	lis r5, __vt__14mDoHIO_entry_c@ha
/* 80C1CB9C  38 05 DC 34 */	addi r0, r5, __vt__14mDoHIO_entry_c@l
/* 80C1CBA0  90 1F 00 00 */	stw r0, 0(r31)
/* 80C1CBA4  7C 80 07 35 */	extsh. r0, r4
/* 80C1CBA8  40 81 00 08 */	ble lbl_80C1CBB0
/* 80C1CBAC  4B 6B 21 90 */	b __dl__FPv
lbl_80C1CBB0:
/* 80C1CBB0  7F E3 FB 78 */	mr r3, r31
/* 80C1CBB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C1CBB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C1CBBC  7C 08 03 A6 */	mtlr r0
/* 80C1CBC0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C1CBC4  4E 80 00 20 */	blr 
