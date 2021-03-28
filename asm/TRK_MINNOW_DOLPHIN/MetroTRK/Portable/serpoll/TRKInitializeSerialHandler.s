lbl_8036D860:
/* 8036D860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8036D864  7C 08 02 A6 */	mflr r0
/* 8036D868  3C 60 80 45 */	lis r3, gTRKFramingState@ha
/* 8036D86C  3C 80 80 3A */	lis r4, lit_121@ha
/* 8036D870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8036D874  38 C3 F2 70 */	addi r6, r3, gTRKFramingState@l
/* 8036D878  38 00 00 00 */	li r0, 0
/* 8036D87C  38 60 FF FF */	li r3, -1
/* 8036D880  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8036D884  3B E4 27 00 */	addi r31, r4, lit_121@l
/* 8036D888  38 9F 00 00 */	addi r4, r31, 0
/* 8036D88C  38 A0 00 40 */	li r5, 0x40
/* 8036D890  90 66 00 00 */	stw r3, 0(r6)
/* 8036D894  38 60 00 01 */	li r3, 1
/* 8036D898  90 06 00 08 */	stw r0, 8(r6)
/* 8036D89C  90 06 00 0C */	stw r0, 0xc(r6)
/* 8036D8A0  4C C6 31 82 */	crclr 6
/* 8036D8A4  48 00 53 B1 */	bl MWTRACE
/* 8036D8A8  38 9F 00 24 */	addi r4, r31, 0x24
/* 8036D8AC  38 60 00 01 */	li r3, 1
/* 8036D8B0  38 A0 00 40 */	li r5, 0x40
/* 8036D8B4  4C C6 31 82 */	crclr 6
/* 8036D8B8  48 00 53 9D */	bl MWTRACE
/* 8036D8BC  38 9F 00 48 */	addi r4, r31, 0x48
/* 8036D8C0  38 60 00 01 */	li r3, 1
/* 8036D8C4  38 A0 00 40 */	li r5, 0x40
/* 8036D8C8  4C C6 31 82 */	crclr 6
/* 8036D8CC  48 00 53 89 */	bl MWTRACE
/* 8036D8D0  38 9F 00 6C */	addi r4, r31, 0x6c
/* 8036D8D4  38 60 00 01 */	li r3, 1
/* 8036D8D8  38 A0 00 40 */	li r5, 0x40
/* 8036D8DC  4C C6 31 82 */	crclr 6
/* 8036D8E0  48 00 53 75 */	bl MWTRACE
/* 8036D8E4  38 9F 00 8C */	addi r4, r31, 0x8c
/* 8036D8E8  38 60 00 01 */	li r3, 1
/* 8036D8EC  38 A0 00 40 */	li r5, 0x40
/* 8036D8F0  4C C6 31 82 */	crclr 6
/* 8036D8F4  48 00 53 61 */	bl MWTRACE
/* 8036D8F8  38 9F 00 AC */	addi r4, r31, 0xac
/* 8036D8FC  38 60 00 01 */	li r3, 1
/* 8036D900  38 A0 00 40 */	li r5, 0x40
/* 8036D904  4C C6 31 82 */	crclr 6
/* 8036D908  48 00 53 4D */	bl MWTRACE
/* 8036D90C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8036D910  38 60 00 00 */	li r3, 0
/* 8036D914  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8036D918  7C 08 03 A6 */	mtlr r0
/* 8036D91C  38 21 00 10 */	addi r1, r1, 0x10
/* 8036D920  4E 80 00 20 */	blr 
