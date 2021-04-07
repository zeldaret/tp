lbl_80A08EB8:
/* 80A08EB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A08EBC  7C 08 02 A6 */	mflr r0
/* 80A08EC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A08EC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80A08EC8  93 C1 00 08 */	stw r30, 8(r1)
/* 80A08ECC  7C 7E 1B 78 */	mr r30, r3
/* 80A08ED0  7C 9F 23 78 */	mr r31, r4
/* 80A08ED4  38 00 00 03 */	li r0, 3
/* 80A08ED8  B0 03 0D E6 */	sth r0, 0xde6(r3)
/* 80A08EDC  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A08EE0  4B 95 91 39 */	bl __ptmf_test
/* 80A08EE4  2C 03 00 00 */	cmpwi r3, 0
/* 80A08EE8  41 82 00 18 */	beq lbl_80A08F00
/* 80A08EEC  7F C3 F3 78 */	mr r3, r30
/* 80A08EF0  38 80 00 00 */	li r4, 0
/* 80A08EF4  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A08EF8  4B 95 91 8D */	bl __ptmf_scall
/* 80A08EFC  60 00 00 00 */	nop 
lbl_80A08F00:
/* 80A08F00  38 00 00 00 */	li r0, 0
/* 80A08F04  B0 1E 0D E6 */	sth r0, 0xde6(r30)
/* 80A08F08  80 7F 00 00 */	lwz r3, 0(r31)
/* 80A08F0C  80 1F 00 04 */	lwz r0, 4(r31)
/* 80A08F10  90 7E 0D C0 */	stw r3, 0xdc0(r30)
/* 80A08F14  90 1E 0D C4 */	stw r0, 0xdc4(r30)
/* 80A08F18  80 1F 00 08 */	lwz r0, 8(r31)
/* 80A08F1C  90 1E 0D C8 */	stw r0, 0xdc8(r30)
/* 80A08F20  38 7E 0D C0 */	addi r3, r30, 0xdc0
/* 80A08F24  4B 95 90 F5 */	bl __ptmf_test
/* 80A08F28  2C 03 00 00 */	cmpwi r3, 0
/* 80A08F2C  41 82 00 18 */	beq lbl_80A08F44
/* 80A08F30  7F C3 F3 78 */	mr r3, r30
/* 80A08F34  38 80 00 00 */	li r4, 0
/* 80A08F38  39 9E 0D C0 */	addi r12, r30, 0xdc0
/* 80A08F3C  4B 95 91 49 */	bl __ptmf_scall
/* 80A08F40  60 00 00 00 */	nop 
lbl_80A08F44:
/* 80A08F44  38 60 00 01 */	li r3, 1
/* 80A08F48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80A08F4C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80A08F50  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A08F54  7C 08 03 A6 */	mtlr r0
/* 80A08F58  38 21 00 10 */	addi r1, r1, 0x10
/* 80A08F5C  4E 80 00 20 */	blr 
