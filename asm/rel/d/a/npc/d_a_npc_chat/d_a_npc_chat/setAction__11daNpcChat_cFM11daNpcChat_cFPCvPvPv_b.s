lbl_80984F34:
/* 80984F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80984F38  7C 08 02 A6 */	mflr r0
/* 80984F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80984F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80984F44  93 C1 00 08 */	stw r30, 8(r1)
/* 80984F48  7C 7E 1B 78 */	mr r30, r3
/* 80984F4C  7C 9F 23 78 */	mr r31, r4
/* 80984F50  38 00 00 03 */	li r0, 3
/* 80984F54  B0 03 0E 1E */	sth r0, 0xe1e(r3)
/* 80984F58  38 7E 0D D8 */	addi r3, r30, 0xdd8
/* 80984F5C  4B 9D D0 BD */	bl __ptmf_test
/* 80984F60  2C 03 00 00 */	cmpwi r3, 0
/* 80984F64  41 82 00 18 */	beq lbl_80984F7C
/* 80984F68  7F C3 F3 78 */	mr r3, r30
/* 80984F6C  38 80 00 00 */	li r4, 0
/* 80984F70  39 9E 0D D8 */	addi r12, r30, 0xdd8
/* 80984F74  4B 9D D1 11 */	bl __ptmf_scall
/* 80984F78  60 00 00 00 */	nop 
lbl_80984F7C:
/* 80984F7C  38 00 00 00 */	li r0, 0
/* 80984F80  B0 1E 0E 1E */	sth r0, 0xe1e(r30)
/* 80984F84  80 7F 00 00 */	lwz r3, 0(r31)
/* 80984F88  80 1F 00 04 */	lwz r0, 4(r31)
/* 80984F8C  90 7E 0D D8 */	stw r3, 0xdd8(r30)
/* 80984F90  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 80984F94  80 1F 00 08 */	lwz r0, 8(r31)
/* 80984F98  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80984F9C  38 7E 0D D8 */	addi r3, r30, 0xdd8
/* 80984FA0  4B 9D D0 79 */	bl __ptmf_test
/* 80984FA4  2C 03 00 00 */	cmpwi r3, 0
/* 80984FA8  41 82 00 18 */	beq lbl_80984FC0
/* 80984FAC  7F C3 F3 78 */	mr r3, r30
/* 80984FB0  38 80 00 00 */	li r4, 0
/* 80984FB4  39 9E 0D D8 */	addi r12, r30, 0xdd8
/* 80984FB8  4B 9D D0 CD */	bl __ptmf_scall
/* 80984FBC  60 00 00 00 */	nop 
lbl_80984FC0:
/* 80984FC0  38 60 00 01 */	li r3, 1
/* 80984FC4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80984FC8  83 C1 00 08 */	lwz r30, 8(r1)
/* 80984FCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80984FD0  7C 08 03 A6 */	mtlr r0
/* 80984FD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80984FD8  4E 80 00 20 */	blr 
