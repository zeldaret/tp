lbl_80AF0F7C:
/* 80AF0F7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF0F80  7C 08 02 A6 */	mflr r0
/* 80AF0F84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF0F88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80AF0F8C  93 C1 00 08 */	stw r30, 8(r1)
/* 80AF0F90  7C 7E 1B 78 */	mr r30, r3
/* 80AF0F94  7C 9F 23 78 */	mr r31, r4
/* 80AF0F98  38 00 00 03 */	li r0, 3
/* 80AF0F9C  B0 03 0E 16 */	sth r0, 0xe16(r3)
/* 80AF0FA0  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AF0FA4  4B 87 10 75 */	bl __ptmf_test
/* 80AF0FA8  2C 03 00 00 */	cmpwi r3, 0
/* 80AF0FAC  41 82 00 18 */	beq lbl_80AF0FC4
/* 80AF0FB0  7F C3 F3 78 */	mr r3, r30
/* 80AF0FB4  38 80 00 00 */	li r4, 0
/* 80AF0FB8  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AF0FBC  4B 87 10 C9 */	bl __ptmf_scall
/* 80AF0FC0  60 00 00 00 */	nop 
lbl_80AF0FC4:
/* 80AF0FC4  38 00 00 00 */	li r0, 0
/* 80AF0FC8  B0 1E 0E 16 */	sth r0, 0xe16(r30)
/* 80AF0FCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 80AF0FD0  80 1F 00 04 */	lwz r0, 4(r31)
/* 80AF0FD4  90 7E 0D DC */	stw r3, 0xddc(r30)
/* 80AF0FD8  90 1E 0D E0 */	stw r0, 0xde0(r30)
/* 80AF0FDC  80 1F 00 08 */	lwz r0, 8(r31)
/* 80AF0FE0  90 1E 0D E4 */	stw r0, 0xde4(r30)
/* 80AF0FE4  38 7E 0D DC */	addi r3, r30, 0xddc
/* 80AF0FE8  4B 87 10 31 */	bl __ptmf_test
/* 80AF0FEC  2C 03 00 00 */	cmpwi r3, 0
/* 80AF0FF0  41 82 00 18 */	beq lbl_80AF1008
/* 80AF0FF4  7F C3 F3 78 */	mr r3, r30
/* 80AF0FF8  38 80 00 00 */	li r4, 0
/* 80AF0FFC  39 9E 0D DC */	addi r12, r30, 0xddc
/* 80AF1000  4B 87 10 85 */	bl __ptmf_scall
/* 80AF1004  60 00 00 00 */	nop 
lbl_80AF1008:
/* 80AF1008  38 60 00 01 */	li r3, 1
/* 80AF100C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80AF1010  83 C1 00 08 */	lwz r30, 8(r1)
/* 80AF1014  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF1018  7C 08 03 A6 */	mtlr r0
/* 80AF101C  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF1020  4E 80 00 20 */	blr 
