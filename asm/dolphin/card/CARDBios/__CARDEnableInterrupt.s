lbl_80352D84:
/* 80352D84  7C 08 02 A6 */	mflr r0
/* 80352D88  38 A0 00 04 */	li r5, 4
/* 80352D8C  90 01 00 04 */	stw r0, 4(r1)
/* 80352D90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80352D94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80352D98  3B E4 00 00 */	addi r31, r4, 0
/* 80352D9C  38 80 00 00 */	li r4, 0
/* 80352DA0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80352DA4  3B C3 00 00 */	addi r30, r3, 0
/* 80352DA8  4B FF 0A C1 */	bl EXISelect
/* 80352DAC  2C 03 00 00 */	cmpwi r3, 0
/* 80352DB0  40 82 00 0C */	bne lbl_80352DBC
/* 80352DB4  38 60 FF FD */	li r3, -3
/* 80352DB8  48 00 00 74 */	b lbl_80352E2C
lbl_80352DBC:
/* 80352DBC  2C 1F 00 00 */	cmpwi r31, 0
/* 80352DC0  41 82 00 0C */	beq lbl_80352DCC
/* 80352DC4  3C 00 81 01 */	lis r0, 0x8101
/* 80352DC8  48 00 00 08 */	b lbl_80352DD0
lbl_80352DCC:
/* 80352DCC  3C 00 81 00 */	lis r0, 0x8100
lbl_80352DD0:
/* 80352DD0  90 01 00 10 */	stw r0, 0x10(r1)
/* 80352DD4  38 7E 00 00 */	addi r3, r30, 0
/* 80352DD8  38 81 00 10 */	addi r4, r1, 0x10
/* 80352DDC  38 A0 00 02 */	li r5, 2
/* 80352DE0  38 C0 00 01 */	li r6, 1
/* 80352DE4  38 E0 00 00 */	li r7, 0
/* 80352DE8  4B FE FF 19 */	bl EXIImm
/* 80352DEC  7C 60 00 34 */	cntlzw r0, r3
/* 80352DF0  38 7E 00 00 */	addi r3, r30, 0
/* 80352DF4  54 1F D9 7E */	srwi r31, r0, 5
/* 80352DF8  4B FF 02 F1 */	bl EXISync
/* 80352DFC  7C 60 00 34 */	cntlzw r0, r3
/* 80352E00  54 00 D9 7E */	srwi r0, r0, 5
/* 80352E04  38 7E 00 00 */	addi r3, r30, 0
/* 80352E08  7F FF 03 78 */	or r31, r31, r0
/* 80352E0C  4B FF 0B 89 */	bl EXIDeselect
/* 80352E10  7C 60 00 34 */	cntlzw r0, r3
/* 80352E14  54 00 D9 7E */	srwi r0, r0, 5
/* 80352E18  7F FF 03 79 */	or. r31, r31, r0
/* 80352E1C  41 82 00 0C */	beq lbl_80352E28
/* 80352E20  38 60 FF FD */	li r3, -3
/* 80352E24  48 00 00 08 */	b lbl_80352E2C
lbl_80352E28:
/* 80352E28  38 60 00 00 */	li r3, 0
lbl_80352E2C:
/* 80352E2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80352E30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80352E34  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80352E38  38 21 00 20 */	addi r1, r1, 0x20
/* 80352E3C  7C 08 03 A6 */	mtlr r0
/* 80352E40  4E 80 00 20 */	blr 
