lbl_809E1F3C:
/* 809E1F3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 809E1F40  7C 08 02 A6 */	mflr r0
/* 809E1F44  90 01 00 14 */	stw r0, 0x14(r1)
/* 809E1F48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 809E1F4C  93 C1 00 08 */	stw r30, 8(r1)
/* 809E1F50  7C 7E 1B 78 */	mr r30, r3
/* 809E1F54  7C 9F 23 78 */	mr r31, r4
/* 809E1F58  38 00 00 03 */	li r0, 3
/* 809E1F5C  B0 03 0E 0E */	sth r0, 0xe0e(r3)
/* 809E1F60  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809E1F64  4B 98 00 B4 */	b __ptmf_test
/* 809E1F68  2C 03 00 00 */	cmpwi r3, 0
/* 809E1F6C  41 82 00 18 */	beq lbl_809E1F84
/* 809E1F70  7F C3 F3 78 */	mr r3, r30
/* 809E1F74  38 80 00 00 */	li r4, 0
/* 809E1F78  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809E1F7C  4B 98 01 08 */	b __ptmf_scall
/* 809E1F80  60 00 00 00 */	nop 
lbl_809E1F84:
/* 809E1F84  38 00 00 00 */	li r0, 0
/* 809E1F88  B0 1E 0E 0E */	sth r0, 0xe0e(r30)
/* 809E1F8C  80 7F 00 00 */	lwz r3, 0(r31)
/* 809E1F90  80 1F 00 04 */	lwz r0, 4(r31)
/* 809E1F94  90 7E 0D D4 */	stw r3, 0xdd4(r30)
/* 809E1F98  90 1E 0D D8 */	stw r0, 0xdd8(r30)
/* 809E1F9C  80 1F 00 08 */	lwz r0, 8(r31)
/* 809E1FA0  90 1E 0D DC */	stw r0, 0xddc(r30)
/* 809E1FA4  38 7E 0D D4 */	addi r3, r30, 0xdd4
/* 809E1FA8  4B 98 00 70 */	b __ptmf_test
/* 809E1FAC  2C 03 00 00 */	cmpwi r3, 0
/* 809E1FB0  41 82 00 18 */	beq lbl_809E1FC8
/* 809E1FB4  7F C3 F3 78 */	mr r3, r30
/* 809E1FB8  38 80 00 00 */	li r4, 0
/* 809E1FBC  39 9E 0D D4 */	addi r12, r30, 0xdd4
/* 809E1FC0  4B 98 00 C4 */	b __ptmf_scall
/* 809E1FC4  60 00 00 00 */	nop 
lbl_809E1FC8:
/* 809E1FC8  38 60 00 01 */	li r3, 1
/* 809E1FCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 809E1FD0  83 C1 00 08 */	lwz r30, 8(r1)
/* 809E1FD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 809E1FD8  7C 08 03 A6 */	mtlr r0
/* 809E1FDC  38 21 00 10 */	addi r1, r1, 0x10
/* 809E1FE0  4E 80 00 20 */	blr 
